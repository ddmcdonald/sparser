;; Written 15:6:21 8/09/2019

(in-package :sparser)


(define-category ABSORB24300
  :mixins (ABSORB-39.8)
  :realization (:VERB "absorb"))

(define-category ABSORB23500
  :mixins (ABSORB-39.8)
  :realization (:VERB "absorb"))

(define-category INGEST23400
  :mixins (ABSORB-39.8)
  :realization (:VERB "ingest"))

(define-category TAKE_IN23400
  :mixins (ABSORB-39.8)
  :realization (:VERB "take_in"))

(define-category ACCEPT23103
  :mixins (ACCEPT-77.1)
  :realization (:VERB "accept"))

(define-category ACCEPT23101
  :mixins (ACCEPT-77.1)
  :realization (:VERB "accept"))

(define-category BUY23109
  :mixins (ACCEPT-77.1)
  :realization (:VERB "buy"))

(define-category UNDERSTAND23104
  :mixins (ACCEPT-77.1)
  :realization (:VERB "understand"))

(define-category ENCOURAGE23700
  :mixins (ACCEPT-77.1)
  :realization (:VERB "encourage"))

(define-category ENCOURAGE24100
  :mixins (ACCEPT-77.1)
  :realization (:VERB "encourage"))

(define-category ACCOMPANY24201
  :mixins (ACCOMPANY-51.7)
  :realization (:VERB "accompany"))

(define-category ACCOMPANY23800
  :mixins (ACCOMPANY-51.7)
  :realization (:VERB "accompany"))

(define-category CONDUCT23801
  :mixins (ACCOMPANY-51.7)
  :realization (:VERB "conduct"))

(define-category ESCORT23801
  :mixins (ACCOMPANY-51.7)
  :realization (:VERB "escort"))

(define-category ESCORT23800
  :mixins (ACCOMPANY-51.7)
  :realization (:VERB "escort"))

(define-category GUIDE23500
  :mixins (ACCOMPANY-51.7)
  :realization (:VERB "guide"))

(define-category GUIDE23800
  :mixins (ACCOMPANY-51.7)
  :realization (:VERB "guide"))

(define-category GUIDE23801
  :mixins (ACCOMPANY-51.7)
  :realization (:VERB "guide"))

(define-category LEAD23801
  :mixins (ACCOMPANY-51.7)
  :realization (:VERB "lead"))

(define-category MISDIRECT23200
  :mixins (ACCOMPANY-51.7)
  :realization (:VERB "misdirect"))

(define-category MISDIRECT23800
  :mixins (ACCOMPANY-51.7)
  :realization (:VERB "misdirect"))

(define-category SHEPHERD24101
  :mixins (ACCOMPANY-51.7)
  :realization (:VERB "shepherd"))

(define-category STEER24100
  :mixins (ACCOMPANY-51.7)
  :realization (:VERB "steer"))

(define-category STEER23800
  :mixins (ACCOMPANY-51.7)
  :realization (:VERB "steer"))

(define-category ACCEDE23201
  :mixins (ACQUIESCE-95.1)
  :realization (:VERB "accede"))

(define-category ACCEDE23200
  :mixins (ACQUIESCE-95.1)
  :realization (:VERB "accede"))

(define-category BOW23201
  :mixins (ACQUIESCE-95.1)
  :realization (:VERB "bow"))

(define-category CAPITULATE23300
  :mixins (ACQUIESCE-95.1)
  :realization (:VERB "capitulate"))

(define-category DEFER23200
  :mixins (ACQUIESCE-95.1)
  :realization (:VERB "defer"))

(define-category FALL24005
  :mixins (ACQUIESCE-95.1)
  :realization (:VERB "fall"))

(define-category GIVE_WAY23001
  :mixins (ACQUIESCE-95.1)
  :realization (:VERB "give_way"))

(define-category GIVE_WAY23801
  :mixins (ACQUIESCE-95.1)
  :realization (:VERB "give_way"))

(define-category GIVE_IN23201
  :mixins (ACQUIESCE-95.1)
  :realization (:VERB "give_in"))

(define-category GIVE_IN23202
  :mixins (ACQUIESCE-95.1)
  :realization (:VERB "give_in"))

(define-category SUCCUMB23200
  :mixins (ACQUIESCE-95.1)
  :realization (:VERB "succumb"))

(define-category YIELD23200
  :mixins (ACQUIESCE-95.1)
  :realization (:VERB "yield"))

(define-category YIELD23300
  :mixins (ACQUIESCE-95.1)
  :realization (:VERB "yield"))

(define-category YIELD24001
  :mixins (ACQUIESCE-95.1)
  :realization (:VERB "yield"))

(define-category YIELD23000
  :mixins (ACQUIESCE-95.1)
  :realization (:VERB "yield"))

(define-category ACQUIESCE23200
  :mixins (ACQUIESCE-95.1-1)
  :realization (:VERB "acquiesce"))

(define-category CONSENT23200
  :mixins (ACQUIESCE-95.1-1)
  :realization (:VERB "consent"))

(define-category SUBMIT23300
  :mixins (ACQUIESCE-95.1-1)
  :realization (:VERB "submit"))

(define-category ACTION23600
  :mixins (ACT-114)
  :realization (:VERB "action"))

(define-category CARRY_OUT23600
  :mixins (ACT-114)
  :realization (:VERB "carry_out"))

(define-category CARRY_THROUGH23600
  :mixins (ACT-114)
  :realization (:VERB "carry_through"))

(define-category CONDUCT24100
  :mixins (ACT-114)
  :realization (:VERB "conduct"))

(define-category CONDUCT23600
  :mixins (ACT-114)
  :realization (:VERB "conduct"))

(define-category EXECUTE23600
  :mixins (ACT-114)
  :realization (:VERB "execute"))

(define-category FULFILL23600
  :mixins (ACT-114)
  :realization (:VERB "fulfill"))

(define-category MAKE23608
  :mixins (ACT-114)
  :realization (:VERB "make"))

(define-category MAKE24100
  :mixins (ACT-114)
  :realization (:VERB "make"))

(define-category CAUSE23600
  :mixins (ACT-114)
  :realization (:VERB "cause"))

(define-category DO23602
  :mixins (ACT-114-1)
  :realization (:VERB "do"))

(define-category DO24104
  :mixins (ACT-114-1)
  :realization (:VERB "do"))

(define-category DO23601
  :mixins (ACT-114-1)
  :realization (:VERB "do"))

(define-category DO24101
  :mixins (ACT-114-1)
  :realization (:VERB "do"))

(define-category PERFORM23600
  :mixins (ACT-114-1)
  :realization (:VERB "perform"))

(define-category ACT24100
  :mixins (ACT-114-1-1)
  :realization (:VERB "act"))

(define-category MOVE24100
  :mixins (ACT-114-1-1)
  :realization (:VERB "move"))

(define-category ADDICT23400
  :mixins (ADDICT-96)
  :realization (:VERB "addict"))

(define-category BIAS23300
  :mixins (ADDICT-96)
  :realization (:VERB "bias"))

(define-category DISPOSE23100
  :mixins (ADDICT-96)
  :realization (:VERB "dispose"))

(define-category INCLINE23103
  :mixins (ADDICT-96)
  :realization (:VERB "incline"))

(define-category INCLINE23700
  :mixins (ADDICT-96)
  :realization (:VERB "incline"))

(define-category PREDISPOSE23100
  :mixins (ADDICT-96)
  :realization (:VERB "predispose"))

(define-category ADAPT23002
  :mixins (ADJUST-26.9)
  :realization (:VERB "adapt"))

(define-category ACCOMMODATE23001
  :mixins (ADJUST-26.9)
  :realization (:VERB "accommodate"))

(define-category ACCOMMODATE23000
  :mixins (ADJUST-26.9)
  :realization (:VERB "accommodate"))

(define-category CONFORM23001
  :mixins (ADJUST-26.9)
  :realization (:VERB "conform"))

(define-category ADJUST23001
  :mixins (ADJUST-26.9)
  :realization (:VERB "adjust"))

(define-category GEAR23000
  :mixins (ADJUST-26.9)
  :realization (:VERB "gear"))

(define-category FIT23002
  :mixins (ADJUST-26.9)
  :realization (:VERB "fit"))

(define-category READJUST23000
  :mixins (ADJUST-26.9)
  :realization (:VERB "readjust"))

(define-category READAPT23003
  :mixins (ADJUST-26.9)
  :realization (:VERB "readapt"))

(define-category ASSIMILATE23000
  :mixins (ADJUST-26.9)
  :realization (:VERB "assimilate"))

(define-category ADMIRE23700
  :mixins (ADMIRE-31.2)
  :realization (:VERB "admire"))

(define-category ADORE23700
  :mixins (ADMIRE-31.2)
  :realization (:VERB "adore"))

(define-category APPRECIATE24000
  :mixins (ADMIRE-31.2)
  :realization (:VERB "appreciate"))

(define-category APPRECIATE23700
  :mixins (ADMIRE-31.2)
  :realization (:VERB "appreciate"))

(define-category CHERISH23700
  :mixins (ADMIRE-31.2)
  :realization (:VERB "cherish"))

(define-category DETEST23700
  :mixins (ADMIRE-31.2)
  :realization (:VERB "detest"))

(define-category ESTEEM23101
  :mixins (ADMIRE-31.2)
  :realization (:VERB "esteem"))

(define-category EXALT23200
  :mixins (ADMIRE-31.2)
  :realization (:VERB "exalt"))

(define-category FANCY23700
  :mixins (ADMIRE-31.2)
  :realization (:VERB "fancy"))

(define-category FAVOR24100
  :mixins (ADMIRE-31.2)
  :realization (:VERB "favor"))

(define-category FAVOR24103
  :mixins (ADMIRE-31.2)
  :realization (:VERB "favor"))

(define-category FAVOR24101
  :mixins (ADMIRE-31.2)
  :realization (:VERB "favor"))

(define-category IDOLIZE23700
  :mixins (ADMIRE-31.2)
  :realization (:VERB "idolize"))

(define-category MISS23700
  :mixins (ADMIRE-31.2)
  :realization (:VERB "miss"))

(define-category MISTRUST23100
  :mixins (ADMIRE-31.2)
  :realization (:VERB "mistrust"))

(define-category PRIZE23100
  :mixins (ADMIRE-31.2)
  :realization (:VERB "prize"))

(define-category PRIZE24000
  :mixins (ADMIRE-31.2)
  :realization (:VERB "prize"))

(define-category RESPECT23100
  :mixins (ADMIRE-31.2)
  :realization (:VERB "respect"))

(define-category RELISH23700
  :mixins (ADMIRE-31.2)
  :realization (:VERB "relish"))

(define-category REVERE23700
  :mixins (ADMIRE-31.2)
  :realization (:VERB "revere"))

(define-category REVERE23701
  :mixins (ADMIRE-31.2)
  :realization (:VERB "revere"))

(define-category SAVOR23700
  :mixins (ADMIRE-31.2)
  :realization (:VERB "savor"))

(define-category STAND23100
  :mixins (ADMIRE-31.2)
  :realization (:VERB "stand"))

(define-category SUPPORT23104
  :mixins (ADMIRE-31.2)
  :realization (:VERB "support"))

(define-category SUPPORT24101
  :mixins (ADMIRE-31.2)
  :realization (:VERB "support"))

(define-category SUPPORT24100
  :mixins (ADMIRE-31.2)
  :realization (:VERB "support"))

(define-category TOLERATE23100
  :mixins (ADMIRE-31.2)
  :realization (:VERB "tolerate"))

(define-category TREASURE23700
  :mixins (ADMIRE-31.2)
  :realization (:VERB "treasure"))

(define-category TREASURE24000
  :mixins (ADMIRE-31.2)
  :realization (:VERB "treasure"))

(define-category TRUST23100
  :mixins (ADMIRE-31.2)
  :realization (:VERB "trust"))

(define-category VALUE23101
  :mixins (ADMIRE-31.2)
  :realization (:VERB "value"))

(define-category VALUE24000
  :mixins (ADMIRE-31.2)
  :realization (:VERB "value"))

(define-category VENERATE23700
  :mixins (ADMIRE-31.2)
  :realization (:VERB "venerate"))

(define-category WORSHIP23701
  :mixins (ADMIRE-31.2)
  :realization (:VERB "worship"))

(define-category WORSHIP23700
  :mixins (ADMIRE-31.2)
  :realization (:VERB "worship"))

(define-category ABHOR23700
  :mixins (ADMIRE-31.2)
  :realization (:VERB "abhor"))

(define-category DEPLORE23201
  :mixins (ADMIRE-31.2)
  :realization (:VERB "deplore"))

(define-category DEPLORE23200
  :mixins (ADMIRE-31.2)
  :realization (:VERB "deplore"))

(define-category DISTRUST23100
  :mixins (ADMIRE-31.2)
  :realization (:VERB "distrust"))

(define-category DREAD23700
  :mixins (ADMIRE-31.2)
  :realization (:VERB "dread"))

(define-category ENVY23700
  :mixins (ADMIRE-31.2)
  :realization (:VERB "envy"))

(define-category ENVY23701
  :mixins (ADMIRE-31.2)
  :realization (:VERB "envy"))

(define-category EXECRATE23700
  :mixins (ADMIRE-31.2)
  :realization (:VERB "execrate"))

(define-category LAMENT23200
  :mixins (ADMIRE-31.2)
  :realization (:VERB "lament"))

(define-category LOATHE23700
  :mixins (ADMIRE-31.2)
  :realization (:VERB "loathe"))

(define-category MOURN23700
  :mixins (ADMIRE-31.2)
  :realization (:VERB "mourn"))

(define-category PITY23700
  :mixins (ADMIRE-31.2)
  :realization (:VERB "pity"))

(define-category RESENT23701
  :mixins (ADMIRE-31.2)
  :realization (:VERB "resent"))

(define-category RUE23700
  :mixins (ADMIRE-31.2)
  :realization (:VERB "rue"))

(define-category BELIEVE23104
  :mixins (ADMIRE-31.2)
  :realization (:VERB "believe"))

(define-category SUFFER22903
  :mixins (ADMIRE-31.2)
  :realization (:VERB "suffer"))

(define-category SUFFER22900
  :mixins (ADMIRE-31.2)
  :realization (:VERB "suffer"))

(define-category SUFFER23700
  :mixins (ADMIRE-31.2)
  :realization (:VERB "suffer"))

(define-category DESPISE23700
  :mixins (ADMIRE-31.2-1)
  :realization (:VERB "despise"))

(define-category DISDAIN23700
  :mixins (ADMIRE-31.2-1)
  :realization (:VERB "disdain"))

(define-category DISLIKE23700
  :mixins (ADMIRE-31.2-1)
  :realization (:VERB "dislike"))

(define-category REGRET23202
  :mixins (ADMIRE-31.2-1)
  :realization (:VERB "regret"))

(define-category REGRET23200
  :mixins (ADMIRE-31.2-1)
  :realization (:VERB "regret"))

(define-category REGRET23701
  :mixins (ADMIRE-31.2-1)
  :realization (:VERB "regret"))

(define-category REGRET23700
  :mixins (ADMIRE-31.2-1)
  :realization (:VERB "regret"))

(define-category LIKE23704
  :mixins (ADMIRE-31.2-1)
  :realization (:VERB "like"))

(define-category LIKE23705
  :mixins (ADMIRE-31.2-1)
  :realization (:VERB "like"))

(define-category LOVE23701
  :mixins (ADMIRE-31.2-1)
  :realization (:VERB "love"))

(define-category LOVE23702
  :mixins (ADMIRE-31.2-1)
  :realization (:VERB "love"))

(define-category LOVE23700
  :mixins (ADMIRE-31.2-1)
  :realization (:VERB "love"))

(define-category ENJOY23400
  :mixins (ADMIRE-31.2-1)
  :realization (:VERB "enjoy"))

(define-category ENJOY23701
  :mixins (ADMIRE-31.2-1)
  :realization (:VERB "enjoy"))

(define-category ENJOY23700
  :mixins (ADMIRE-31.2-1)
  :realization (:VERB "enjoy"))

(define-category FEAR23701
  :mixins (ADMIRE-31.2-1)
  :realization (:VERB "fear"))

(define-category FEAR23713
  :mixins (ADMIRE-31.2-1)
  :realization (:VERB "fear"))

(define-category FEAR23700
  :mixins (ADMIRE-31.2-1)
  :realization (:VERB "fear"))

(define-category HATE23700
  :mixins (ADMIRE-31.2-1)
  :realization (:VERB "hate"))

(define-category ALLOW23200
  :mixins (ADMIT-64.3)
  :realization (:VERB "allow"))

(define-category HAIL23201
  :mixins (ADMIT-64.3)
  :realization (:VERB "hail"))

(define-category ADMIT24100
  :mixins (ADMIT-64.3-1)
  :realization (:VERB "admit"))

(define-category ADMIT24101
  :mixins (ADMIT-64.3-1)
  :realization (:VERB "admit"))

(define-category INCLUDE24103
  :mixins (ADMIT-64.3-1)
  :realization (:VERB "include"))

(define-category PERMIT23200
  :mixins (ADMIT-64.3-1)
  :realization (:VERB "permit"))

(define-category RECEIVE23500
  :mixins (ADMIT-64.3-1)
  :realization (:VERB "receive"))

(define-category WELCOME23500
  :mixins (ADMIT-64.3-1)
  :realization (:VERB "welcome"))

(define-category ABIDE_BY24100
  :mixins (ADOPT-93)
  :realization (:VERB "abide_by"))

(define-category ASSUME23800
  :mixins (ADOPT-93)
  :realization (:VERB "assume"))

(define-category ASSUME23000
  :mixins (ADOPT-93)
  :realization (:VERB "assume"))

(define-category ASSUME24100
  :mixins (ADOPT-93)
  :realization (:VERB "assume"))

(define-category ADOPT24002
  :mixins (ADOPT-93)
  :realization (:VERB "adopt"))

(define-category FOLLOW24000
  :mixins (ADOPT-93)
  :realization (:VERB "follow"))

(define-category FOLLOW24100
  :mixins (ADOPT-93)
  :realization (:VERB "follow"))

(define-category TAKE_OVER24101
  :mixins (ADOPT-93)
  :realization (:VERB "take_over"))

(define-category TAKE_OVER24007
  :mixins (ADOPT-93)
  :realization (:VERB "take_over"))

(define-category TAKE_ON24101
  :mixins (ADOPT-93)
  :realization (:VERB "take_on"))

(define-category TAKE_ON23000
  :mixins (ADOPT-93)
  :realization (:VERB "take_on"))

(define-category TAKE24005
  :mixins (ADOPT-93)
  :realization (:VERB "take"))

(define-category ALERT23200
  :mixins (ADVISE-37.9)
  :realization (:VERB "alert"))

(define-category ENCOURAGE23700
  :mixins (ADVISE-37.9)
  :realization (:VERB "encourage"))

(define-category ADMONISH23200
  :mixins (ADVISE-37.9-1)
  :realization (:VERB "admonish"))

(define-category ADMONISH23201
  :mixins (ADVISE-37.9-1)
  :realization (:VERB "admonish"))

(define-category ADMONISH23202
  :mixins (ADVISE-37.9-1)
  :realization (:VERB "admonish"))

(define-category ADVISE23201
  :mixins (ADVISE-37.9-1)
  :realization (:VERB "advise"))

(define-category ADVISE23200
  :mixins (ADVISE-37.9-1)
  :realization (:VERB "advise"))

(define-category CAUTION23200
  :mixins (ADVISE-37.9-1)
  :realization (:VERB "caution"))

(define-category COUNSEL23200
  :mixins (ADVISE-37.9-1)
  :realization (:VERB "counsel"))

(define-category INSTRUCT23201
  :mixins (ADVISE-37.9-1)
  :realization (:VERB "instruct"))

(define-category WARN23202
  :mixins (ADVISE-37.9-1)
  :realization (:VERB "warn"))

(define-category WARN23203
  :mixins (ADVISE-37.9-1)
  :realization (:VERB "warn"))

(define-category WARN23201
  :mixins (ADVISE-37.9-1)
  :realization (:VERB "warn"))

(define-category WARN23200
  :mixins (ADVISE-37.9-1)
  :realization (:VERB "warn"))

(define-category APPROVE23100
  :mixins (ALLOW-64.1)
  :realization (:VERB "approve"))

(define-category APPROVE23200
  :mixins (ALLOW-64.1)
  :realization (:VERB "approve"))

(define-category OKAY23200
  :mixins (ALLOW-64.1)
  :realization (:VERB "okay"))

(define-category SANCTION24101
  :mixins (ALLOW-64.1)
  :realization (:VERB "sanction"))

(define-category SANCTION23201
  :mixins (ALLOW-64.1)
  :realization (:VERB "sanction"))

(define-category TOLERATE23201
  :mixins (ALLOW-64.1)
  :realization (:VERB "tolerate"))

(define-category ALLOW23200
  :mixins (ALLOW-64.1-1)
  :realization (:VERB "allow"))

(define-category PERMIT23200
  :mixins (ALLOW-64.1-1)
  :realization (:VERB "permit"))

(define-category INTERMARRY24100
  :mixins (AMALGAMATE-22.2)
  :realization (:VERB "intermarry"))

(define-category COUPLE23501
  :mixins (AMALGAMATE-22.2-1)
  :realization (:VERB "couple"))

(define-category COUPLE23502
  :mixins (AMALGAMATE-22.2-1)
  :realization (:VERB "couple"))

(define-category INCORPORATE23500
  :mixins (AMALGAMATE-22.2-1)
  :realization (:VERB "incorporate"))

(define-category INCORPORATE23000
  :mixins (AMALGAMATE-22.2-1)
  :realization (:VERB "incorporate"))

(define-category INTEGRATE23001
  :mixins (AMALGAMATE-22.2-1)
  :realization (:VERB "integrate"))

(define-category INTEGRATE23000
  :mixins (AMALGAMATE-22.2-1)
  :realization (:VERB "integrate"))

(define-category MATCH23508
  :mixins (AMALGAMATE-22.2-1)
  :realization (:VERB "match"))

(define-category AMALGAMATE23500
  :mixins (AMALGAMATE-22.2-1-1)
  :realization (:VERB "amalgamate"))

(define-category COALESCE23500
  :mixins (AMALGAMATE-22.2-1-1)
  :realization (:VERB "coalesce"))

(define-category COALESCE23000
  :mixins (AMALGAMATE-22.2-1-1)
  :realization (:VERB "coalesce"))

(define-category CONSOLIDATE23003
  :mixins (AMALGAMATE-22.2-1-1)
  :realization (:VERB "consolidate"))

(define-category CONSOLIDATE23004
  :mixins (AMALGAMATE-22.2-1-1)
  :realization (:VERB "consolidate"))

(define-category CONSOLIDATE23001
  :mixins (AMALGAMATE-22.2-1-1)
  :realization (:VERB "consolidate"))

(define-category CONSOLIDATE23000
  :mixins (AMALGAMATE-22.2-1-1)
  :realization (:VERB "consolidate"))

(define-category INTERMINGLE23500
  :mixins (AMALGAMATE-22.2-1-1)
  :realization (:VERB "intermingle"))

(define-category CONJOIN23500
  :mixins (AMALGAMATE-22.2-2)
  :realization (:VERB "conjoin"))

(define-category ENTANGLE24200
  :mixins (AMALGAMATE-22.2-2)
  :realization (:VERB "entangle"))

(define-category MUDDLE23100
  :mixins (AMALGAMATE-22.2-2)
  :realization (:VERB "muddle"))

(define-category PAIR23500
  :mixins (AMALGAMATE-22.2-2)
  :realization (:VERB "pair"))

(define-category PAIR23501
  :mixins (AMALGAMATE-22.2-2)
  :realization (:VERB "pair"))

(define-category PAIR24100
  :mixins (AMALGAMATE-22.2-2)
  :realization (:VERB "pair"))

(define-category TEAM23300
  :mixins (AMALGAMATE-22.2-2)
  :realization (:VERB "team"))

(define-category AFFILIATE24112
  :mixins (AMALGAMATE-22.2-2)
  :realization (:VERB "affiliate"))

(define-category AFFILIATE24100
  :mixins (AMALGAMATE-22.2-2)
  :realization (:VERB "affiliate"))

(define-category ASSOCIATE24100
  :mixins (AMALGAMATE-22.2-2)
  :realization (:VERB "associate"))

(define-category ASSOCIATE24102
  :mixins (AMALGAMATE-22.2-2)
  :realization (:VERB "associate"))

(define-category ASSOCIATE23100
  :mixins (AMALGAMATE-22.2-2)
  :realization (:VERB "associate"))

(define-category COMPARE23101
  :mixins (AMALGAMATE-22.2-2)
  :realization (:VERB "compare"))

(define-category COMPARE24200
  :mixins (AMALGAMATE-22.2-2)
  :realization (:VERB "compare"))

(define-category COMPARE23100
  :mixins (AMALGAMATE-22.2-2)
  :realization (:VERB "compare"))

(define-category CONFEDERATE24110
  :mixins (AMALGAMATE-22.2-2)
  :realization (:VERB "confederate"))

(define-category CONFEDERATE24100
  :mixins (AMALGAMATE-22.2-2)
  :realization (:VERB "confederate"))

(define-category CONFUSE23600
  :mixins (AMALGAMATE-22.2-2)
  :realization (:VERB "confuse"))

(define-category CONFUSE23102
  :mixins (AMALGAMATE-22.2-2)
  :realization (:VERB "confuse"))

(define-category INCORPORATE23500
  :mixins (AMALGAMATE-22.2-2)
  :realization (:VERB "incorporate"))

(define-category INCORPORATE23000
  :mixins (AMALGAMATE-22.2-2)
  :realization (:VERB "incorporate"))

(define-category INTEGRATE23001
  :mixins (AMALGAMATE-22.2-2)
  :realization (:VERB "integrate"))

(define-category INTEGRATE23000
  :mixins (AMALGAMATE-22.2-2)
  :realization (:VERB "integrate"))

(define-category TOTAL23200
  :mixins (AMALGAMATE-22.2-2)
  :realization (:VERB "total"))

(define-category TOTAL24200
  :mixins (AMALGAMATE-22.2-2)
  :realization (:VERB "total"))

(define-category ALTERNATE23000
  :mixins (AMALGAMATE-22.2-2-1)
  :realization (:VERB "alternate"))

(define-category ALTERNATE23002
  :mixins (AMALGAMATE-22.2-2-1)
  :realization (:VERB "alternate"))

(define-category ALTERNATE23001
  :mixins (AMALGAMATE-22.2-2-1)
  :realization (:VERB "alternate"))

(define-category CRISSCROSS23800
  :mixins (AMALGAMATE-22.2-2-1)
  :realization (:VERB "crisscross"))

(define-category ENTWINE23500
  :mixins (AMALGAMATE-22.2-2-1)
  :realization (:VERB "entwine"))

(define-category ENTWINE23600
  :mixins (AMALGAMATE-22.2-2-1)
  :realization (:VERB "entwine"))

(define-category INTERCHANGE23000
  :mixins (AMALGAMATE-22.2-2-1)
  :realization (:VERB "interchange"))

(define-category INTERCHANGE23001
  :mixins (AMALGAMATE-22.2-2-1)
  :realization (:VERB "interchange"))

(define-category INTERCHANGE24000
  :mixins (AMALGAMATE-22.2-2-1)
  :realization (:VERB "interchange"))

(define-category INTERCONNECT23501
  :mixins (AMALGAMATE-22.2-2-1)
  :realization (:VERB "interconnect"))

(define-category INTERCONNECT24200
  :mixins (AMALGAMATE-22.2-2-1)
  :realization (:VERB "interconnect"))

(define-category INTERLACE23500
  :mixins (AMALGAMATE-22.2-2-1)
  :realization (:VERB "interlace"))

(define-category INTERLINK23501
  :mixins (AMALGAMATE-22.2-2-1)
  :realization (:VERB "interlink"))

(define-category INTERLINK24200
  :mixins (AMALGAMATE-22.2-2-1)
  :realization (:VERB "interlink"))

(define-category INTERLOCK23500
  :mixins (AMALGAMATE-22.2-2-1)
  :realization (:VERB "interlock"))

(define-category INTERLOCK23000
  :mixins (AMALGAMATE-22.2-2-1)
  :realization (:VERB "interlock"))

(define-category INTERSPERSE23502
  :mixins (AMALGAMATE-22.2-2-1)
  :realization (:VERB "intersperse"))

(define-category INTERTWINE23500
  :mixins (AMALGAMATE-22.2-2-1)
  :realization (:VERB "intertwine"))

(define-category INTERWEAVE23500
  :mixins (AMALGAMATE-22.2-2-1)
  :realization (:VERB "interweave"))

(define-category MATE23502
  :mixins (AMALGAMATE-22.2-2-1)
  :realization (:VERB "mate"))

(define-category MATE23500
  :mixins (AMALGAMATE-22.2-2-1)
  :realization (:VERB "mate"))

(define-category UNITE23002
  :mixins (AMALGAMATE-22.2-2-1)
  :realization (:VERB "unite"))

(define-category UNITE24202
  :mixins (AMALGAMATE-22.2-2-1)
  :realization (:VERB "unite"))

(define-category UNITE24201
  :mixins (AMALGAMATE-22.2-2-1)
  :realization (:VERB "unite"))

(define-category UNITE23000
  :mixins (AMALGAMATE-22.2-2-1)
  :realization (:VERB "unite"))

(define-category COALESCE23000
  :mixins (AMALGAMATE-22.2-2-1)
  :realization (:VERB "coalesce"))

(define-category COINCIDE23000
  :mixins (AMALGAMATE-22.2-2-1)
  :realization (:VERB "coincide"))

(define-category CONFLATE23000
  :mixins (AMALGAMATE-22.2-2-1)
  :realization (:VERB "conflate"))

(define-category CONSOLIDATE23001
  :mixins (AMALGAMATE-22.2-2-1)
  :realization (:VERB "consolidate"))

(define-category CONSOLIDATE23000
  :mixins (AMALGAMATE-22.2-2-1)
  :realization (:VERB "consolidate"))

(define-category CONTRAST24200
  :mixins (AMALGAMATE-22.2-2-1)
  :realization (:VERB "contrast"))

(define-category CORRELATE23100
  :mixins (AMALGAMATE-22.2-2-1)
  :realization (:VERB "correlate"))

(define-category CORRELATE24200
  :mixins (AMALGAMATE-22.2-2-1)
  :realization (:VERB "correlate"))

(define-category HARMONIZE24200
  :mixins (AMALGAMATE-22.2-2-1)
  :realization (:VERB "harmonize"))

(define-category INTERMINGLE23500
  :mixins (AMALGAMATE-22.2-2-1)
  :realization (:VERB "intermingle"))

(define-category INTERRELATE23100
  :mixins (AMALGAMATE-22.2-2-1)
  :realization (:VERB "interrelate"))

(define-category RHYME24200
  :mixins (AMALGAMATE-22.2-2-1)
  :realization (:VERB "rhyme"))

(define-category UNIFY23001
  :mixins (AMALGAMATE-22.2-2-1)
  :realization (:VERB "unify"))

(define-category UNIFY23500
  :mixins (AMALGAMATE-22.2-2-1)
  :realization (:VERB "unify"))

(define-category OPPOSE23300
  :mixins (AMALGAMATE-22.2-3)
  :realization (:VERB "oppose"))

(define-category INTRODUCE23500
  :mixins (AMALGAMATE-22.2-3-1)
  :realization (:VERB "introduce"))

(define-category INTRODUCE23800
  :mixins (AMALGAMATE-22.2-3-1)
  :realization (:VERB "introduce"))

(define-category INTRODUCE23600
  :mixins (AMALGAMATE-22.2-3-1)
  :realization (:VERB "introduce"))

(define-category INTRODUCE23200
  :mixins (AMALGAMATE-22.2-3-1)
  :realization (:VERB "introduce"))

(define-category MARRY24101
  :mixins (AMALGAMATE-22.2-3-1-1)
  :realization (:VERB "marry"))

(define-category MARRY24100
  :mixins (AMALGAMATE-22.2-3-1-1)
  :realization (:VERB "marry"))

(define-category REMARRY24100
  :mixins (AMALGAMATE-22.2-3-1-1)
  :realization (:VERB "remarry"))

(define-category WED24101
  :mixins (AMALGAMATE-22.2-3-1-1)
  :realization (:VERB "wed"))

(define-category WED24100
  :mixins (AMALGAMATE-22.2-3-1-1)
  :realization (:VERB "wed"))

(define-category ENGAGE23200
  :mixins (AMALGAMATE-22.2-3-2)
  :realization (:VERB "engage"))

(define-category ABASH23700
  :mixins (AMUSE-31.1)
  :realization (:VERB "abash"))

(define-category AFFECT23700
  :mixins (AMUSE-31.1)
  :realization (:VERB "affect"))

(define-category AFFLICT23700
  :mixins (AMUSE-31.1)
  :realization (:VERB "afflict"))

(define-category AFFRONT23200
  :mixins (AMUSE-31.1)
  :realization (:VERB "affront"))

(define-category AGGRAVATE23700
  :mixins (AMUSE-31.1)
  :realization (:VERB "aggravate"))

(define-category AGITATE23700
  :mixins (AMUSE-31.1)
  :realization (:VERB "agitate"))

(define-category AGONIZE23700
  :mixins (AMUSE-31.1)
  :realization (:VERB "agonize"))

(define-category AGONIZE23701
  :mixins (AMUSE-31.1)
  :realization (:VERB "agonize"))

(define-category ALARM23700
  :mixins (AMUSE-31.1)
  :realization (:VERB "alarm"))

(define-category ALIENATE23700
  :mixins (AMUSE-31.1)
  :realization (:VERB "alienate"))

(define-category AMAZE23101
  :mixins (AMUSE-31.1)
  :realization (:VERB "amaze"))

(define-category AMAZE23100
  :mixins (AMUSE-31.1)
  :realization (:VERB "amaze"))

(define-category AMUSE23200
  :mixins (AMUSE-31.1)
  :realization (:VERB "amuse"))

(define-category AMUSE24100
  :mixins (AMUSE-31.1)
  :realization (:VERB "amuse"))

(define-category ANGER23701
  :mixins (AMUSE-31.1)
  :realization (:VERB "anger"))

(define-category ANGER23700
  :mixins (AMUSE-31.1)
  :realization (:VERB "anger"))

(define-category ANNOY23700
  :mixins (AMUSE-31.1)
  :realization (:VERB "annoy"))

(define-category ANTAGONIZE24100
  :mixins (AMUSE-31.1)
  :realization (:VERB "antagonize"))

(define-category APPALL23710
  :mixins (AMUSE-31.1)
  :realization (:VERB "appall"))

(define-category APPALL23700
  :mixins (AMUSE-31.1)
  :realization (:VERB "appall"))

(define-category APPEASE23700
  :mixins (AMUSE-31.1)
  :realization (:VERB "appease"))

(define-category AROUSE23701
  :mixins (AMUSE-31.1)
  :realization (:VERB "arouse"))

(define-category AROUSE22900
  :mixins (AMUSE-31.1)
  :realization (:VERB "arouse"))

(define-category ASSUAGE23700
  :mixins (AMUSE-31.1)
  :realization (:VERB "assuage"))

(define-category ASTONISH23100
  :mixins (AMUSE-31.1)
  :realization (:VERB "astonish"))

(define-category ASTOUND23100
  :mixins (AMUSE-31.1)
  :realization (:VERB "astound"))

(define-category AWE23700
  :mixins (AMUSE-31.1)
  :realization (:VERB "awe"))

(define-category BAFFLE23100
  :mixins (AMUSE-31.1)
  :realization (:VERB "baffle"))

(define-category BEGUILE23700
  :mixins (AMUSE-31.1)
  :realization (:VERB "beguile"))

(define-category BEGUILE24100
  :mixins (AMUSE-31.1)
  :realization (:VERB "beguile"))

(define-category BEWILDER23700
  :mixins (AMUSE-31.1)
  :realization (:VERB "bewilder"))

(define-category BEWILDER23100
  :mixins (AMUSE-31.1)
  :realization (:VERB "bewilder"))

(define-category BEWITCH23200
  :mixins (AMUSE-31.1)
  :realization (:VERB "bewitch"))

(define-category BEWITCH23700
  :mixins (AMUSE-31.1)
  :realization (:VERB "bewitch"))

(define-category BOGGLE23100
  :mixins (AMUSE-31.1)
  :realization (:VERB "boggle"))

(define-category BOGGLE23800
  :mixins (AMUSE-31.1)
  :realization (:VERB "boggle"))

(define-category BORE23700
  :mixins (AMUSE-31.1)
  :realization (:VERB "bore"))

(define-category BOTHER23702
  :mixins (AMUSE-31.1)
  :realization (:VERB "bother"))

(define-category BOTHER23703
  :mixins (AMUSE-31.1)
  :realization (:VERB "bother"))

(define-category BOTHER23700
  :mixins (AMUSE-31.1)
  :realization (:VERB "bother"))

(define-category BROWBEAT23200
  :mixins (AMUSE-31.1)
  :realization (:VERB "browbeat"))

(define-category BROWBEAT23700
  :mixins (AMUSE-31.1)
  :realization (:VERB "browbeat"))

(define-category BUG23700
  :mixins (AMUSE-31.1)
  :realization (:VERB "bug"))

(define-category CALM23700
  :mixins (AMUSE-31.1)
  :realization (:VERB "calm"))

(define-category CAPTIVATE23700
  :mixins (AMUSE-31.1)
  :realization (:VERB "captivate"))

(define-category CHAGRIN23701
  :mixins (AMUSE-31.1)
  :realization (:VERB "chagrin"))

(define-category CHARM23700
  :mixins (AMUSE-31.1)
  :realization (:VERB "charm"))

(define-category CHEER23200
  :mixins (AMUSE-31.1)
  :realization (:VERB "cheer"))

(define-category CHEER23203
  :mixins (AMUSE-31.1)
  :realization (:VERB "cheer"))

(define-category CHILL23700
  :mixins (AMUSE-31.1)
  :realization (:VERB "chill"))

(define-category CLOY24000
  :mixins (AMUSE-31.1)
  :realization (:VERB "cloy"))

(define-category COMFORT23701
  :mixins (AMUSE-31.1)
  :realization (:VERB "comfort"))

(define-category CONCERN24201
  :mixins (AMUSE-31.1)
  :realization (:VERB "concern"))

(define-category CONFOUND23102
  :mixins (AMUSE-31.1)
  :realization (:VERB "confound"))

(define-category CONFUSE23700
  :mixins (AMUSE-31.1)
  :realization (:VERB "confuse"))

(define-category CONFUSE23103
  :mixins (AMUSE-31.1)
  :realization (:VERB "confuse"))

(define-category CONSOLE23700
  :mixins (AMUSE-31.1)
  :realization (:VERB "console"))

(define-category CONTENT23700
  :mixins (AMUSE-31.1)
  :realization (:VERB "content"))

(define-category CONVINCE23200
  :mixins (AMUSE-31.1)
  :realization (:VERB "convince"))

(define-category COW23700
  :mixins (AMUSE-31.1)
  :realization (:VERB "cow"))

(define-category CRUSH23700
  :mixins (AMUSE-31.1)
  :realization (:VERB "crush"))

(define-category DAUNT23700
  :mixins (AMUSE-31.1)
  :realization (:VERB "daunt"))

(define-category DAZE23900
  :mixins (AMUSE-31.1)
  :realization (:VERB "daze"))

(define-category DAZZLE23100
  :mixins (AMUSE-31.1)
  :realization (:VERB "dazzle"))

(define-category DEJECT23700
  :mixins (AMUSE-31.1)
  :realization (:VERB "deject"))

(define-category DELIGHT23702
  :mixins (AMUSE-31.1)
  :realization (:VERB "delight"))

(define-category DELIGHT23700
  :mixins (AMUSE-31.1)
  :realization (:VERB "delight"))

(define-category DEMOLISH23700
  :mixins (AMUSE-31.1)
  :realization (:VERB "demolish"))

(define-category DEMORALIZE23700
  :mixins (AMUSE-31.1)
  :realization (:VERB "demoralize"))

(define-category DEPRESS23700
  :mixins (AMUSE-31.1)
  :realization (:VERB "depress"))

(define-category DEVASTATE23001
  :mixins (AMUSE-31.1)
  :realization (:VERB "devastate"))

(define-category DISAPPOINT23700
  :mixins (AMUSE-31.1)
  :realization (:VERB "disappoint"))

(define-category DISARM23700
  :mixins (AMUSE-31.1)
  :realization (:VERB "disarm"))

(define-category DISCOMBOBULATE23100
  :mixins (AMUSE-31.1)
  :realization (:VERB "discombobulate"))

(define-category DISCOMBOBULATE23700
  :mixins (AMUSE-31.1)
  :realization (:VERB "discombobulate"))

(define-category DISCOMFIT23700
  :mixins (AMUSE-31.1)
  :realization (:VERB "discomfit"))

(define-category DISCONCERT23701
  :mixins (AMUSE-31.1)
  :realization (:VERB "disconcert"))

(define-category DISCONCERT23702
  :mixins (AMUSE-31.1)
  :realization (:VERB "disconcert"))

(define-category DISCOMPOSE23700
  :mixins (AMUSE-31.1)
  :realization (:VERB "discompose"))

(define-category DISCOURAGE23700
  :mixins (AMUSE-31.1)
  :realization (:VERB "discourage"))

(define-category DISGRACE23700
  :mixins (AMUSE-31.1)
  :realization (:VERB "disgrace"))

(define-category DISGRACE24100
  :mixins (AMUSE-31.1)
  :realization (:VERB "disgrace"))

(define-category DISGRUNTLE23700
  :mixins (AMUSE-31.1)
  :realization (:VERB "disgruntle"))

(define-category DISGUST23700
  :mixins (AMUSE-31.1)
  :realization (:VERB "disgust"))

(define-category DISGUST23900
  :mixins (AMUSE-31.1)
  :realization (:VERB "disgust"))

(define-category DISHEARTEN23700
  :mixins (AMUSE-31.1)
  :realization (:VERB "dishearten"))

(define-category DISHONOUR24100
  :mixins (AMUSE-31.1)
  :realization (:VERB "dishonour"))

(define-category DISILLUSION23700
  :mixins (AMUSE-31.1)
  :realization (:VERB "disillusion"))

(define-category DISMAY23700
  :mixins (AMUSE-31.1)
  :realization (:VERB "dismay"))

(define-category DISMAY23701
  :mixins (AMUSE-31.1)
  :realization (:VERB "dismay"))

(define-category DISPIRIT23700
  :mixins (AMUSE-31.1)
  :realization (:VERB "dispirit"))

(define-category DISPLEASE23700
  :mixins (AMUSE-31.1)
  :realization (:VERB "displease"))

(define-category DISQUIET23700
  :mixins (AMUSE-31.1)
  :realization (:VERB "disquiet"))

(define-category DISSATISFY23700
  :mixins (AMUSE-31.1)
  :realization (:VERB "dissatisfy"))

(define-category DISTRACT23702
  :mixins (AMUSE-31.1)
  :realization (:VERB "distract"))

(define-category DISTRESS23700
  :mixins (AMUSE-31.1)
  :realization (:VERB "distress"))

(define-category DISTURB23700
  :mixins (AMUSE-31.1)
  :realization (:VERB "disturb"))

(define-category DUMBFOUND23100
  :mixins (AMUSE-31.1)
  :realization (:VERB "dumbfound"))

(define-category ELATE23700
  :mixins (AMUSE-31.1)
  :realization (:VERB "elate"))

(define-category ELECTRIFY23700
  :mixins (AMUSE-31.1)
  :realization (:VERB "electrify"))

(define-category EMBARRASS23700
  :mixins (AMUSE-31.1)
  :realization (:VERB "embarrass"))

(define-category EMBOLDEN23700
  :mixins (AMUSE-31.1)
  :realization (:VERB "embolden"))

(define-category ENCHANT23701
  :mixins (AMUSE-31.1)
  :realization (:VERB "enchant"))

(define-category ENCOURAGE23700
  :mixins (AMUSE-31.1)
  :realization (:VERB "encourage"))

(define-category ENGAGE23100
  :mixins (AMUSE-31.1)
  :realization (:VERB "engage"))

(define-category ENGROSS23100
  :mixins (AMUSE-31.1)
  :realization (:VERB "engross"))

(define-category ENGROSS23102
  :mixins (AMUSE-31.1)
  :realization (:VERB "engross"))

(define-category ENLIGHTEN23201
  :mixins (AMUSE-31.1)
  :realization (:VERB "enlighten"))

(define-category ENRAGE23700
  :mixins (AMUSE-31.1)
  :realization (:VERB "enrage"))

(define-category ENRAPTURE23700
  :mixins (AMUSE-31.1)
  :realization (:VERB "enrapture"))

(define-category ENTERTAIN24100
  :mixins (AMUSE-31.1)
  :realization (:VERB "entertain"))

(define-category ENTHRALL23700
  :mixins (AMUSE-31.1)
  :realization (:VERB "enthrall"))

(define-category ENTHUSE23700
  :mixins (AMUSE-31.1)
  :realization (:VERB "enthuse"))

(define-category ENTICE23200
  :mixins (AMUSE-31.1)
  :realization (:VERB "entice"))

(define-category ENTRANCE23700
  :mixins (AMUSE-31.1)
  :realization (:VERB "entrance"))

(define-category EXASPERATE23701
  :mixins (AMUSE-31.1)
  :realization (:VERB "exasperate"))

(define-category EXASPERATE23700
  :mixins (AMUSE-31.1)
  :realization (:VERB "exasperate"))

(define-category EXCITE23700
  :mixins (AMUSE-31.1)
  :realization (:VERB "excite"))

(define-category EXCITE23701
  :mixins (AMUSE-31.1)
  :realization (:VERB "excite"))

(define-category EXCITE23703
  :mixins (AMUSE-31.1)
  :realization (:VERB "excite"))

(define-category EXCITE23702
  :mixins (AMUSE-31.1)
  :realization (:VERB "excite"))

(define-category EXHAUST22900
  :mixins (AMUSE-31.1)
  :realization (:VERB "exhaust"))

(define-category EXHILARATE23700
  :mixins (AMUSE-31.1)
  :realization (:VERB "exhilarate"))

(define-category FASCINATE23701
  :mixins (AMUSE-31.1)
  :realization (:VERB "fascinate"))

(define-category FASCINATE24200
  :mixins (AMUSE-31.1)
  :realization (:VERB "fascinate"))

(define-category FAZE23700
  :mixins (AMUSE-31.1)
  :realization (:VERB "faze"))

(define-category FLABBERGAST23100
  :mixins (AMUSE-31.1)
  :realization (:VERB "flabbergast"))

(define-category FLATTER23200
  :mixins (AMUSE-31.1)
  :realization (:VERB "flatter"))

(define-category FLOOR23700
  :mixins (AMUSE-31.1)
  :realization (:VERB "floor"))

(define-category FLUMMOX23100
  :mixins (AMUSE-31.1)
  :realization (:VERB "flummox"))

(define-category FLUSTER23700
  :mixins (AMUSE-31.1)
  :realization (:VERB "fluster"))

(define-category FLUSTER23701
  :mixins (AMUSE-31.1)
  :realization (:VERB "fluster"))

(define-category FOX23100
  :mixins (AMUSE-31.1)
  :realization (:VERB "fox"))

(define-category FRIGHTEN23700
  :mixins (AMUSE-31.1)
  :realization (:VERB "frighten"))

(define-category FRUSTRATE23700
  :mixins (AMUSE-31.1)
  :realization (:VERB "frustrate"))

(define-category FUDDLE23100
  :mixins (AMUSE-31.1)
  :realization (:VERB "fuddle"))

(define-category GALL23700
  :mixins (AMUSE-31.1)
  :realization (:VERB "gall"))

(define-category GALVANIZE23700
  :mixins (AMUSE-31.1)
  :realization (:VERB "galvanize"))

(define-category GLADDEN23700
  :mixins (AMUSE-31.1)
  :realization (:VERB "gladden"))

(define-category GLADDEN23701
  :mixins (AMUSE-31.1)
  :realization (:VERB "gladden"))

(define-category GRATIFY23400
  :mixins (AMUSE-31.1)
  :realization (:VERB "gratify"))

(define-category GRATIFY23700
  :mixins (AMUSE-31.1)
  :realization (:VERB "gratify"))

(define-category GRIEVE23701
  :mixins (AMUSE-31.1)
  :realization (:VERB "grieve"))

(define-category HARASS23700
  :mixins (AMUSE-31.1)
  :realization (:VERB "harass"))

(define-category HAUNT23700
  :mixins (AMUSE-31.1)
  :realization (:VERB "haunt"))

(define-category HEARTEN23700
  :mixins (AMUSE-31.1)
  :realization (:VERB "hearten"))

(define-category HORRIFY23701
  :mixins (AMUSE-31.1)
  :realization (:VERB "horrify"))

(define-category HUMBLE23700
  :mixins (AMUSE-31.1)
  :realization (:VERB "humble"))

(define-category HUMBLE23701
  :mixins (AMUSE-31.1)
  :realization (:VERB "humble"))

(define-category HUMILIATE23700
  :mixins (AMUSE-31.1)
  :realization (:VERB "humiliate"))

(define-category HURT23004
  :mixins (AMUSE-31.1)
  :realization (:VERB "hurt"))

(define-category IMPRESS23100
  :mixins (AMUSE-31.1)
  :realization (:VERB "impress"))

(define-category IMPRESS23700
  :mixins (AMUSE-31.1)
  :realization (:VERB "impress"))

(define-category IMPRESS23701
  :mixins (AMUSE-31.1)
  :realization (:VERB "impress"))

(define-category INCENSE23701
  :mixins (AMUSE-31.1)
  :realization (:VERB "incense"))

(define-category INFURIATE23700
  :mixins (AMUSE-31.1)
  :realization (:VERB "infuriate"))

(define-category INSPIRE23200
  :mixins (AMUSE-31.1)
  :realization (:VERB "inspire"))

(define-category INSULT23200
  :mixins (AMUSE-31.1)
  :realization (:VERB "insult"))

(define-category INTEREST23700
  :mixins (AMUSE-31.1)
  :realization (:VERB "interest"))

(define-category INTIMIDATE23700
  :mixins (AMUSE-31.1)
  :realization (:VERB "intimidate"))

(define-category INTOXICATE23700
  :mixins (AMUSE-31.1)
  :realization (:VERB "intoxicate"))

(define-category INTRIGUE24200
  :mixins (AMUSE-31.1)
  :realization (:VERB "intrigue"))

(define-category INVIGORATE22900
  :mixins (AMUSE-31.1)
  :realization (:VERB "invigorate"))

(define-category INVIGORATE23001
  :mixins (AMUSE-31.1)
  :realization (:VERB "invigorate"))

(define-category IRK23700
  :mixins (AMUSE-31.1)
  :realization (:VERB "irk"))

(define-category IRRITATE23700
  :mixins (AMUSE-31.1)
  :realization (:VERB "irritate"))

(define-category JAR23700
  :mixins (AMUSE-31.1)
  :realization (:VERB "jar"))

(define-category JOLT23700
  :mixins (AMUSE-31.1)
  :realization (:VERB "jolt"))

(define-category KILL23700
  :mixins (AMUSE-31.1)
  :realization (:VERB "kill"))

(define-category LULL23701
  :mixins (AMUSE-31.1)
  :realization (:VERB "lull"))

(define-category MADDEN23700
  :mixins (AMUSE-31.1)
  :realization (:VERB "madden"))

(define-category MADDEN23701
  :mixins (AMUSE-31.1)
  :realization (:VERB "madden"))

(define-category MESMERIZE23200
  :mixins (AMUSE-31.1)
  :realization (:VERB "mesmerize"))

(define-category MIFF23700
  :mixins (AMUSE-31.1)
  :realization (:VERB "miff"))

(define-category MISGUIDE23200
  :mixins (AMUSE-31.1)
  :realization (:VERB "misguide"))

(define-category MISGUIDE23800
  :mixins (AMUSE-31.1)
  :realization (:VERB "misguide"))

(define-category MOLLIFY23700
  :mixins (AMUSE-31.1)
  :realization (:VERB "mollify"))

(define-category MORTIFY23702
  :mixins (AMUSE-31.1)
  :realization (:VERB "mortify"))

(define-category MOVE23701
  :mixins (AMUSE-31.1)
  :realization (:VERB "move"))

(define-category MOVE23700
  :mixins (AMUSE-31.1)
  :realization (:VERB "move"))

(define-category MUDDLE23100
  :mixins (AMUSE-31.1)
  :realization (:VERB "muddle"))

(define-category MYSTIFY23100
  :mixins (AMUSE-31.1)
  :realization (:VERB "mystify"))

(define-category NAUSEATE23700
  :mixins (AMUSE-31.1)
  :realization (:VERB "nauseate"))

(define-category NETTLE23700
  :mixins (AMUSE-31.1)
  :realization (:VERB "nettle"))

(define-category NONPLUS23100
  :mixins (AMUSE-31.1)
  :realization (:VERB "nonplus"))

(define-category NUMB23900
  :mixins (AMUSE-31.1)
  :realization (:VERB "numb"))

(define-category OBSESS23700
  :mixins (AMUSE-31.1)
  :realization (:VERB "obsess"))

(define-category OFFEND23700
  :mixins (AMUSE-31.1)
  :realization (:VERB "offend"))

(define-category OFFEND23702
  :mixins (AMUSE-31.1)
  :realization (:VERB "offend"))

(define-category OFFEND23701
  :mixins (AMUSE-31.1)
  :realization (:VERB "offend"))

(define-category OUTRAGE23701
  :mixins (AMUSE-31.1)
  :realization (:VERB "outrage"))

(define-category OVERAWE23700
  :mixins (AMUSE-31.1)
  :realization (:VERB "overawe"))

(define-category OVERWHELM23700
  :mixins (AMUSE-31.1)
  :realization (:VERB "overwhelm"))

(define-category PACIFY23700
  :mixins (AMUSE-31.1)
  :realization (:VERB "pacify"))

(define-category PAIN23700
  :mixins (AMUSE-31.1)
  :realization (:VERB "pain"))

(define-category PEEVE23700
  :mixins (AMUSE-31.1)
  :realization (:VERB "peeve"))

(define-category PERPLEX23100
  :mixins (AMUSE-31.1)
  :realization (:VERB "perplex"))

(define-category PERTURB23700
  :mixins (AMUSE-31.1)
  :realization (:VERB "perturb"))

(define-category PIQUE23700
  :mixins (AMUSE-31.1)
  :realization (:VERB "pique"))

(define-category PLACATE23700
  :mixins (AMUSE-31.1)
  :realization (:VERB "placate"))

(define-category PLAGUE23700
  :mixins (AMUSE-31.1)
  :realization (:VERB "plague"))

(define-category PLEASE23700
  :mixins (AMUSE-31.1)
  :realization (:VERB "please"))

(define-category PREOCCUPY23700
  :mixins (AMUSE-31.1)
  :realization (:VERB "preoccupy"))

(define-category PROVOKE23701
  :mixins (AMUSE-31.1)
  :realization (:VERB "provoke"))

(define-category PROVOKE23700
  :mixins (AMUSE-31.1)
  :realization (:VERB "provoke"))

(define-category PUZZLE23100
  :mixins (AMUSE-31.1)
  :realization (:VERB "puzzle"))

(define-category RAG23200
  :mixins (AMUSE-31.1)
  :realization (:VERB "rag"))

(define-category RAG23201
  :mixins (AMUSE-31.1)
  :realization (:VERB "rag"))

(define-category RAG23701
  :mixins (AMUSE-31.1)
  :realization (:VERB "rag"))

(define-category RAG23700
  :mixins (AMUSE-31.1)
  :realization (:VERB "rag"))

(define-category RANKLE23700
  :mixins (AMUSE-31.1)
  :realization (:VERB "rankle"))

(define-category REASSURE23200
  :mixins (AMUSE-31.1)
  :realization (:VERB "reassure"))

(define-category REASSURE23700
  :mixins (AMUSE-31.1)
  :realization (:VERB "reassure"))

(define-category REFRESH23000
  :mixins (AMUSE-31.1)
  :realization (:VERB "refresh"))

(define-category RELAX22901
  :mixins (AMUSE-31.1)
  :realization (:VERB "relax"))

(define-category RELIEVE24001
  :mixins (AMUSE-31.1)
  :realization (:VERB "relieve"))

(define-category RELIEVE23700
  :mixins (AMUSE-31.1)
  :realization (:VERB "relieve"))

(define-category REPEL23900
  :mixins (AMUSE-31.1)
  :realization (:VERB "repel"))

(define-category REPEL23700
  :mixins (AMUSE-31.1)
  :realization (:VERB "repel"))

(define-category REPULSE23700
  :mixins (AMUSE-31.1)
  :realization (:VERB "repulse"))

(define-category REVITALIZE22900
  :mixins (AMUSE-31.1)
  :realization (:VERB "revitalize"))

(define-category REVOLT23700
  :mixins (AMUSE-31.1)
  :realization (:VERB "revolt"))

(define-category REVOLT23900
  :mixins (AMUSE-31.1)
  :realization (:VERB "revolt"))

(define-category RILE23700
  :mixins (AMUSE-31.1)
  :realization (:VERB "rile"))

(define-category RUFFLE23701
  :mixins (AMUSE-31.1)
  :realization (:VERB "ruffle"))

(define-category RUFFLE23700
  :mixins (AMUSE-31.1)
  :realization (:VERB "ruffle"))

(define-category SADDEN23701
  :mixins (AMUSE-31.1)
  :realization (:VERB "sadden"))

(define-category SATISFY23700
  :mixins (AMUSE-31.1)
  :realization (:VERB "satisfy"))

(define-category SCANDALIZE23700
  :mixins (AMUSE-31.1)
  :realization (:VERB "scandalize"))

(define-category SCARE23704
  :mixins (AMUSE-31.1)
  :realization (:VERB "scare"))

(define-category SCARE23700
  :mixins (AMUSE-31.1)
  :realization (:VERB "scare"))

(define-category SHAKE23700
  :mixins (AMUSE-31.1)
  :realization (:VERB "shake"))

(define-category SHAME23700
  :mixins (AMUSE-31.1)
  :realization (:VERB "shame"))

(define-category SHAME24100
  :mixins (AMUSE-31.1)
  :realization (:VERB "shame"))

(define-category SHOCK23700
  :mixins (AMUSE-31.1)
  :realization (:VERB "shock"))

(define-category SHOCK23702
  :mixins (AMUSE-31.1)
  :realization (:VERB "shock"))

(define-category SHOCK23701
  :mixins (AMUSE-31.1)
  :realization (:VERB "shock"))

(define-category SICKEN23700
  :mixins (AMUSE-31.1)
  :realization (:VERB "sicken"))

(define-category SOBER23002
  :mixins (AMUSE-31.1)
  :realization (:VERB "sober"))

(define-category SOLACE23700
  :mixins (AMUSE-31.1)
  :realization (:VERB "solace"))

(define-category SOOTHE23700
  :mixins (AMUSE-31.1)
  :realization (:VERB "soothe"))

(define-category SPELLBIND23200
  :mixins (AMUSE-31.1)
  :realization (:VERB "spellbind"))

(define-category SPOOK23700
  :mixins (AMUSE-31.1)
  :realization (:VERB "spook"))

(define-category STAGGER23700
  :mixins (AMUSE-31.1)
  :realization (:VERB "stagger"))

(define-category STARTLE23700
  :mixins (AMUSE-31.1)
  :realization (:VERB "startle"))

(define-category STIMULATE23900
  :mixins (AMUSE-31.1)
  :realization (:VERB "stimulate"))

(define-category STIMULATE22900
  :mixins (AMUSE-31.1)
  :realization (:VERB "stimulate"))

(define-category STIMULATE23700
  :mixins (AMUSE-31.1)
  :realization (:VERB "stimulate"))

(define-category STING23700
  :mixins (AMUSE-31.1)
  :realization (:VERB "sting"))

(define-category STIR23600
  :mixins (AMUSE-31.1)
  :realization (:VERB "stir"))

(define-category STIR23701
  :mixins (AMUSE-31.1)
  :realization (:VERB "stir"))

(define-category STRIKE23700
  :mixins (AMUSE-31.1)
  :realization (:VERB "strike"))

(define-category STUMP23100
  :mixins (AMUSE-31.1)
  :realization (:VERB "stump"))

(define-category STUN23900
  :mixins (AMUSE-31.1)
  :realization (:VERB "stun"))

(define-category STUPEFY23100
  :mixins (AMUSE-31.1)
  :realization (:VERB "stupefy"))

(define-category STUPEFY23900
  :mixins (AMUSE-31.1)
  :realization (:VERB "stupefy"))

(define-category SURPRISE23100
  :mixins (AMUSE-31.1)
  :realization (:VERB "surprise"))

(define-category TANTALIZE23200
  :mixins (AMUSE-31.1)
  :realization (:VERB "tantalize"))

(define-category TEMPT23701
  :mixins (AMUSE-31.1)
  :realization (:VERB "tempt"))

(define-category TEMPT23700
  :mixins (AMUSE-31.1)
  :realization (:VERB "tempt"))

(define-category TERRIFY23700
  :mixins (AMUSE-31.1)
  :realization (:VERB "terrify"))

(define-category TERRORIZE23700
  :mixins (AMUSE-31.1)
  :realization (:VERB "terrorize"))

(define-category THREATEN24200
  :mixins (AMUSE-31.1)
  :realization (:VERB "threaten"))

(define-category THRILL23701
  :mixins (AMUSE-31.1)
  :realization (:VERB "thrill"))

(define-category THRILL23702
  :mixins (AMUSE-31.1)
  :realization (:VERB "thrill"))

(define-category THRILL23900
  :mixins (AMUSE-31.1)
  :realization (:VERB "thrill"))

(define-category THROW23100
  :mixins (AMUSE-31.1)
  :realization (:VERB "throw"))

(define-category THROW23700
  :mixins (AMUSE-31.1)
  :realization (:VERB "throw"))

(define-category TICKLE23701
  :mixins (AMUSE-31.1)
  :realization (:VERB "tickle"))

(define-category TIRE23701
  :mixins (AMUSE-31.1)
  :realization (:VERB "tire"))

(define-category TITILLATE23700
  :mixins (AMUSE-31.1)
  :realization (:VERB "titillate"))

(define-category TORMENT23701
  :mixins (AMUSE-31.1)
  :realization (:VERB "torment"))

(define-category TORMENT23700
  :mixins (AMUSE-31.1)
  :realization (:VERB "torment"))

(define-category TOUCH23700
  :mixins (AMUSE-31.1)
  :realization (:VERB "touch"))

(define-category TRANSPORT23700
  :mixins (AMUSE-31.1)
  :realization (:VERB "transport"))

(define-category TROUBLE23700
  :mixins (AMUSE-31.1)
  :realization (:VERB "trouble"))

(define-category TROUBLE23701
  :mixins (AMUSE-31.1)
  :realization (:VERB "trouble"))

(define-category TRY23701
  :mixins (AMUSE-31.1)
  :realization (:VERB "try"))

(define-category UNNERVE23700
  :mixins (AMUSE-31.1)
  :realization (:VERB "unnerve"))

(define-category UNSETTLE23700
  :mixins (AMUSE-31.1)
  :realization (:VERB "unsettle"))

(define-category UPLIFT23700
  :mixins (AMUSE-31.1)
  :realization (:VERB "uplift"))

(define-category UPSET23700
  :mixins (AMUSE-31.1)
  :realization (:VERB "upset"))

(define-category UPSET23701
  :mixins (AMUSE-31.1)
  :realization (:VERB "upset"))

(define-category VEX23700
  :mixins (AMUSE-31.1)
  :realization (:VERB "vex"))

(define-category WEARY22900
  :mixins (AMUSE-31.1)
  :realization (:VERB "weary"))

(define-category WORRY24200
  :mixins (AMUSE-31.1)
  :realization (:VERB "worry"))

(define-category WORRY23701
  :mixins (AMUSE-31.1)
  :realization (:VERB "worry"))

(define-category WOUND23700
  :mixins (AMUSE-31.1)
  :realization (:VERB "wound"))

(define-category WOW23700
  :mixins (AMUSE-31.1)
  :realization (:VERB "wow"))

(define-category SMITE23700
  :mixins (AMUSE-31.1)
  :realization (:VERB "smite"))

(define-category BAA23200
  :mixins (ANIMAL_SOUNDS-38)
  :realization (:VERB "baa"))

(define-category BARK23200
  :mixins (ANIMAL_SOUNDS-38)
  :realization (:VERB "bark"))

(define-category BAY23201
  :mixins (ANIMAL_SOUNDS-38)
  :realization (:VERB "bay"))

(define-category BELLOW23201
  :mixins (ANIMAL_SOUNDS-38)
  :realization (:VERB "bellow"))

(define-category BLAT23200
  :mixins (ANIMAL_SOUNDS-38)
  :realization (:VERB "blat"))

(define-category BLEAT23200
  :mixins (ANIMAL_SOUNDS-38)
  :realization (:VERB "bleat"))

(define-category BRAY23200
  :mixins (ANIMAL_SOUNDS-38)
  :realization (:VERB "bray"))

(define-category BUZZ23900
  :mixins (ANIMAL_SOUNDS-38)
  :realization (:VERB "buzz"))

(define-category CACKLE23200
  :mixins (ANIMAL_SOUNDS-38)
  :realization (:VERB "cackle"))

(define-category CALL23203
  :mixins (ANIMAL_SOUNDS-38)
  :realization (:VERB "call"))

(define-category CAW23200
  :mixins (ANIMAL_SOUNDS-38)
  :realization (:VERB "caw"))

(define-category CHATTER23202
  :mixins (ANIMAL_SOUNDS-38)
  :realization (:VERB "chatter"))

(define-category CHEEP23200
  :mixins (ANIMAL_SOUNDS-38)
  :realization (:VERB "cheep"))

(define-category CHIRP23200
  :mixins (ANIMAL_SOUNDS-38)
  :realization (:VERB "chirp"))

(define-category CHIRRUP23200
  :mixins (ANIMAL_SOUNDS-38)
  :realization (:VERB "chirrup"))

(define-category CHITTER23200
  :mixins (ANIMAL_SOUNDS-38)
  :realization (:VERB "chitter"))

(define-category CLUCK23200
  :mixins (ANIMAL_SOUNDS-38)
  :realization (:VERB "cluck"))

(define-category COO23200
  :mixins (ANIMAL_SOUNDS-38)
  :realization (:VERB "coo"))

(define-category CROAK23201
  :mixins (ANIMAL_SOUNDS-38)
  :realization (:VERB "croak"))

(define-category CROW23202
  :mixins (ANIMAL_SOUNDS-38)
  :realization (:VERB "crow"))

(define-category CUCKOO23200
  :mixins (ANIMAL_SOUNDS-38)
  :realization (:VERB "cuckoo"))

(define-category DRONE23900
  :mixins (ANIMAL_SOUNDS-38)
  :realization (:VERB "drone"))

(define-category GOBBLE23200
  :mixins (ANIMAL_SOUNDS-38)
  :realization (:VERB "gobble"))

(define-category GROWL23200
  :mixins (ANIMAL_SOUNDS-38)
  :realization (:VERB "growl"))

(define-category GRUNT23200
  :mixins (ANIMAL_SOUNDS-38)
  :realization (:VERB "grunt"))

(define-category HEE-HAW23200
  :mixins (ANIMAL_SOUNDS-38)
  :realization (:VERB "hee-haw"))

(define-category HISS23201
  :mixins (ANIMAL_SOUNDS-38)
  :realization (:VERB "hiss"))

(define-category HISS23200
  :mixins (ANIMAL_SOUNDS-38)
  :realization (:VERB "hiss"))

(define-category HONK23200
  :mixins (ANIMAL_SOUNDS-38)
  :realization (:VERB "honk"))

(define-category HOOT23200
  :mixins (ANIMAL_SOUNDS-38)
  :realization (:VERB "hoot"))

(define-category HOWL23203
  :mixins (ANIMAL_SOUNDS-38)
  :realization (:VERB "howl"))

(define-category LOW23200
  :mixins (ANIMAL_SOUNDS-38)
  :realization (:VERB "low"))

(define-category MEOW23200
  :mixins (ANIMAL_SOUNDS-38)
  :realization (:VERB "meow"))

(define-category MEW23200
  :mixins (ANIMAL_SOUNDS-38)
  :realization (:VERB "mew"))

(define-category MOO23200
  :mixins (ANIMAL_SOUNDS-38)
  :realization (:VERB "moo"))

(define-category NEIGH23200
  :mixins (ANIMAL_SOUNDS-38)
  :realization (:VERB "neigh"))

(define-category OINK23200
  :mixins (ANIMAL_SOUNDS-38)
  :realization (:VERB "oink"))

(define-category PEEP23200
  :mixins (ANIMAL_SOUNDS-38)
  :realization (:VERB "peep"))

(define-category PIPE23200
  :mixins (ANIMAL_SOUNDS-38)
  :realization (:VERB "pipe"))

(define-category PURR23200
  :mixins (ANIMAL_SOUNDS-38)
  :realization (:VERB "purr"))

(define-category QUACK23200
  :mixins (ANIMAL_SOUNDS-38)
  :realization (:VERB "quack"))

(define-category ROAR23205
  :mixins (ANIMAL_SOUNDS-38)
  :realization (:VERB "roar"))

(define-category SQUAWK23201
  :mixins (ANIMAL_SOUNDS-38)
  :realization (:VERB "squawk"))

(define-category SQUEAK23900
  :mixins (ANIMAL_SOUNDS-38)
  :realization (:VERB "squeak"))

(define-category SQUEAL23201
  :mixins (ANIMAL_SOUNDS-38)
  :realization (:VERB "squeal"))

(define-category STRIDULATE23900
  :mixins (ANIMAL_SOUNDS-38)
  :realization (:VERB "stridulate"))

(define-category TRILL23200
  :mixins (ANIMAL_SOUNDS-38)
  :realization (:VERB "trill"))

(define-category TWEET23900
  :mixins (ANIMAL_SOUNDS-38)
  :realization (:VERB "tweet"))

(define-category TWITTER23200
  :mixins (ANIMAL_SOUNDS-38)
  :realization (:VERB "twitter"))

(define-category WAIL23200
  :mixins (ANIMAL_SOUNDS-38)
  :realization (:VERB "wail"))

(define-category WARBLE23200
  :mixins (ANIMAL_SOUNDS-38)
  :realization (:VERB "warble"))

(define-category WHIMPER22900
  :mixins (ANIMAL_SOUNDS-38)
  :realization (:VERB "whimper"))

(define-category WHINNY23200
  :mixins (ANIMAL_SOUNDS-38)
  :realization (:VERB "whinny"))

(define-category WHISTLE23900
  :mixins (ANIMAL_SOUNDS-38)
  :realization (:VERB "whistle"))

(define-category YAP23200
  :mixins (ANIMAL_SOUNDS-38)
  :realization (:VERB "yap"))

(define-category YELL23201
  :mixins (ANIMAL_SOUNDS-38)
  :realization (:VERB "yell"))

(define-category YELP23200
  :mixins (ANIMAL_SOUNDS-38)
  :realization (:VERB "yelp"))

(define-category YIP23200
  :mixins (ANIMAL_SOUNDS-38)
  :realization (:VERB "yip"))

(define-category YOWL23200
  :mixins (ANIMAL_SOUNDS-38)
  :realization (:VERB "yowl"))

(define-category YOWL23201
  :mixins (ANIMAL_SOUNDS-38)
  :realization (:VERB "yowl"))

(define-category BOOM23900
  :mixins (ANIMAL_SOUNDS-38)
  :realization (:VERB "boom"))

(define-category RATTLE23800
  :mixins (ANIMAL_SOUNDS-38)
  :realization (:VERB "rattle"))

(define-category GROAN23200
  :mixins (ANIMAL_SOUNDS-38)
  :realization (:VERB "groan"))

(define-category ULULATE23200
  :mixins (ANIMAL_SOUNDS-38)
  :realization (:VERB "ululate"))

(define-category MOAN23200
  :mixins (ANIMAL_SOUNDS-38)
  :realization (:VERB "moan"))

(define-category RUMBLE23200
  :mixins (ANIMAL_SOUNDS-38)
  :realization (:VERB "rumble"))

(define-category RUMBLE23900
  :mixins (ANIMAL_SOUNDS-38)
  :realization (:VERB "rumble"))

(define-category THUNDER23201
  :mixins (ANIMAL_SOUNDS-38)
  :realization (:VERB "thunder"))

(define-category WHEEZE22900
  :mixins (ANIMAL_SOUNDS-38)
  :realization (:VERB "wheeze"))

(define-category WHINE23800
  :mixins (ANIMAL_SOUNDS-38)
  :realization (:VERB "whine"))

(define-category NIGGLE23700
  :mixins (APPEAL-31.4-1)
  :realization (:VERB "niggle"))

(define-category GRATE23700
  :mixins (APPEAL-31.4-2)
  :realization (:VERB "grate"))

(define-category JAR23700
  :mixins (APPEAL-31.4-2)
  :realization (:VERB "jar"))

(define-category APPEAL23700
  :mixins (APPEAL-31.4-3)
  :realization (:VERB "appeal"))

(define-category APPEAR23001
  :mixins (APPEAR-48.1.1)
  :realization (:VERB "appear"))

(define-category APPEAR23000
  :mixins (APPEAR-48.1.1)
  :realization (:VERB "appear"))

(define-category ARISE24201
  :mixins (APPEAR-48.1.1)
  :realization (:VERB "arise"))

(define-category ARISE24200
  :mixins (APPEAR-48.1.1)
  :realization (:VERB "arise"))

(define-category AWAKE22900
  :mixins (APPEAR-48.1.1)
  :realization (:VERB "awake"))

(define-category AWAKEN22901
  :mixins (APPEAR-48.1.1)
  :realization (:VERB "awaken"))

(define-category BREAK23205
  :mixins (APPEAR-48.1.1)
  :realization (:VERB "break"))

(define-category BREAK23809
  :mixins (APPEAR-48.1.1)
  :realization (:VERB "break"))

(define-category BREAK24214
  :mixins (APPEAR-48.1.1)
  :realization (:VERB "break"))

(define-category BREAK23004
  :mixins (APPEAR-48.1.1)
  :realization (:VERB "break"))

(define-category BURST23002
  :mixins (APPEAR-48.1.1)
  :realization (:VERB "burst"))

(define-category COME24213
  :mixins (APPEAR-48.1.1)
  :realization (:VERB "come"))

(define-category COME23001
  :mixins (APPEAR-48.1.1)
  :realization (:VERB "come"))

(define-category DAWN23000
  :mixins (APPEAR-48.1.1)
  :realization (:VERB "dawn"))

(define-category DAWN24201
  :mixins (APPEAR-48.1.1)
  :realization (:VERB "dawn"))

(define-category DERIVE23000
  :mixins (APPEAR-48.1.1)
  :realization (:VERB "derive"))

(define-category DEVELOP24200
  :mixins (APPEAR-48.1.1)
  :realization (:VERB "develop"))

(define-category EMANATE23000
  :mixins (APPEAR-48.1.1)
  :realization (:VERB "emanate"))

(define-category EMERGE23800
  :mixins (APPEAR-48.1.1)
  :realization (:VERB "emerge"))

(define-category EMERGE23001
  :mixins (APPEAR-48.1.1)
  :realization (:VERB "emerge"))

(define-category EMERGE23002
  :mixins (APPEAR-48.1.1)
  :realization (:VERB "emerge"))

(define-category EMERGE23000
  :mixins (APPEAR-48.1.1)
  :realization (:VERB "emerge"))

(define-category ERUPT23002
  :mixins (APPEAR-48.1.1)
  :realization (:VERB "erupt"))

(define-category ERUPT23001
  :mixins (APPEAR-48.1.1)
  :realization (:VERB "erupt"))

(define-category EVOLVE23000
  :mixins (APPEAR-48.1.1)
  :realization (:VERB "evolve"))

(define-category FLOW23800
  :mixins (APPEAR-48.1.1)
  :realization (:VERB "flow"))

(define-category FLOW23801
  :mixins (APPEAR-48.1.1)
  :realization (:VERB "flow"))

(define-category FORM24202
  :mixins (APPEAR-48.1.1)
  :realization (:VERB "form"))

(define-category GROW24200
  :mixins (APPEAR-48.1.1)
  :realization (:VERB "grow"))

(define-category GUSH23500
  :mixins (APPEAR-48.1.1)
  :realization (:VERB "gush"))

(define-category GUSH23800
  :mixins (APPEAR-48.1.1)
  :realization (:VERB "gush"))

(define-category IRRUPT23801
  :mixins (APPEAR-48.1.1)
  :realization (:VERB "irrupt"))

(define-category ISSUE23000
  :mixins (APPEAR-48.1.1)
  :realization (:VERB "issue"))

(define-category MATERIALIZE23000
  :mixins (APPEAR-48.1.1)
  :realization (:VERB "materialize"))

(define-category OPEN23001
  :mixins (APPEAR-48.1.1)
  :realization (:VERB "open"))

(define-category RESULT24200
  :mixins (APPEAR-48.1.1)
  :realization (:VERB "result"))

(define-category RISE24201
  :mixins (APPEAR-48.1.1)
  :realization (:VERB "rise"))

(define-category SPREAD23507
  :mixins (APPEAR-48.1.1)
  :realization (:VERB "spread"))

(define-category STEM24200
  :mixins (APPEAR-48.1.1)
  :realization (:VERB "stem"))

(define-category STREAM23803
  :mixins (APPEAR-48.1.1)
  :realization (:VERB "stream"))

(define-category SUPERVENE23000
  :mixins (APPEAR-48.1.1)
  :realization (:VERB "supervene"))

(define-category SURGE23801
  :mixins (APPEAR-48.1.1)
  :realization (:VERB "surge"))

(define-category WAX23001
  :mixins (APPEAR-48.1.1)
  :realization (:VERB "wax"))

(define-category WAX23000
  :mixins (APPEAR-48.1.1)
  :realization (:VERB "wax"))

(define-category APPOINT24100
  :mixins (APPOINT-29.1)
  :realization (:VERB "appoint"))

(define-category APPOINT24101
  :mixins (APPOINT-29.1)
  :realization (:VERB "appoint"))

(define-category CORONATE24100
  :mixins (APPOINT-29.1)
  :realization (:VERB "coronate"))

(define-category CROWN24100
  :mixins (APPOINT-29.1)
  :realization (:VERB "crown"))

(define-category DESIGNATE23200
  :mixins (APPOINT-29.1)
  :realization (:VERB "designate"))

(define-category ELECT24100
  :mixins (APPOINT-29.1)
  :realization (:VERB "elect"))

(define-category INSTALL24100
  :mixins (APPOINT-29.1)
  :realization (:VERB "install"))

(define-category PROCLAIM23202
  :mixins (APPOINT-29.1)
  :realization (:VERB "proclaim"))

(define-category MARK23109
  :mixins (APPOINT-29.1)
  :realization (:VERB "mark"))

(define-category ORDAIN24102
  :mixins (APPOINT-29.1)
  :realization (:VERB "ordain"))

(define-category ORDAIN24100
  :mixins (APPOINT-29.1)
  :realization (:VERB "ordain"))

(define-category ADOPT23104
  :mixins (APPOINT-29.1)
  :realization (:VERB "adopt"))

(define-category ADOPT24101
  :mixins (APPOINT-29.1)
  :realization (:VERB "adopt"))

(define-category ADOPT24000
  :mixins (APPOINT-29.1)
  :realization (:VERB "adopt"))

(define-category ADOPT24002
  :mixins (APPOINT-29.1)
  :realization (:VERB "adopt"))

(define-category REELECT24100
  :mixins (APPOINT-29.1)
  :realization (:VERB "reelect"))

(define-category WANT23101
  :mixins (APPOINT-29.1)
  :realization (:VERB "want"))

(define-category NOMINATE24100
  :mixins (APPOINT-29.1)
  :realization (:VERB "nominate"))

(define-category NOMINATE24101
  :mixins (APPOINT-29.1)
  :realization (:VERB "nominate"))

(define-category NOMINATE24102
  :mixins (APPOINT-29.1)
  :realization (:VERB "nominate"))

(define-category NOMINATE23200
  :mixins (APPOINT-29.1)
  :realization (:VERB "nominate"))

(define-category ANALYSE23102
  :mixins (ASSESSMENT-34.1)
  :realization (:VERB "analyse"))

(define-category ANALYSE23101
  :mixins (ASSESSMENT-34.1)
  :realization (:VERB "analyse"))

(define-category ANALYSE23104
  :mixins (ASSESSMENT-34.1)
  :realization (:VERB "analyse"))

(define-category ANALYSE23100
  :mixins (ASSESSMENT-34.1)
  :realization (:VERB "analyse"))

(define-category ANALYZE23100
  :mixins (ASSESSMENT-34.1)
  :realization (:VERB "analyze"))

(define-category ASSESS23100
  :mixins (ASSESSMENT-34.1)
  :realization (:VERB "assess"))

(define-category ASSAY23100
  :mixins (ASSESSMENT-34.1)
  :realization (:VERB "assay"))

(define-category ASSESS23100
  :mixins (ASSESSMENT-34.1)
  :realization (:VERB "assess"))

(define-category AUDIT23101
  :mixins (ASSESSMENT-34.1)
  :realization (:VERB "audit"))

(define-category CHECK23100
  :mixins (ASSESSMENT-34.1)
  :realization (:VERB "check"))

(define-category CONSULT23201
  :mixins (ASSESSMENT-34.1)
  :realization (:VERB "consult"))

(define-category CONSULT23202
  :mixins (ASSESSMENT-34.1)
  :realization (:VERB "consult"))

(define-category EXAMINE23900
  :mixins (ASSESSMENT-34.1)
  :realization (:VERB "examine"))

(define-category EXAMINE23100
  :mixins (ASSESSMENT-34.1)
  :realization (:VERB "examine"))

(define-category EVALUATE23100
  :mixins (ASSESSMENT-34.1)
  :realization (:VERB "evaluate"))

(define-category FEEL_OUT23200
  :mixins (ASSESSMENT-34.1)
  :realization (:VERB "feel_out"))

(define-category FOLLOW23001
  :mixins (ASSESSMENT-34.1)
  :realization (:VERB "follow"))

(define-category FOLLOW24102
  :mixins (ASSESSMENT-34.1)
  :realization (:VERB "follow"))

(define-category GO_OVER23101
  :mixins (ASSESSMENT-34.1)
  :realization (:VERB "go_over"))

(define-category INSPECT23100
  :mixins (ASSESSMENT-34.1)
  :realization (:VERB "inspect"))

(define-category INSPECT23800
  :mixins (ASSESSMENT-34.1)
  :realization (:VERB "inspect"))

(define-category INSPECT23900
  :mixins (ASSESSMENT-34.1)
  :realization (:VERB "inspect"))

(define-category INVESTIGATE23201
  :mixins (ASSESSMENT-34.1)
  :realization (:VERB "investigate"))

(define-category INVESTIGATE23200
  :mixins (ASSESSMENT-34.1)
  :realization (:VERB "investigate"))

(define-category MONITOR23900
  :mixins (ASSESSMENT-34.1)
  :realization (:VERB "monitor"))

(define-category PERUSE23900
  :mixins (ASSESSMENT-34.1)
  :realization (:VERB "peruse"))

(define-category PROOFREAD23100
  :mixins (ASSESSMENT-34.1)
  :realization (:VERB "proofread"))

(define-category REGARD23900
  :mixins (ASSESSMENT-34.1)
  :realization (:VERB "regard"))

(define-category RESEARCH23100
  :mixins (ASSESSMENT-34.1)
  :realization (:VERB "research"))

(define-category RESEARCH23200
  :mixins (ASSESSMENT-34.1)
  :realization (:VERB "research"))

(define-category REVIEW23200
  :mixins (ASSESSMENT-34.1)
  :realization (:VERB "review"))

(define-category SAMPLE23400
  :mixins (ASSESSMENT-34.1)
  :realization (:VERB "sample"))

(define-category SCAN23900
  :mixins (ASSESSMENT-34.1)
  :realization (:VERB "scan"))

(define-category SCAN23901
  :mixins (ASSESSMENT-34.1)
  :realization (:VERB "scan"))

(define-category SCRUTINIZE23100
  :mixins (ASSESSMENT-34.1)
  :realization (:VERB "scrutinize"))

(define-category SCRUTINIZE23900
  :mixins (ASSESSMENT-34.1)
  :realization (:VERB "scrutinize"))

(define-category STUDY23102
  :mixins (ASSESSMENT-34.1)
  :realization (:VERB "study"))

(define-category SURVEIL23900
  :mixins (ASSESSMENT-34.1)
  :realization (:VERB "surveil"))

(define-category SURVEY23913
  :mixins (ASSESSMENT-34.1)
  :realization (:VERB "survey"))

(define-category SURVEY23900
  :mixins (ASSESSMENT-34.1)
  :realization (:VERB "survey"))

(define-category TASTE23901
  :mixins (ASSESSMENT-34.1)
  :realization (:VERB "taste"))

(define-category TASTE23400
  :mixins (ASSESSMENT-34.1)
  :realization (:VERB "taste"))

(define-category TEST23200
  :mixins (ASSESSMENT-34.1)
  :realization (:VERB "test"))

(define-category TEST24101
  :mixins (ASSESSMENT-34.1)
  :realization (:VERB "test"))

(define-category TEST24100
  :mixins (ASSESSMENT-34.1)
  :realization (:VERB "test"))

(define-category TRY_ON22900
  :mixins (ASSESSMENT-34.1)
  :realization (:VERB "try_on"))

(define-category TRY_OUT23400
  :mixins (ASSESSMENT-34.1)
  :realization (:VERB "try_out"))

(define-category TRY_OUT24105
  :mixins (ASSESSMENT-34.1)
  :realization (:VERB "try_out"))

(define-category TRY_OUT24100
  :mixins (ASSESSMENT-34.1)
  :realization (:VERB "try_out"))

(define-category WATCH23903
  :mixins (ASSESSMENT-34.1)
  :realization (:VERB "watch"))

(define-category WATCH23901
  :mixins (ASSESSMENT-34.1)
  :realization (:VERB "watch"))

(define-category WATCH23902
  :mixins (ASSESSMENT-34.1)
  :realization (:VERB "watch"))

(define-category WATCH23905
  :mixins (ASSESSMENT-34.1)
  :realization (:VERB "watch"))

(define-category WATCH24100
  :mixins (ASSESSMENT-34.1)
  :realization (:VERB "watch"))

(define-category WATCH23900
  :mixins (ASSESSMENT-34.1)
  :realization (:VERB "watch"))

(define-category BEND23803
  :mixins (ASSUMING_POSITION-50)
  :realization (:VERB "bend"))

(define-category BOW23801
  :mixins (ASSUMING_POSITION-50)
  :realization (:VERB "bow"))

(define-category BOW23800
  :mixins (ASSUMING_POSITION-50)
  :realization (:VERB "bow"))

(define-category BOW23200
  :mixins (ASSUMING_POSITION-50)
  :realization (:VERB "bow"))

(define-category CROUCH23800
  :mixins (ASSUMING_POSITION-50)
  :realization (:VERB "crouch"))

(define-category FLOP23800
  :mixins (ASSUMING_POSITION-50)
  :realization (:VERB "flop"))

(define-category FLOP23801
  :mixins (ASSUMING_POSITION-50)
  :realization (:VERB "flop"))

(define-category KNEEL23500
  :mixins (ASSUMING_POSITION-50)
  :realization (:VERB "kneel"))

(define-category LEAN23800
  :mixins (ASSUMING_POSITION-50)
  :realization (:VERB "lean"))

(define-category LIE23800
  :mixins (ASSUMING_POSITION-50)
  :realization (:VERB "lie"))

(define-category PERCH23500
  :mixins (ASSUMING_POSITION-50)
  :realization (:VERB "perch"))

(define-category PLOP23500
  :mixins (ASSUMING_POSITION-50)
  :realization (:VERB "plop"))

(define-category RISE22908
  :mixins (ASSUMING_POSITION-50)
  :realization (:VERB "rise"))

(define-category RISE23804
  :mixins (ASSUMING_POSITION-50)
  :realization (:VERB "rise"))

(define-category RISE23805
  :mixins (ASSUMING_POSITION-50)
  :realization (:VERB "rise"))

(define-category RISE23800
  :mixins (ASSUMING_POSITION-50)
  :realization (:VERB "rise"))

(define-category SIT23800
  :mixins (ASSUMING_POSITION-50)
  :realization (:VERB "sit"))

(define-category SLOUCH23801
  :mixins (ASSUMING_POSITION-50)
  :realization (:VERB "slouch"))

(define-category SLUMP23800
  :mixins (ASSUMING_POSITION-50)
  :realization (:VERB "slump"))

(define-category SLUMP23801
  :mixins (ASSUMING_POSITION-50)
  :realization (:VERB "slump"))

(define-category SPRAWL23800
  :mixins (ASSUMING_POSITION-50)
  :realization (:VERB "sprawl"))

(define-category SPRAWL23500
  :mixins (ASSUMING_POSITION-50)
  :realization (:VERB "sprawl"))

(define-category SQUAT23500
  :mixins (ASSUMING_POSITION-50)
  :realization (:VERB "squat"))

(define-category STAND24203
  :mixins (ASSUMING_POSITION-50)
  :realization (:VERB "stand"))

(define-category STOOP23804
  :mixins (ASSUMING_POSITION-50)
  :realization (:VERB "stoop"))

(define-category STOOP23800
  :mixins (ASSUMING_POSITION-50)
  :realization (:VERB "stoop"))

(define-category STRADDLE24201
  :mixins (ASSUMING_POSITION-50)
  :realization (:VERB "straddle"))

(define-category AMBUSH23300
  :mixins (ATTACK-60.1)
  :realization (:VERB "ambush"))

(define-category ASSAIL23300
  :mixins (ATTACK-60.1)
  :realization (:VERB "assail"))

(define-category ASSAULT23300
  :mixins (ATTACK-60.1)
  :realization (:VERB "assault"))

(define-category BOMB23300
  :mixins (ATTACK-60.1)
  :realization (:VERB "bomb"))

(define-category BOMB23300
  :mixins (ATTACK-60.1)
  :realization (:VERB "bomb"))

(define-category CHARGE23300
  :mixins (ATTACK-60.1)
  :realization (:VERB "charge"))

(define-category JUMP23300
  :mixins (ATTACK-60.1)
  :realization (:VERB "jump"))

(define-category LAY_INTO23500
  :mixins (ATTACK-60.1)
  :realization (:VERB "lay_into"))

(define-category SET_UPON23300
  :mixins (ATTACK-60.1)
  :realization (:VERB "set_upon"))

(define-category ATTEND24200
  :mixins (ATTEND-107.4-1)
  :realization (:VERB "attend"))

(define-category PATRONIZE23200
  :mixins (ATTEND-107.4-1)
  :realization (:VERB "patronize"))

(define-category GO24204
  :mixins (ATTEND-107.4-2)
  :realization (:VERB "go"))

(define-category BELONG24206
  :mixins (ATTEND-107.4-2)
  :realization (:VERB "belong"))

(define-category BELONG24207
  :mixins (ATTEND-107.4-2)
  :realization (:VERB "belong"))

(define-category BELONG24201
  :mixins (ATTEND-107.4-2)
  :realization (:VERB "belong"))

(define-category BELONG24202
  :mixins (ATTEND-107.4-2)
  :realization (:VERB "belong"))

(define-category AVOID23400
  :mixins (AVOID-52)
  :realization (:VERB "avoid"))

(define-category AVOID24103
  :mixins (AVOID-52)
  :realization (:VERB "avoid"))

(define-category AVOID24101
  :mixins (AVOID-52)
  :realization (:VERB "avoid"))

(define-category AVOID23200
  :mixins (AVOID-52)
  :realization (:VERB "avoid"))

(define-category CIRCUMVENT23200
  :mixins (AVOID-52)
  :realization (:VERB "circumvent"))

(define-category DODGE23200
  :mixins (AVOID-52)
  :realization (:VERB "dodge"))

(define-category DODGE23800
  :mixins (AVOID-52)
  :realization (:VERB "dodge"))

(define-category DUCK23200
  :mixins (AVOID-52)
  :realization (:VERB "duck"))

(define-category ELUDE23200
  :mixins (AVOID-52)
  :realization (:VERB "elude"))

(define-category ELUDE23800
  :mixins (AVOID-52)
  :realization (:VERB "elude"))

(define-category ESCHEW23200
  :mixins (AVOID-52)
  :realization (:VERB "eschew"))

(define-category EVADE23800
  :mixins (AVOID-52)
  :realization (:VERB "evade"))

(define-category EVADE23200
  :mixins (AVOID-52)
  :realization (:VERB "evade"))

(define-category SHUN23200
  :mixins (AVOID-52)
  :realization (:VERB "shun"))

(define-category SIDESTEP23200
  :mixins (AVOID-52)
  :realization (:VERB "sidestep"))

(define-category BANISH23800
  :mixins (BANISH-10.2)
  :realization (:VERB "banish"))

(define-category BANISH24100
  :mixins (BANISH-10.2)
  :realization (:VERB "banish"))

(define-category BANISH24102
  :mixins (BANISH-10.2)
  :realization (:VERB "banish"))

(define-category BANISH24101
  :mixins (BANISH-10.2)
  :realization (:VERB "banish"))

(define-category DEPORT24100
  :mixins (BANISH-10.2)
  :realization (:VERB "deport"))

(define-category DEPORT24101
  :mixins (BANISH-10.2)
  :realization (:VERB "deport"))

(define-category EVACUATE23800
  :mixins (BANISH-10.2)
  :realization (:VERB "evacuate"))

(define-category EVACUATE23801
  :mixins (BANISH-10.2)
  :realization (:VERB "evacuate"))

(define-category EXILE24100
  :mixins (BANISH-10.2)
  :realization (:VERB "exile"))

(define-category EXPEL24101
  :mixins (BANISH-10.2)
  :realization (:VERB "expel"))

(define-category EXPEL24100
  :mixins (BANISH-10.2)
  :realization (:VERB "expel"))

(define-category EXTRADITE24100
  :mixins (BANISH-10.2)
  :realization (:VERB "extradite"))

(define-category RECALL24000
  :mixins (BANISH-10.2)
  :realization (:VERB "recall"))

(define-category RECALL24100
  :mixins (BANISH-10.2)
  :realization (:VERB "recall"))

(define-category RECALL23202
  :mixins (BANISH-10.2)
  :realization (:VERB "recall"))

(define-category RECUSE23200
  :mixins (BANISH-10.2)
  :realization (:VERB "recuse"))

(define-category REMOVE23800
  :mixins (BANISH-10.2)
  :realization (:VERB "remove"))

(define-category REMOVE24102
  :mixins (BANISH-10.2)
  :realization (:VERB "remove"))

(define-category REMOVE24000
  :mixins (BANISH-10.2)
  :realization (:VERB "remove"))

(define-category REMOVE24100
  :mixins (BANISH-10.2)
  :realization (:VERB "remove"))

(define-category REMOVE23000
  :mixins (BANISH-10.2)
  :realization (:VERB "remove"))

(define-category SHANGHAI23500
  :mixins (BANISH-10.2)
  :realization (:VERB "shanghai"))

(define-category BOOT23500
  :mixins (BANISH-10.2)
  :realization (:VERB "boot"))

(define-category BASE23100
  :mixins (BASE-97.1)
  :realization (:VERB "base"))

(define-category ESTABLISH23103
  :mixins (BASE-97.1)
  :realization (:VERB "establish"))

(define-category GROUND23100
  :mixins (BASE-97.1)
  :realization (:VERB "ground"))

(define-category FOUND23100
  :mixins (BASE-97.1)
  :realization (:VERB "found"))

(define-category BUILD23103
  :mixins (BASE-97.1)
  :realization (:VERB "build"))

(define-category CONSTRUE23100
  :mixins (BASE-97.1)
  :realization (:VERB "construe"))

(define-category ARGUE23200
  :mixins (BATTLE-36.4)
  :realization (:VERB "argue"))

(define-category BARGAIN23200
  :mixins (BATTLE-36.4)
  :realization (:VERB "bargain"))

(define-category BICKER23200
  :mixins (BATTLE-36.4)
  :realization (:VERB "bicker"))

(define-category BRAWL23200
  :mixins (BATTLE-36.4)
  :realization (:VERB "brawl"))

(define-category CLASH23200
  :mixins (BATTLE-36.4)
  :realization (:VERB "clash"))

(define-category COLLIDE24200
  :mixins (BATTLE-36.4)
  :realization (:VERB "collide"))

(define-category COMPETE23300
  :mixins (BATTLE-36.4)
  :realization (:VERB "compete"))

(define-category CONTEND23201
  :mixins (BATTLE-36.4)
  :realization (:VERB "contend"))

(define-category DICKER24000
  :mixins (BATTLE-36.4)
  :realization (:VERB "dicker"))

(define-category DISPUTE23201
  :mixins (BATTLE-36.4)
  :realization (:VERB "dispute"))

(define-category FENCE23200
  :mixins (BATTLE-36.4)
  :realization (:VERB "fence"))

(define-category FEUD23300
  :mixins (BATTLE-36.4)
  :realization (:VERB "feud"))

(define-category JOUST23300
  :mixins (BATTLE-36.4)
  :realization (:VERB "joust"))

(define-category QUARREL23200
  :mixins (BATTLE-36.4)
  :realization (:VERB "quarrel"))

(define-category QUIBBLE23200
  :mixins (BATTLE-36.4)
  :realization (:VERB "quibble"))

(define-category SCRAP23200
  :mixins (BATTLE-36.4)
  :realization (:VERB "scrap"))

(define-category SCUFFLE23500
  :mixins (BATTLE-36.4)
  :realization (:VERB "scuffle"))

(define-category SKIRMISH23300
  :mixins (BATTLE-36.4)
  :realization (:VERB "skirmish"))

(define-category SPAR23200
  :mixins (BATTLE-36.4)
  :realization (:VERB "spar"))

(define-category SPAR23500
  :mixins (BATTLE-36.4)
  :realization (:VERB "spar"))

(define-category SPAR23501
  :mixins (BATTLE-36.4)
  :realization (:VERB "spar"))

(define-category SPAT23200
  :mixins (BATTLE-36.4)
  :realization (:VERB "spat"))

(define-category SQUABBLE23200
  :mixins (BATTLE-36.4)
  :realization (:VERB "squabble"))

(define-category STRUGGLE24100
  :mixins (BATTLE-36.4)
  :realization (:VERB "struggle"))

(define-category TILT23300
  :mixins (BATTLE-36.4)
  :realization (:VERB "tilt"))

(define-category TUSSLE23501
  :mixins (BATTLE-36.4)
  :realization (:VERB "tussle"))

(define-category VIE23300
  :mixins (BATTLE-36.4)
  :realization (:VERB "vie"))

(define-category WAR23300
  :mixins (BATTLE-36.4)
  :realization (:VERB "war"))

(define-category WRANGLE23200
  :mixins (BATTLE-36.4)
  :realization (:VERB "wrangle"))

(define-category BATTLE23300
  :mixins (BATTLE-36.4-1)
  :realization (:VERB "battle"))

(define-category BOX23501
  :mixins (BATTLE-36.4-1)
  :realization (:VERB "box"))

(define-category COMBAT23300
  :mixins (BATTLE-36.4-1)
  :realization (:VERB "combat"))

(define-category DEBATE23100
  :mixins (BATTLE-36.4-1)
  :realization (:VERB "debate"))

(define-category DUEL23300
  :mixins (BATTLE-36.4-1)
  :realization (:VERB "duel"))

(define-category FIGHT24100
  :mixins (BATTLE-36.4-1)
  :realization (:VERB "fight"))

(define-category WRESTLE23500
  :mixins (BATTLE-36.4-1)
  :realization (:VERB "wrestle"))

(define-category COME_OUT24200
  :mixins (BECOME-109.1)
  :realization (:VERB "come_out"))

(define-category GET23900
  :mixins (BECOME-109.1)
  :realization (:VERB "get"))

(define-category GET23001
  :mixins (BECOME-109.1)
  :realization (:VERB "get"))

(define-category GET23000
  :mixins (BECOME-109.1)
  :realization (:VERB "get"))

(define-category TURN23803
  :mixins (BECOME-109.1)
  :realization (:VERB "turn"))

(define-category TURN_UP24000
  :mixins (BECOME-109.1)
  :realization (:VERB "turn_up"))

(define-category COME23002
  :mixins (BECOME-109.1-1)
  :realization (:VERB "come"))

(define-category COME23001
  :mixins (BECOME-109.1-1)
  :realization (:VERB "come"))

(define-category FALL23008
  :mixins (BECOME-109.1-1)
  :realization (:VERB "fall"))

(define-category GO23004
  :mixins (BECOME-109.1-1)
  :realization (:VERB "go"))

(define-category GROW23003
  :mixins (BECOME-109.1-1)
  :realization (:VERB "grow"))

(define-category BECOME23000
  :mixins (BECOME-109.1-1-1)
  :realization (:VERB "become"))

(define-category END_UP23001
  :mixins (BECOME-109.1-1-1)
  :realization (:VERB "end_up"))

(define-category REQUEST23202
  :mixins (BEG-58.2)
  :realization (:VERB "request"))

(define-category REQUEST23201
  :mixins (BEG-58.2)
  :realization (:VERB "request"))

(define-category REQUEST23213
  :mixins (BEG-58.2)
  :realization (:VERB "request"))

(define-category IMPORTUNE23200
  :mixins (BEG-58.2)
  :realization (:VERB "importune"))

(define-category SUPPLICATE23202
  :mixins (BEG-58.2-1)
  :realization (:VERB "supplicate"))

(define-category SUPPLICATE23201
  :mixins (BEG-58.2-1)
  :realization (:VERB "supplicate"))

(define-category SUPPLICATE23200
  :mixins (BEG-58.2-1)
  :realization (:VERB "supplicate"))

(define-category BEG23201
  :mixins (BEG-58.2-1-1)
  :realization (:VERB "beg"))

(define-category BEG23200
  :mixins (BEG-58.2-1-1)
  :realization (:VERB "beg"))

(define-category GO_ON23800
  :mixins (BEGIN-55.1)
  :realization (:VERB "go_on"))

(define-category PROCEED23800
  :mixins (BEGIN-55.1)
  :realization (:VERB "proceed"))

(define-category SET_OUT23000
  :mixins (BEGIN-55.1)
  :realization (:VERB "set_out"))

(define-category BEGIN24100
  :mixins (BEGIN-55.1-1-1)
  :realization (:VERB "begin"))

(define-category BEGIN24104
  :mixins (BEGIN-55.1-1-1)
  :realization (:VERB "begin"))

(define-category BEGIN24204
  :mixins (BEGIN-55.1-1-1)
  :realization (:VERB "begin"))

(define-category BEGIN23001
  :mixins (BEGIN-55.1-1-1)
  :realization (:VERB "begin"))

(define-category BEGIN24200
  :mixins (BEGIN-55.1-1-1)
  :realization (:VERB "begin"))

(define-category BEGIN23000
  :mixins (BEGIN-55.1-1-1)
  :realization (:VERB "begin"))

(define-category START24104
  :mixins (BEGIN-55.1-1-1)
  :realization (:VERB "start"))

(define-category START24100
  :mixins (BEGIN-55.1-1-1)
  :realization (:VERB "start"))

(define-category START23800
  :mixins (BEGIN-55.1-1-1)
  :realization (:VERB "start"))

(define-category START23801
  :mixins (BEGIN-55.1-1-1)
  :realization (:VERB "start"))

(define-category START23802
  :mixins (BEGIN-55.1-1-1)
  :realization (:VERB "start"))

(define-category START23001
  :mixins (BEGIN-55.1-1-1)
  :realization (:VERB "start"))

(define-category START23000
  :mixins (BEGIN-55.1-1-1)
  :realization (:VERB "start"))

(define-category COMMENCE23001
  :mixins (BEGIN-55.1-1-1)
  :realization (:VERB "commence"))

(define-category COMMENCE23000
  :mixins (BEGIN-55.1-1-1)
  :realization (:VERB "commence"))

(define-category RECOMMENCE23000
  :mixins (BEGIN-55.1-1-1)
  :realization (:VERB "recommence"))

(define-category RECOMMENCE23001
  :mixins (BEGIN-55.1-1-1)
  :realization (:VERB "recommence"))

(define-category RESUME23001
  :mixins (BEGIN-55.1-1-1)
  :realization (:VERB "resume"))

(define-category RESUME23000
  :mixins (BEGIN-55.1-1-1)
  :realization (:VERB "resume"))

(define-category UNDERTAKE23600
  :mixins (BEGIN-55.1-1-1)
  :realization (:VERB "undertake"))

(define-category ATTIRE22900
  :mixins (BEING_DRESSED-41.3.3)
  :realization (:VERB "attire"))

(define-category GARB22900
  :mixins (BEING_DRESSED-41.3.3)
  :realization (:VERB "garb"))

(define-category OUTFIT24000
  :mixins (BEING_DRESSED-41.3.3)
  :realization (:VERB "outfit"))

(define-category ROBE22900
  :mixins (BEING_DRESSED-41.3.3)
  :realization (:VERB "robe"))

(define-category BEND23500
  :mixins (BEND-45.2)
  :realization (:VERB "bend"))

(define-category BEND23800
  :mixins (BEND-45.2)
  :realization (:VERB "bend"))

(define-category CREASE23010
  :mixins (BEND-45.2)
  :realization (:VERB "crease"))

(define-category CREASE23501
  :mixins (BEND-45.2)
  :realization (:VERB "crease"))

(define-category CREASE23500
  :mixins (BEND-45.2)
  :realization (:VERB "crease"))

(define-category CRINKLE23010
  :mixins (BEND-45.2)
  :realization (:VERB "crinkle"))

(define-category CRINKLE23500
  :mixins (BEND-45.2)
  :realization (:VERB "crinkle"))

(define-category CRUMPLE23010
  :mixins (BEND-45.2)
  :realization (:VERB "crumple"))

(define-category CRUMPLE23500
  :mixins (BEND-45.2)
  :realization (:VERB "crumple"))

(define-category FLEX23502
  :mixins (BEND-45.2)
  :realization (:VERB "flex"))

(define-category FLEX23800
  :mixins (BEND-45.2)
  :realization (:VERB "flex"))

(define-category FOLD23010
  :mixins (BEND-45.2)
  :realization (:VERB "fold"))

(define-category FOLD23500
  :mixins (BEND-45.2)
  :realization (:VERB "fold"))

(define-category HYPEREXTEND22900
  :mixins (BEND-45.2)
  :realization (:VERB "hyperextend"))

(define-category RUMPLE23010
  :mixins (BEND-45.2)
  :realization (:VERB "rumple"))

(define-category RUMPLE23501
  :mixins (BEND-45.2)
  :realization (:VERB "rumple"))

(define-category WRINKLE23010
  :mixins (BEND-45.2)
  :realization (:VERB "wrinkle"))

(define-category WRINKLE23502
  :mixins (BEND-45.2)
  :realization (:VERB "wrinkle"))

(define-category WRINKLE23500
  :mixins (BEND-45.2)
  :realization (:VERB "wrinkle"))

(define-category WRINKLE23501
  :mixins (BEND-45.2)
  :realization (:VERB "wrinkle"))

(define-category UNBEND23000
  :mixins (BEND-45.2)
  :realization (:VERB "unbend"))

(define-category UNBEND23500
  :mixins (BEND-45.2)
  :realization (:VERB "unbend"))

(define-category UNBEND23800
  :mixins (BEND-45.2)
  :realization (:VERB "unbend"))

(define-category BENEFIT24001
  :mixins (BENEFIT-72.2)
  :realization (:VERB "benefit"))

(define-category BENEFIT24000
  :mixins (BENEFIT-72.2)
  :realization (:VERB "benefit"))

(define-category PROFIT24002
  :mixins (BENEFIT-72.2)
  :realization (:VERB "profit"))

(define-category PROFIT24000
  :mixins (BENEFIT-72.2)
  :realization (:VERB "profit"))

(define-category ANTIQUE24000
  :mixins (BERRY-13.7)
  :realization (:VERB "antique"))

(define-category BERRY23500
  :mixins (BERRY-13.7)
  :realization (:VERB "berry"))

(define-category BIRDNEST23500
  :mixins (BERRY-13.7)
  :realization (:VERB "birdnest"))

(define-category BLACKBERRY23500
  :mixins (BERRY-13.7)
  :realization (:VERB "blackberry"))

(define-category CLAM23500
  :mixins (BERRY-13.7)
  :realization (:VERB "clam"))

(define-category CRAB23300
  :mixins (BERRY-13.7)
  :realization (:VERB "crab"))

(define-category FISH23300
  :mixins (BERRY-13.7)
  :realization (:VERB "fish"))

(define-category FOWL23300
  :mixins (BERRY-13.7)
  :realization (:VERB "fowl"))

(define-category FOWL23301
  :mixins (BERRY-13.7)
  :realization (:VERB "fowl"))

(define-category GROUSE23300
  :mixins (BERRY-13.7)
  :realization (:VERB "grouse"))

(define-category LOG23500
  :mixins (BERRY-13.7)
  :realization (:VERB "log"))

(define-category MUSHROOM23500
  :mixins (BERRY-13.7)
  :realization (:VERB "mushroom"))

(define-category NEST23501
  :mixins (BERRY-13.7)
  :realization (:VERB "nest"))

(define-category NUT23500
  :mixins (BERRY-13.7)
  :realization (:VERB "nut"))

(define-category OYSTER23500
  :mixins (BERRY-13.7)
  :realization (:VERB "oyster"))

(define-category PEARL23500
  :mixins (BERRY-13.7)
  :realization (:VERB "pearl"))

(define-category PRAWN23500
  :mixins (BERRY-13.7)
  :realization (:VERB "prawn"))

(define-category RABBIT23300
  :mixins (BERRY-13.7)
  :realization (:VERB "rabbit"))

(define-category SCOLLOP23300
  :mixins (BERRY-13.7)
  :realization (:VERB "scollop"))

(define-category SEAL23300
  :mixins (BERRY-13.7)
  :realization (:VERB "seal"))

(define-category SHARK23300
  :mixins (BERRY-13.7)
  :realization (:VERB "shark"))

(define-category SHRIMP23300
  :mixins (BERRY-13.7)
  :realization (:VERB "shrimp"))

(define-category SNAIL23500
  :mixins (BERRY-13.7)
  :realization (:VERB "snail"))

(define-category SNIPE23301
  :mixins (BERRY-13.7)
  :realization (:VERB "snipe"))

(define-category SPONGE23503
  :mixins (BERRY-13.7)
  :realization (:VERB "sponge"))

(define-category WHALE23300
  :mixins (BERRY-13.7)
  :realization (:VERB "whale"))

(define-category WHELK23300
  :mixins (BERRY-13.7)
  :realization (:VERB "whelk"))

(define-category WHORE23500
  :mixins (BERRY-13.7)
  :realization (:VERB "whore"))

(define-category HAWK23300
  :mixins (BERRY-13.7)
  :realization (:VERB "hawk"))

(define-category AMERCE24101
  :mixins (BILL-54.5)
  :realization (:VERB "amerce"))

(define-category BET23300
  :mixins (BILL-54.5)
  :realization (:VERB "bet"))

(define-category BILL24000
  :mixins (BILL-54.5)
  :realization (:VERB "bill"))

(define-category CHARGE23112
  :mixins (BILL-54.5)
  :realization (:VERB "charge"))

(define-category CHARGE24002
  :mixins (BILL-54.5)
  :realization (:VERB "charge"))

(define-category FINE24100
  :mixins (BILL-54.5)
  :realization (:VERB "fine"))

(define-category INVOICE24000
  :mixins (BILL-54.5)
  :realization (:VERB "invoice"))

(define-category MULCT24000
  :mixins (BILL-54.5)
  :realization (:VERB "mulct"))

(define-category MULCT24100
  :mixins (BILL-54.5)
  :realization (:VERB "mulct"))

(define-category OVERCHARGE24000
  :mixins (BILL-54.5)
  :realization (:VERB "overcharge"))

(define-category SAVE23000
  :mixins (BILL-54.5)
  :realization (:VERB "save"))

(define-category SAVE24002
  :mixins (BILL-54.5)
  :realization (:VERB "save"))

(define-category SCRIMP24000
  :mixins (BILL-54.5)
  :realization (:VERB "scrimp"))

(define-category SPARE24101
  :mixins (BILL-54.5)
  :realization (:VERB "spare"))

(define-category TAX24000
  :mixins (BILL-54.5)
  :realization (:VERB "tax"))

(define-category TIP24000
  :mixins (BILL-54.5)
  :realization (:VERB "tip"))

(define-category UNDERCHARGE24000
  :mixins (BILL-54.5)
  :realization (:VERB "undercharge"))

(define-category WAGER23300
  :mixins (BILL-54.5)
  :realization (:VERB "wager"))

(define-category REPRODUCE22900
  :mixins (BIRTH-28.2)
  :realization (:VERB "reproduce"))

(define-category MULTIPLY22900
  :mixins (BIRTH-28.2)
  :realization (:VERB "multiply"))

(define-category PROCREATE22900
  :mixins (BIRTH-28.2)
  :realization (:VERB "procreate"))

(define-category BEAR24214
  :mixins (BIRTH-28.2-1)
  :realization (:VERB "bear"))

(define-category BEAR22901
  :mixins (BIRTH-28.2-1)
  :realization (:VERB "bear"))

(define-category BEGET22900
  :mixins (BIRTH-28.2-1)
  :realization (:VERB "beget"))

(define-category BIRTH22900
  :mixins (BIRTH-28.2-1)
  :realization (:VERB "birth"))

(define-category BRING_FORTH23601
  :mixins (BIRTH-28.2-1)
  :realization (:VERB "bring_forth"))

(define-category DELIVER22901
  :mixins (BIRTH-28.2-1)
  :realization (:VERB "deliver"))

(define-category FATHER22900
  :mixins (BIRTH-28.2-1)
  :realization (:VERB "father"))

(define-category GENERATE22900
  :mixins (BIRTH-28.2-1)
  :realization (:VERB "generate"))

(define-category GET22908
  :mixins (BIRTH-28.2-1)
  :realization (:VERB "get"))

(define-category HAVE22900
  :mixins (BIRTH-28.2-1)
  :realization (:VERB "have"))

(define-category MOTHER22900
  :mixins (BIRTH-28.2-1)
  :realization (:VERB "mother"))

(define-category SIRE22900
  :mixins (BIRTH-28.2-1)
  :realization (:VERB "sire"))

(define-category SPAWN22900
  :mixins (BIRTH-28.2-1)
  :realization (:VERB "spawn"))

(define-category BUCK23800
  :mixins (BODY_INTERNAL_MOTION-49.1)
  :realization (:VERB "buck"))

(define-category FIDGET23800
  :mixins (BODY_INTERNAL_MOTION-49.1)
  :realization (:VERB "fidget"))

(define-category FLAP23802
  :mixins (BODY_INTERNAL_MOTION-49.1)
  :realization (:VERB "flap"))

(define-category FLAP23803
  :mixins (BODY_INTERNAL_MOTION-49.1)
  :realization (:VERB "flap"))

(define-category GYRATE23801
  :mixins (BODY_INTERNAL_MOTION-49.1)
  :realization (:VERB "gyrate"))

(define-category GYRATE23800
  :mixins (BODY_INTERNAL_MOTION-49.1)
  :realization (:VERB "gyrate"))

(define-category KICK23508
  :mixins (BODY_INTERNAL_MOTION-49.1)
  :realization (:VERB "kick"))

(define-category KICK23800
  :mixins (BODY_INTERNAL_MOTION-49.1)
  :realization (:VERB "kick"))

(define-category ROCK23800
  :mixins (BODY_INTERNAL_MOTION-49.1)
  :realization (:VERB "rock"))

(define-category SQUIRM23800
  :mixins (BODY_INTERNAL_MOTION-49.1)
  :realization (:VERB "squirm"))

(define-category SWAY23806
  :mixins (BODY_INTERNAL_MOTION-49.1)
  :realization (:VERB "sway"))

(define-category SWAY23801
  :mixins (BODY_INTERNAL_MOTION-49.1)
  :realization (:VERB "sway"))

(define-category SWAY23800
  :mixins (BODY_INTERNAL_MOTION-49.1)
  :realization (:VERB "sway"))

(define-category TEETER23800
  :mixins (BODY_INTERNAL_MOTION-49.1)
  :realization (:VERB "teeter"))

(define-category TOTTER23800
  :mixins (BODY_INTERNAL_MOTION-49.1)
  :realization (:VERB "totter"))

(define-category TOTTER23801
  :mixins (BODY_INTERNAL_MOTION-49.1)
  :realization (:VERB "totter"))

(define-category TOTTER23802
  :mixins (BODY_INTERNAL_MOTION-49.1)
  :realization (:VERB "totter"))

(define-category TWITCH23502
  :mixins (BODY_INTERNAL_MOTION-49.1)
  :realization (:VERB "twitch"))

(define-category TWITCH23801
  :mixins (BODY_INTERNAL_MOTION-49.1)
  :realization (:VERB "twitch"))

(define-category TWITCH22900
  :mixins (BODY_INTERNAL_MOTION-49.1)
  :realization (:VERB "twitch"))

(define-category WAGGLE23801
  :mixins (BODY_INTERNAL_MOTION-49.1)
  :realization (:VERB "waggle"))

(define-category WAGGLE23800
  :mixins (BODY_INTERNAL_MOTION-49.1)
  :realization (:VERB "waggle"))

(define-category WIGGLE23800
  :mixins (BODY_INTERNAL_MOTION-49.1)
  :realization (:VERB "wiggle"))

(define-category WOBBLE23802
  :mixins (BODY_INTERNAL_MOTION-49.1)
  :realization (:VERB "wobble"))

(define-category WOBBLE23800
  :mixins (BODY_INTERNAL_MOTION-49.1)
  :realization (:VERB "wobble"))

(define-category WRIGGLE23800
  :mixins (BODY_INTERNAL_MOTION-49.1)
  :realization (:VERB "wriggle"))

(define-category CONVULSE23500
  :mixins (BODY_INTERNAL_STATES-40.6)
  :realization (:VERB "convulse"))

(define-category CONVULSE23800
  :mixins (BODY_INTERNAL_STATES-40.6)
  :realization (:VERB "convulse"))

(define-category COWER23801
  :mixins (BODY_INTERNAL_STATES-40.6)
  :realization (:VERB "cower"))

(define-category QUAKE23801
  :mixins (BODY_INTERNAL_STATES-40.6)
  :realization (:VERB "quake"))

(define-category QUIVER23800
  :mixins (BODY_INTERNAL_STATES-40.6)
  :realization (:VERB "quiver"))

(define-category SHAKE22900
  :mixins (BODY_INTERNAL_STATES-40.6)
  :realization (:VERB "shake"))

(define-category SHAKE23800
  :mixins (BODY_INTERNAL_STATES-40.6)
  :realization (:VERB "shake"))

(define-category SHIVER22900
  :mixins (BODY_INTERNAL_STATES-40.6)
  :realization (:VERB "shiver"))

(define-category SHIVER23800
  :mixins (BODY_INTERNAL_STATES-40.6)
  :realization (:VERB "shiver"))

(define-category SHUDDER23800
  :mixins (BODY_INTERNAL_STATES-40.6)
  :realization (:VERB "shudder"))

(define-category SHUDDER22900
  :mixins (BODY_INTERNAL_STATES-40.6)
  :realization (:VERB "shudder"))

(define-category TREMBLE23800
  :mixins (BODY_INTERNAL_STATES-40.6)
  :realization (:VERB "tremble"))

(define-category WRITHE23800
  :mixins (BODY_INTERNAL_STATES-40.6)
  :realization (:VERB "writhe"))

(define-category BOB22900
  :mixins (BRAID-41.2.2)
  :realization (:VERB "bob"))

(define-category BRAID23500
  :mixins (BRAID-41.2.2)
  :realization (:VERB "braid"))

(define-category BRUSH23502
  :mixins (BRAID-41.2.2)
  :realization (:VERB "brush"))

(define-category CLIP23503
  :mixins (BRAID-41.2.2)
  :realization (:VERB "clip"))

(define-category COMB22900
  :mixins (BRAID-41.2.2)
  :realization (:VERB "comb"))

(define-category COMB23501
  :mixins (BRAID-41.2.2)
  :realization (:VERB "comb"))

(define-category CONDITION22900
  :mixins (BRAID-41.2.2)
  :realization (:VERB "condition"))

(define-category CRIMP23500
  :mixins (BRAID-41.2.2)
  :realization (:VERB "crimp"))

(define-category CROP23502
  :mixins (BRAID-41.2.2)
  :realization (:VERB "crop"))

(define-category CURL23500
  :mixins (BRAID-41.2.2)
  :realization (:VERB "curl"))

(define-category CUT23014
  :mixins (BRAID-41.2.2)
  :realization (:VERB "cut"))

(define-category DYE23000
  :mixins (BRAID-41.2.2)
  :realization (:VERB "dye"))

(define-category FILE23500
  :mixins (BRAID-41.2.2)
  :realization (:VERB "file"))

(define-category HENNA23000
  :mixins (BRAID-41.2.2)
  :realization (:VERB "henna"))

(define-category LATHER22900
  :mixins (BRAID-41.2.2)
  :realization (:VERB "lather"))

(define-category LATHER23000
  :mixins (BRAID-41.2.2)
  :realization (:VERB "lather"))

(define-category MANICURE22900
  :mixins (BRAID-41.2.2)
  :realization (:VERB "manicure"))

(define-category MANICURE22901
  :mixins (BRAID-41.2.2)
  :realization (:VERB "manicure"))

(define-category PERM22900
  :mixins (BRAID-41.2.2)
  :realization (:VERB "perm"))

(define-category PLAIT23500
  :mixins (BRAID-41.2.2)
  :realization (:VERB "plait"))

(define-category PLUCK23500
  :mixins (BRAID-41.2.2)
  :realization (:VERB "pluck"))

(define-category POWDER22900
  :mixins (BRAID-41.2.2)
  :realization (:VERB "powder"))

(define-category RINSE22900
  :mixins (BRAID-41.2.2)
  :realization (:VERB "rinse"))

(define-category RINSE23502
  :mixins (BRAID-41.2.2)
  :realization (:VERB "rinse"))

(define-category RINSE23500
  :mixins (BRAID-41.2.2)
  :realization (:VERB "rinse"))

(define-category ROUGE22900
  :mixins (BRAID-41.2.2)
  :realization (:VERB "rouge"))

(define-category SET22905
  :mixins (BRAID-41.2.2)
  :realization (:VERB "set"))

(define-category SHAMPOO22900
  :mixins (BRAID-41.2.2)
  :realization (:VERB "shampoo"))

(define-category SOAP22900
  :mixins (BRAID-41.2.2)
  :realization (:VERB "soap"))

(define-category TALC22900
  :mixins (BRAID-41.2.2)
  :realization (:VERB "talc"))

(define-category TEASE22900
  :mixins (BRAID-41.2.2)
  :realization (:VERB "tease"))

(define-category TOWEL23500
  :mixins (BRAID-41.2.2)
  :realization (:VERB "towel"))

(define-category TRIM23600
  :mixins (BRAID-41.2.2)
  :realization (:VERB "trim"))

(define-category TRIM23601
  :mixins (BRAID-41.2.2)
  :realization (:VERB "trim"))

(define-category TRIM23503
  :mixins (BRAID-41.2.2)
  :realization (:VERB "trim"))

(define-category TWEEZE23500
  :mixins (BRAID-41.2.2)
  :realization (:VERB "tweeze"))

(define-category WAVE22900
  :mixins (BRAID-41.2.2)
  :realization (:VERB "wave"))

(define-category WAVE23501
  :mixins (BRAID-41.2.2)
  :realization (:VERB "wave"))

(define-category BREAK22904
  :mixins (BREAK-45.1)
  :realization (:VERB "break"))

(define-category BREAK23015
  :mixins (BREAK-45.1)
  :realization (:VERB "break"))

(define-category BREAK23505
  :mixins (BREAK-45.1)
  :realization (:VERB "break"))

(define-category BREAK23811
  :mixins (BREAK-45.1)
  :realization (:VERB "break"))

(define-category BREAK23005
  :mixins (BREAK-45.1)
  :realization (:VERB "break"))

(define-category BREAK23010
  :mixins (BREAK-45.1)
  :realization (:VERB "break"))

(define-category BREAK23000
  :mixins (BREAK-45.1)
  :realization (:VERB "break"))

(define-category CHIP23500
  :mixins (BREAK-45.1)
  :realization (:VERB "chip"))

(define-category CHIP23503
  :mixins (BREAK-45.1)
  :realization (:VERB "chip"))

(define-category CHIP23501
  :mixins (BREAK-45.1)
  :realization (:VERB "chip"))

(define-category CRACK23005
  :mixins (BREAK-45.1)
  :realization (:VERB "crack"))

(define-category CRACK23000
  :mixins (BREAK-45.1)
  :realization (:VERB "crack"))

(define-category CRACK23002
  :mixins (BREAK-45.1)
  :realization (:VERB "crack"))

(define-category CRACK23001
  :mixins (BREAK-45.1)
  :realization (:VERB "crack"))

(define-category CRASH23502
  :mixins (BREAK-45.1)
  :realization (:VERB "crash"))

(define-category CRASH23501
  :mixins (BREAK-45.1)
  :realization (:VERB "crash"))

(define-category CRASH23500
  :mixins (BREAK-45.1)
  :realization (:VERB "crash"))

(define-category CRASH23802
  :mixins (BREAK-45.1)
  :realization (:VERB "crash"))

(define-category CRUSH23008
  :mixins (BREAK-45.1)
  :realization (:VERB "crush"))

(define-category CRUSH23501
  :mixins (BREAK-45.1)
  :realization (:VERB "crush"))

(define-category CRUSH23000
  :mixins (BREAK-45.1)
  :realization (:VERB "crush"))

(define-category CRUSH23500
  :mixins (BREAK-45.1)
  :realization (:VERB "crush"))

(define-category FISSURE23000
  :mixins (BREAK-45.1)
  :realization (:VERB "fissure"))

(define-category FRACTURE22900
  :mixins (BREAK-45.1)
  :realization (:VERB "fracture"))

(define-category FRACTURE22901
  :mixins (BREAK-45.1)
  :realization (:VERB "fracture"))

(define-category FRACTURE22902
  :mixins (BREAK-45.1)
  :realization (:VERB "fracture"))

(define-category FRACTURE23010
  :mixins (BREAK-45.1)
  :realization (:VERB "fracture"))

(define-category RIP23500
  :mixins (BREAK-45.1)
  :realization (:VERB "rip"))

(define-category SHATTER23001
  :mixins (BREAK-45.1)
  :realization (:VERB "shatter"))

(define-category SHATTER23000
  :mixins (BREAK-45.1)
  :realization (:VERB "shatter"))

(define-category SMASH23508
  :mixins (BREAK-45.1)
  :realization (:VERB "smash"))

(define-category SMASH23000
  :mixins (BREAK-45.1)
  :realization (:VERB "smash"))

(define-category SNAP23000
  :mixins (BREAK-45.1)
  :realization (:VERB "snap"))

(define-category SNAP23501
  :mixins (BREAK-45.1)
  :realization (:VERB "snap"))

(define-category SPLINTER23000
  :mixins (BREAK-45.1)
  :realization (:VERB "splinter"))

(define-category SPLINTER24101
  :mixins (BREAK-45.1)
  :realization (:VERB "splinter"))

(define-category SPLIT23001
  :mixins (BREAK-45.1)
  :realization (:VERB "split"))

(define-category SPLIT23500
  :mixins (BREAK-45.1)
  :realization (:VERB "split"))

(define-category TEAR23501
  :mixins (BREAK-45.1)
  :realization (:VERB "tear"))

(define-category TEAR23500
  :mixins (BREAK-45.1)
  :realization (:VERB "tear"))

(define-category FALL_APART23003
  :mixins (BREAK_DOWN-45.8)
  :realization (:VERB "fall_apart"))

(define-category FALL_APART23500
  :mixins (BREAK_DOWN-45.8)
  :realization (:VERB "fall_apart"))

(define-category FALL_APART23700
  :mixins (BREAK_DOWN-45.8)
  :realization (:VERB "fall_apart"))

(define-category BLEED22900
  :mixins (BREATHE-40.1.2)
  :realization (:VERB "bleed"))

(define-category DRIBBLE22900
  :mixins (BREATHE-40.1.2)
  :realization (:VERB "dribble"))

(define-category DROOL22900
  :mixins (BREATHE-40.1.2)
  :realization (:VERB "drool"))

(define-category PUKE22900
  :mixins (BREATHE-40.1.2)
  :realization (:VERB "puke"))

(define-category SPIT22900
  :mixins (BREATHE-40.1.2)
  :realization (:VERB "spit"))

(define-category SWEAT22900
  :mixins (BREATHE-40.1.2)
  :realization (:VERB "sweat"))

(define-category VOMIT22900
  :mixins (BREATHE-40.1.2)
  :realization (:VERB "vomit"))

(define-category WEEP22900
  :mixins (BREATHE-40.1.2)
  :realization (:VERB "weep"))

(define-category BREATHE23200
  :mixins (BREATHE-40.1.2-1)
  :realization (:VERB "breathe"))

(define-category BREATHE22900
  :mixins (BREATHE-40.1.2-1)
  :realization (:VERB "breathe"))

(define-category COUGH22900
  :mixins (BREATHE-40.1.2-1)
  :realization (:VERB "cough"))

(define-category CRY22902
  :mixins (BREATHE-40.1.2-1)
  :realization (:VERB "cry"))

(define-category CRY23201
  :mixins (BREATHE-40.1.2-1)
  :realization (:VERB "cry"))

(define-category EXPECTORATE22900
  :mixins (BREATHE-40.1.2-1)
  :realization (:VERB "expectorate"))

(define-category RETCH22900
  :mixins (BREATHE-40.1.2-1)
  :realization (:VERB "retch"))

(define-category URINATE22901
  :mixins (BREATHE-40.1.2-1)
  :realization (:VERB "urinate"))

(define-category HAWK22901
  :mixins (BREATHE-40.1.2-1)
  :realization (:VERB "hawk"))

(define-category TAKE24210
  :mixins (BRING-11.3)
  :realization (:VERB "take"))

(define-category TAKE23810
  :mixins (BRING-11.3)
  :realization (:VERB "take"))

(define-category TAKE23809
  :mixins (BRING-11.3)
  :realization (:VERB "take"))

(define-category BRING23502
  :mixins (BRING-11.3-1)
  :realization (:VERB "bring"))

(define-category BRING23500
  :mixins (BRING-11.3-1)
  :realization (:VERB "bring"))

(define-category BRING23800
  :mixins (BRING-11.3-1)
  :realization (:VERB "bring"))

(define-category ARRANGE23600
  :mixins (BUILD-26.1)
  :realization (:VERB "arrange"))

(define-category ARRANGE22900
  :mixins (BUILD-26.1)
  :realization (:VERB "arrange"))

(define-category ARRANGE23500
  :mixins (BUILD-26.1)
  :realization (:VERB "arrange"))

(define-category ASSEMBLE23600
  :mixins (BUILD-26.1)
  :realization (:VERB "assemble"))

(define-category BAKE23600
  :mixins (BUILD-26.1)
  :realization (:VERB "bake"))

(define-category BEAD23500
  :mixins (BUILD-26.1)
  :realization (:VERB "bead"))

(define-category BEAD23600
  :mixins (BUILD-26.1)
  :realization (:VERB "bead"))

(define-category BLOW23008
  :mixins (BUILD-26.1)
  :realization (:VERB "blow"))

(define-category CAST23600
  :mixins (BUILD-26.1)
  :realization (:VERB "cast"))

(define-category CHISEL23500
  :mixins (BUILD-26.1)
  :realization (:VERB "chisel"))

(define-category CHURN23500
  :mixins (BUILD-26.1)
  :realization (:VERB "churn"))

(define-category COMPILE23600
  :mixins (BUILD-26.1)
  :realization (:VERB "compile"))

(define-category COOK23003
  :mixins (BUILD-26.1)
  :realization (:VERB "cook"))

(define-category COOK23000
  :mixins (BUILD-26.1)
  :realization (:VERB "cook"))

(define-category COOK23600
  :mixins (BUILD-26.1)
  :realization (:VERB "cook"))

(define-category COOK23601
  :mixins (BUILD-26.1)
  :realization (:VERB "cook"))

(define-category CROCHET23601
  :mixins (BUILD-26.1)
  :realization (:VERB "crochet"))

(define-category DEVELOP23900
  :mixins (BUILD-26.1)
  :realization (:VERB "develop"))

(define-category DEVELOP23001
  :mixins (BUILD-26.1)
  :realization (:VERB "develop"))

(define-category DEVELOP23601
  :mixins (BUILD-26.1)
  :realization (:VERB "develop"))

(define-category EMBROIDER23600
  :mixins (BUILD-26.1)
  :realization (:VERB "embroider"))

(define-category FASHION23600
  :mixins (BUILD-26.1)
  :realization (:VERB "fashion"))

(define-category FOLD23500
  :mixins (BUILD-26.1)
  :realization (:VERB "fold"))

(define-category FORGE23602
  :mixins (BUILD-26.1)
  :realization (:VERB "forge"))

(define-category FORGE23603
  :mixins (BUILD-26.1)
  :realization (:VERB "forge"))

(define-category FORGE23600
  :mixins (BUILD-26.1)
  :realization (:VERB "forge"))

(define-category GROW23600
  :mixins (BUILD-26.1)
  :realization (:VERB "grow"))

(define-category GROW23001
  :mixins (BUILD-26.1)
  :realization (:VERB "grow"))

(define-category HACK23502
  :mixins (BUILD-26.1)
  :realization (:VERB "hack"))

(define-category HAMMER23600
  :mixins (BUILD-26.1)
  :realization (:VERB "hammer"))

(define-category KNIT23600
  :mixins (BUILD-26.1)
  :realization (:VERB "knit"))

(define-category MOLD23601
  :mixins (BUILD-26.1)
  :realization (:VERB "mold"))

(define-category MOLD23600
  :mixins (BUILD-26.1)
  :realization (:VERB "mold"))

(define-category MOLD23602
  :mixins (BUILD-26.1)
  :realization (:VERB "mold"))

(define-category REASSEMBLE23600
  :mixins (BUILD-26.1)
  :realization (:VERB "reassemble"))

(define-category REFASHION23601
  :mixins (BUILD-26.1)
  :realization (:VERB "refashion"))

(define-category ROLL23010
  :mixins (BUILD-26.1)
  :realization (:VERB "roll"))

(define-category SEW23600
  :mixins (BUILD-26.1)
  :realization (:VERB "sew"))

(define-category SPIN23500
  :mixins (BUILD-26.1)
  :realization (:VERB "spin"))

(define-category SPIN23600
  :mixins (BUILD-26.1)
  :realization (:VERB "spin"))

(define-category STITCH23500
  :mixins (BUILD-26.1)
  :realization (:VERB "stitch"))

(define-category WEAVE23600
  :mixins (BUILD-26.1)
  :realization (:VERB "weave"))

(define-category WHITTLE23500
  :mixins (BUILD-26.1)
  :realization (:VERB "whittle"))

(define-category BUILD23600
  :mixins (BUILD-26.1-1)
  :realization (:VERB "build"))

(define-category CARVE23501
  :mixins (BUILD-26.1-1)
  :realization (:VERB "carve"))

(define-category CUT23611
  :mixins (BUILD-26.1-1)
  :realization (:VERB "cut"))

(define-category CUT23600
  :mixins (BUILD-26.1-1)
  :realization (:VERB "cut"))

(define-category MAKE23610
  :mixins (BUILD-26.1-1)
  :realization (:VERB "make"))

(define-category MAKE24213
  :mixins (BUILD-26.1-1)
  :realization (:VERB "make"))

(define-category MAKE24209
  :mixins (BUILD-26.1-1)
  :realization (:VERB "make"))

(define-category MAKE23607
  :mixins (BUILD-26.1-1)
  :realization (:VERB "make"))

(define-category MAKE23613
  :mixins (BUILD-26.1-1)
  :realization (:VERB "make"))

(define-category MAKE24205
  :mixins (BUILD-26.1-1)
  :realization (:VERB "make"))

(define-category MAKE23605
  :mixins (BUILD-26.1-1)
  :realization (:VERB "make"))

(define-category MAKE23601
  :mixins (BUILD-26.1-1)
  :realization (:VERB "make"))

(define-category REMAKE23600
  :mixins (BUILD-26.1-1)
  :realization (:VERB "remake"))

(define-category SCULPT23500
  :mixins (BUILD-26.1-1)
  :realization (:VERB "sculpt"))

(define-category SCULPT23600
  :mixins (BUILD-26.1-1)
  :realization (:VERB "sculpt"))

(define-category SHAPE23000
  :mixins (BUILD-26.1-1)
  :realization (:VERB "shape"))

(define-category SHAPE23600
  :mixins (BUILD-26.1-1)
  :realization (:VERB "shape"))

(define-category BRISTLE24200
  :mixins (BULGE-47.5.3)
  :realization (:VERB "bristle"))

(define-category BULGE23800
  :mixins (BULGE-47.5.3)
  :realization (:VERB "bulge"))

(define-category BULGE23000
  :mixins (BULGE-47.5.3)
  :realization (:VERB "bulge"))

(define-category HYPERVENTILATE22901
  :mixins (BULGE-47.5.3)
  :realization (:VERB "hyperventilate"))

(define-category HYPERVENTILATE22900
  :mixins (BULGE-47.5.3)
  :realization (:VERB "hyperventilate"))

(define-category SEETHE24200
  :mixins (BULGE-47.5.3)
  :realization (:VERB "seethe"))

(define-category ANNOY23700
  :mixins (BULLY-59.5)
  :realization (:VERB "annoy"))

(define-category BADGER23200
  :mixins (BULLY-59.5)
  :realization (:VERB "badger"))

(define-category BULLY23200
  :mixins (BULLY-59.5)
  :realization (:VERB "bully"))

(define-category FRIGHTEN23700
  :mixins (BULLY-59.5)
  :realization (:VERB "frighten"))

(define-category HARASS23300
  :mixins (BULLY-59.5)
  :realization (:VERB "harass"))

(define-category HARASS23700
  :mixins (BULLY-59.5)
  :realization (:VERB "harass"))

(define-category HARRY23700
  :mixins (BULLY-59.5)
  :realization (:VERB "harry"))

(define-category HUSTLE23200
  :mixins (BULLY-59.5)
  :realization (:VERB "hustle"))

(define-category PANIC23701
  :mixins (BULLY-59.5)
  :realization (:VERB "panic"))

(define-category SHAME24101
  :mixins (BULLY-59.5)
  :realization (:VERB "shame"))

(define-category SHOCK23701
  :mixins (BULLY-59.5)
  :realization (:VERB "shock"))

(define-category TEASE23200
  :mixins (BULLY-59.5)
  :realization (:VERB "tease"))

(define-category TEASE23700
  :mixins (BULLY-59.5)
  :realization (:VERB "tease"))

(define-category TERRIFY23700
  :mixins (BULLY-59.5)
  :realization (:VERB "terrify"))

(define-category HIT23501
  :mixins (BUMP-18.4)
  :realization (:VERB "hit"))

(define-category RUN23813
  :mixins (BUMP-18.4)
  :realization (:VERB "run"))

(define-category RUN24203
  :mixins (BUMP-18.4)
  :realization (:VERB "run"))

(define-category BANG23500
  :mixins (BUMP-18.4-1)
  :realization (:VERB "bang"))

(define-category BASH23500
  :mixins (BUMP-18.4-1)
  :realization (:VERB "bash"))

(define-category BRUSH23500
  :mixins (BUMP-18.4-1)
  :realization (:VERB "brush"))

(define-category BUMP23500
  :mixins (BUMP-18.4-1)
  :realization (:VERB "bump"))

(define-category BUTT23500
  :mixins (BUMP-18.4-1)
  :realization (:VERB "butt"))

(define-category CLASH23500
  :mixins (BUMP-18.4-1)
  :realization (:VERB "clash"))

(define-category COLLIDE23500
  :mixins (BUMP-18.4-1)
  :realization (:VERB "collide"))

(define-category COLLIDE23501
  :mixins (BUMP-18.4-1)
  :realization (:VERB "collide"))

(define-category CRACK23500
  :mixins (BUMP-18.4-1)
  :realization (:VERB "crack"))

(define-category CRASH23500
  :mixins (BUMP-18.4-1)
  :realization (:VERB "crash"))

(define-category CRASH23802
  :mixins (BUMP-18.4-1)
  :realization (:VERB "crash"))

(define-category HAMMER23500
  :mixins (BUMP-18.4-1)
  :realization (:VERB "hammer"))

(define-category KNOCK23500
  :mixins (BUMP-18.4-1)
  :realization (:VERB "knock"))

(define-category RAM23501
  :mixins (BUMP-18.4-1)
  :realization (:VERB "ram"))

(define-category RAP23900
  :mixins (BUMP-18.4-1)
  :realization (:VERB "rap"))

(define-category RAP23500
  :mixins (BUMP-18.4-1)
  :realization (:VERB "rap"))

(define-category SLAM23500
  :mixins (BUMP-18.4-1)
  :realization (:VERB "slam"))

(define-category SLAP23500
  :mixins (BUMP-18.4-1)
  :realization (:VERB "slap"))

(define-category SMACK23502
  :mixins (BUMP-18.4-1)
  :realization (:VERB "smack"))

(define-category SQUASH23500
  :mixins (BUMP-18.4-1)
  :realization (:VERB "squash"))

(define-category STRIKE23502
  :mixins (BUMP-18.4-1)
  :realization (:VERB "strike"))

(define-category STRIKE23501
  :mixins (BUMP-18.4-1)
  :realization (:VERB "strike"))

(define-category STRIKE23500
  :mixins (BUMP-18.4-1)
  :realization (:VERB "strike"))

(define-category THUD23500
  :mixins (BUMP-18.4-1)
  :realization (:VERB "thud"))

(define-category AROMATIZE23900
  :mixins (BUTTER-9.9)
  :realization (:VERB "aromatize"))

(define-category ASPHALT23500
  :mixins (BUTTER-9.9)
  :realization (:VERB "asphalt"))

(define-category BLACK23000
  :mixins (BUTTER-9.9)
  :realization (:VERB "black"))

(define-category BLANKET24200
  :mixins (BUTTER-9.9)
  :realization (:VERB "blanket"))

(define-category BLANKET23500
  :mixins (BUTTER-9.9)
  :realization (:VERB "blanket"))

(define-category BLINDFOLD23500
  :mixins (BUTTER-9.9)
  :realization (:VERB "blindfold"))

(define-category BOARD23800
  :mixins (BUTTER-9.9)
  :realization (:VERB "board"))

(define-category BREAD23500
  :mixins (BUTTER-9.9)
  :realization (:VERB "bread"))

(define-category BRIDLE23500
  :mixins (BUTTER-9.9)
  :realization (:VERB "bridle"))

(define-category BRONZE23000
  :mixins (BUTTER-9.9)
  :realization (:VERB "bronze"))

(define-category BUTTER23500
  :mixins (BUTTER-9.9)
  :realization (:VERB "butter"))

(define-category CALK23501
  :mixins (BUTTER-9.9)
  :realization (:VERB "calk"))

(define-category CAMOUFLAGE23900
  :mixins (BUTTER-9.9)
  :realization (:VERB "camouflage"))

(define-category CAP24200
  :mixins (BUTTER-9.9)
  :realization (:VERB "cap"))

(define-category CARPET23500
  :mixins (BUTTER-9.9)
  :realization (:VERB "carpet"))

(define-category CARPET23501
  :mixins (BUTTER-9.9)
  :realization (:VERB "carpet"))

(define-category CARPET24200
  :mixins (BUTTER-9.9)
  :realization (:VERB "carpet"))

(define-category CAULK23500
  :mixins (BUTTER-9.9)
  :realization (:VERB "caulk"))

(define-category CHROME23500
  :mixins (BUTTER-9.9)
  :realization (:VERB "chrome"))

(define-category COAL24000
  :mixins (BUTTER-9.9)
  :realization (:VERB "coal"))

(define-category CORK23500
  :mixins (BUTTER-9.9)
  :realization (:VERB "cork"))

(define-category CROWN23500
  :mixins (BUTTER-9.9)
  :realization (:VERB "crown"))

(define-category CROWN24200
  :mixins (BUTTER-9.9)
  :realization (:VERB "crown"))

(define-category CROWN23001
  :mixins (BUTTER-9.9)
  :realization (:VERB "crown"))

(define-category CROWN24100
  :mixins (BUTTER-9.9)
  :realization (:VERB "crown"))

(define-category CRUMB23500
  :mixins (BUTTER-9.9)
  :realization (:VERB "crumb"))

(define-category DOPE23000
  :mixins (BUTTER-9.9)
  :realization (:VERB "dope"))

(define-category DRUG22900
  :mixins (BUTTER-9.9)
  :realization (:VERB "drug"))

(define-category FEATHER23500
  :mixins (BUTTER-9.9)
  :realization (:VERB "feather"))

(define-category FENCE23500
  :mixins (BUTTER-9.9)
  :realization (:VERB "fence"))

(define-category FLOUR23500
  :mixins (BUTTER-9.9)
  :realization (:VERB "flour"))

(define-category FOREST23500
  :mixins (BUTTER-9.9)
  :realization (:VERB "forest"))

(define-category FRAME24200
  :mixins (BUTTER-9.9)
  :realization (:VERB "frame"))

(define-category FRAME23500
  :mixins (BUTTER-9.9)
  :realization (:VERB "frame"))

(define-category FROST23500
  :mixins (BUTTER-9.9)
  :realization (:VERB "frost"))

(define-category FUEL24000
  :mixins (BUTTER-9.9)
  :realization (:VERB "fuel"))

(define-category GLAZE23900
  :mixins (BUTTER-9.9)
  :realization (:VERB "glaze"))

(define-category GLAZE23500
  :mixins (BUTTER-9.9)
  :realization (:VERB "glaze"))

(define-category GAG23507
  :mixins (BUTTER-9.9)
  :realization (:VERB "gag"))

(define-category GAG23900
  :mixins (BUTTER-9.9)
  :realization (:VERB "gag"))

(define-category GARLAND23600
  :mixins (BUTTER-9.9)
  :realization (:VERB "garland"))

(define-category GAS23300
  :mixins (BUTTER-9.9)
  :realization (:VERB "gas"))

(define-category GILD23600
  :mixins (BUTTER-9.9)
  :realization (:VERB "gild"))

(define-category GLASS24000
  :mixins (BUTTER-9.9)
  :realization (:VERB "glass"))

(define-category GRASS23502
  :mixins (BUTTER-9.9)
  :realization (:VERB "grass"))

(define-category GRASS23500
  :mixins (BUTTER-9.9)
  :realization (:VERB "grass"))

(define-category GRAVEL23500
  :mixins (BUTTER-9.9)
  :realization (:VERB "gravel"))

(define-category GREASE23500
  :mixins (BUTTER-9.9)
  :realization (:VERB "grease"))

(define-category GROOVE23502
  :mixins (BUTTER-9.9)
  :realization (:VERB "groove"))

(define-category HALTER24100
  :mixins (BUTTER-9.9)
  :realization (:VERB "halter"))

(define-category HARNESS23500
  :mixins (BUTTER-9.9)
  :realization (:VERB "harness"))

(define-category HAT24000
  :mixins (BUTTER-9.9)
  :realization (:VERB "hat"))

(define-category HAT22900
  :mixins (BUTTER-9.9)
  :realization (:VERB "hat"))

(define-category HEEL23000
  :mixins (BUTTER-9.9)
  :realization (:VERB "heel"))

(define-category ICE23500
  :mixins (BUTTER-9.9)
  :realization (:VERB "ice"))

(define-category INK23000
  :mixins (BUTTER-9.9)
  :realization (:VERB "ink"))

(define-category LABEL23500
  :mixins (BUTTER-9.9)
  :realization (:VERB "label"))

(define-category LEASH23500
  :mixins (BUTTER-9.9)
  :realization (:VERB "leash"))

(define-category LEAVEN23800
  :mixins (BUTTER-9.9)
  :realization (:VERB "leaven"))

(define-category LIPSTICK22900
  :mixins (BUTTER-9.9)
  :realization (:VERB "lipstick"))

(define-category LUBRICATE23002
  :mixins (BUTTER-9.9)
  :realization (:VERB "lubricate"))

(define-category MANTLE23800
  :mixins (BUTTER-9.9)
  :realization (:VERB "mantle"))

(define-category MULCH23500
  :mixins (BUTTER-9.9)
  :realization (:VERB "mulch"))

(define-category MUZZLE24000
  :mixins (BUTTER-9.9)
  :realization (:VERB "muzzle"))

(define-category NICKEL23500
  :mixins (BUTTER-9.9)
  :realization (:VERB "nickel"))

(define-category OIL22900
  :mixins (BUTTER-9.9)
  :realization (:VERB "oil"))

(define-category OIL23500
  :mixins (BUTTER-9.9)
  :realization (:VERB "oil"))

(define-category ORNAMENT23600
  :mixins (BUTTER-9.9)
  :realization (:VERB "ornament"))

(define-category PANEL23600
  :mixins (BUTTER-9.9)
  :realization (:VERB "panel"))

(define-category PAPER23501
  :mixins (BUTTER-9.9)
  :realization (:VERB "paper"))

(define-category PAPER23500
  :mixins (BUTTER-9.9)
  :realization (:VERB "paper"))

(define-category PATCH23000
  :mixins (BUTTER-9.9)
  :realization (:VERB "patch"))

(define-category PEPPER23900
  :mixins (BUTTER-9.9)
  :realization (:VERB "pepper"))

(define-category PERFUME22900
  :mixins (BUTTER-9.9)
  :realization (:VERB "perfume"))

(define-category PLANK23500
  :mixins (BUTTER-9.9)
  :realization (:VERB "plank"))

(define-category PLASTER23500
  :mixins (BUTTER-9.9)
  :realization (:VERB "plaster"))

(define-category PLASTER23502
  :mixins (BUTTER-9.9)
  :realization (:VERB "plaster"))

(define-category POISON23000
  :mixins (BUTTER-9.9)
  :realization (:VERB "poison"))

(define-category POMADE22900
  :mixins (BUTTER-9.9)
  :realization (:VERB "pomade"))

(define-category POSTMARK23500
  :mixins (BUTTER-9.9)
  :realization (:VERB "postmark"))

(define-category POWDER22900
  :mixins (BUTTER-9.9)
  :realization (:VERB "powder"))

(define-category PUTTY23500
  :mixins (BUTTER-9.9)
  :realization (:VERB "putty"))

(define-category ROBE22900
  :mixins (BUTTER-9.9)
  :realization (:VERB "robe"))

(define-category ROOF23500
  :mixins (BUTTER-9.9)
  :realization (:VERB "roof"))

(define-category ROSIN23500
  :mixins (BUTTER-9.9)
  :realization (:VERB "rosin"))

(define-category ROUGE22900
  :mixins (BUTTER-9.9)
  :realization (:VERB "rouge"))

(define-category RUT23500
  :mixins (BUTTER-9.9)
  :realization (:VERB "rut"))

(define-category SADDLE23501
  :mixins (BUTTER-9.9)
  :realization (:VERB "saddle"))

(define-category SALT23900
  :mixins (BUTTER-9.9)
  :realization (:VERB "salt"))

(define-category SALVE22900
  :mixins (BUTTER-9.9)
  :realization (:VERB "salve"))

(define-category SAND23500
  :mixins (BUTTER-9.9)
  :realization (:VERB "sand"))

(define-category SCENT22900
  :mixins (BUTTER-9.9)
  :realization (:VERB "scent"))

(define-category SCENT23902
  :mixins (BUTTER-9.9)
  :realization (:VERB "scent"))

(define-category SEED23501
  :mixins (BUTTER-9.9)
  :realization (:VERB "seed"))

(define-category SHINGLE23500
  :mixins (BUTTER-9.9)
  :realization (:VERB "shingle"))

(define-category SHOE22900
  :mixins (BUTTER-9.9)
  :realization (:VERB "shoe"))

(define-category SHUTTER23500
  :mixins (BUTTER-9.9)
  :realization (:VERB "shutter"))

(define-category SILVER23500
  :mixins (BUTTER-9.9)
  :realization (:VERB "silver"))

(define-category SLATE23500
  :mixins (BUTTER-9.9)
  :realization (:VERB "slate"))

(define-category SLIME23500
  :mixins (BUTTER-9.9)
  :realization (:VERB "slime"))

(define-category SOD23500
  :mixins (BUTTER-9.9)
  :realization (:VERB "sod"))

(define-category SOIL23500
  :mixins (BUTTER-9.9)
  :realization (:VERB "soil"))

(define-category SOLE23000
  :mixins (BUTTER-9.9)
  :realization (:VERB "sole"))

(define-category SPICE23900
  :mixins (BUTTER-9.9)
  :realization (:VERB "spice"))

(define-category STAIN23001
  :mixins (BUTTER-9.9)
  :realization (:VERB "stain"))

(define-category STARCH23000
  :mixins (BUTTER-9.9)
  :realization (:VERB "starch"))

(define-category STOPPER23500
  :mixins (BUTTER-9.9)
  :realization (:VERB "stopper"))

(define-category STRESS23201
  :mixins (BUTTER-9.9)
  :realization (:VERB "stress"))

(define-category STRING23504
  :mixins (BUTTER-9.9)
  :realization (:VERB "string"))

(define-category STUCCO23500
  :mixins (BUTTER-9.9)
  :realization (:VERB "stucco"))

(define-category STUCCO23600
  :mixins (BUTTER-9.9)
  :realization (:VERB "stucco"))

(define-category SUGAR23900
  :mixins (BUTTER-9.9)
  :realization (:VERB "sugar"))

(define-category SULPHUR23000
  :mixins (BUTTER-9.9)
  :realization (:VERB "sulphur"))

(define-category TAG23500
  :mixins (BUTTER-9.9)
  :realization (:VERB "tag"))

(define-category TAR23500
  :mixins (BUTTER-9.9)
  :realization (:VERB "tar"))

(define-category TARMAC23500
  :mixins (BUTTER-9.9)
  :realization (:VERB "tarmac"))

(define-category THATCH23500
  :mixins (BUTTER-9.9)
  :realization (:VERB "thatch"))

(define-category TICKET24100
  :mixins (BUTTER-9.9)
  :realization (:VERB "ticket"))

(define-category TILE23500
  :mixins (BUTTER-9.9)
  :realization (:VERB "tile"))

(define-category TINSEL23600
  :mixins (BUTTER-9.9)
  :realization (:VERB "tinsel"))

(define-category TOP23500
  :mixins (BUTTER-9.9)
  :realization (:VERB "top"))

(define-category TURF23500
  :mixins (BUTTER-9.9)
  :realization (:VERB "turf"))

(define-category VARNISH23500
  :mixins (BUTTER-9.9)
  :realization (:VERB "varnish"))

(define-category VEIL23500
  :mixins (BUTTER-9.9)
  :realization (:VERB "veil"))

(define-category VENEER23500
  :mixins (BUTTER-9.9)
  :realization (:VERB "veneer"))

(define-category WALLPAPER23500
  :mixins (BUTTER-9.9)
  :realization (:VERB "wallpaper"))

(define-category WATER22900
  :mixins (BUTTER-9.9)
  :realization (:VERB "water"))

(define-category WAX23500
  :mixins (BUTTER-9.9)
  :realization (:VERB "wax"))

(define-category WHARF24001
  :mixins (BUTTER-9.9)
  :realization (:VERB "wharf"))

(define-category WHITEWASH23500
  :mixins (BUTTER-9.9)
  :realization (:VERB "whitewash"))

(define-category WREATHE23500
  :mixins (BUTTER-9.9)
  :realization (:VERB "wreathe"))

(define-category WREATHE23501
  :mixins (BUTTER-9.9)
  :realization (:VERB "wreathe"))

(define-category YOKE23500
  :mixins (BUTTER-9.9)
  :realization (:VERB "yoke"))

(define-category INSULATE23001
  :mixins (BUTTER-9.9)
  :realization (:VERB "insulate"))

(define-category SAUCE23500
  :mixins (BUTTER-9.9)
  :realization (:VERB "sauce"))

(define-category APPRECIATE23000
  :mixins (CALIBRATABLE_COS-45.6.1-1)
  :realization (:VERB "appreciate"))

(define-category CLIMB23001
  :mixins (CALIBRATABLE_COS-45.6.1-1)
  :realization (:VERB "climb"))

(define-category CLIMB23801
  :mixins (CALIBRATABLE_COS-45.6.1-1)
  :realization (:VERB "climb"))

(define-category CLIMB23800
  :mixins (CALIBRATABLE_COS-45.6.1-1)
  :realization (:VERB "climb"))

(define-category DECLINE23001
  :mixins (CALIBRATABLE_COS-45.6.1-1)
  :realization (:VERB "decline"))

(define-category DIP23801
  :mixins (CALIBRATABLE_COS-45.6.1-1)
  :realization (:VERB "dip"))

(define-category DIVE23800
  :mixins (CALIBRATABLE_COS-45.6.1-1)
  :realization (:VERB "dive"))

(define-category DEPRECIATE23000
  :mixins (CALIBRATABLE_COS-45.6.1-1)
  :realization (:VERB "depreciate"))

(define-category DROP23000
  :mixins (CALIBRATABLE_COS-45.6.1-1)
  :realization (:VERB "drop"))

(define-category EXPLODE23002
  :mixins (CALIBRATABLE_COS-45.6.1-1)
  :realization (:VERB "explode"))

(define-category FALL23006
  :mixins (CALIBRATABLE_COS-45.6.1-1)
  :realization (:VERB "fall"))

(define-category FALL_AWAY23000
  :mixins (CALIBRATABLE_COS-45.6.1-1)
  :realization (:VERB "fall_away"))

(define-category FLUCTUATE23000
  :mixins (CALIBRATABLE_COS-45.6.1-1)
  :realization (:VERB "fluctuate"))

(define-category GAIN23000
  :mixins (CALIBRATABLE_COS-45.6.1-1)
  :realization (:VERB "gain"))

(define-category GO_DOWN23000
  :mixins (CALIBRATABLE_COS-45.6.1-1)
  :realization (:VERB "go_down"))

(define-category GO_UP23000
  :mixins (CALIBRATABLE_COS-45.6.1-1)
  :realization (:VERB "go_up"))

(define-category JUMP23000
  :mixins (CALIBRATABLE_COS-45.6.1-1)
  :realization (:VERB "jump"))

(define-category MUSHROOM23000
  :mixins (CALIBRATABLE_COS-45.6.1-1)
  :realization (:VERB "mushroom"))

(define-category PLUMMET23800
  :mixins (CALIBRATABLE_COS-45.6.1-1)
  :realization (:VERB "plummet"))

(define-category PLUMP23801
  :mixins (CALIBRATABLE_COS-45.6.1-1)
  :realization (:VERB "plump"))

(define-category PLUNGE23801
  :mixins (CALIBRATABLE_COS-45.6.1-1)
  :realization (:VERB "plunge"))

(define-category ROCKET23800
  :mixins (CALIBRATABLE_COS-45.6.1-1)
  :realization (:VERB "rocket"))

(define-category RISE23802
  :mixins (CALIBRATABLE_COS-45.6.1-1)
  :realization (:VERB "rise"))

(define-category RISE23009
  :mixins (CALIBRATABLE_COS-45.6.1-1)
  :realization (:VERB "rise"))

(define-category RISE23003
  :mixins (CALIBRATABLE_COS-45.6.1-1)
  :realization (:VERB "rise"))

(define-category RISE23000
  :mixins (CALIBRATABLE_COS-45.6.1-1)
  :realization (:VERB "rise"))

(define-category SEESAW23800
  :mixins (CALIBRATABLE_COS-45.6.1-1)
  :realization (:VERB "seesaw"))

(define-category SKYROCKET23800
  :mixins (CALIBRATABLE_COS-45.6.1-1)
  :realization (:VERB "skyrocket"))

(define-category SLIP23000
  :mixins (CALIBRATABLE_COS-45.6.1-1)
  :realization (:VERB "slip"))

(define-category SOAR23000
  :mixins (CALIBRATABLE_COS-45.6.1-1)
  :realization (:VERB "soar"))

(define-category SOAR23801
  :mixins (CALIBRATABLE_COS-45.6.1-1)
  :realization (:VERB "soar"))

(define-category SURGE23800
  :mixins (CALIBRATABLE_COS-45.6.1-1)
  :realization (:VERB "surge"))

(define-category SWING23008
  :mixins (CALIBRATABLE_COS-45.6.1-1)
  :realization (:VERB "swing"))

(define-category TUMBLE23000
  :mixins (CALIBRATABLE_COS-45.6.1-1)
  :realization (:VERB "tumble"))

(define-category SWELL23002
  :mixins (CALIBRATABLE_COS-45.6.1-1)
  :realization (:VERB "swell"))

(define-category CALVE22900
  :mixins (CALVE-28.1)
  :realization (:VERB "calve"))

(define-category CUB22900
  :mixins (CALVE-28.1)
  :realization (:VERB "cub"))

(define-category FAWN22900
  :mixins (CALVE-28.1)
  :realization (:VERB "fawn"))

(define-category FOAL22900
  :mixins (CALVE-28.1)
  :realization (:VERB "foal"))

(define-category KITTEN22900
  :mixins (CALVE-28.1)
  :realization (:VERB "kitten"))

(define-category LAMB22900
  :mixins (CALVE-28.1)
  :realization (:VERB "lamb"))

(define-category LITTER22900
  :mixins (CALVE-28.1)
  :realization (:VERB "litter"))

(define-category PUP22900
  :mixins (CALVE-28.1)
  :realization (:VERB "pup"))

(define-category SPAWN23600
  :mixins (CALVE-28.1)
  :realization (:VERB "spawn"))

(define-category WHELP22900
  :mixins (CALVE-28.1)
  :realization (:VERB "whelp"))

(define-category BUTCHER23500
  :mixins (CAPTAIN-29.8)
  :realization (:VERB "butcher"))

(define-category MODEL23604
  :mixins (CAPTAIN-29.8)
  :realization (:VERB "model"))

(define-category MODEL23900
  :mixins (CAPTAIN-29.8)
  :realization (:VERB "model"))

(define-category MODEL23901
  :mixins (CAPTAIN-29.8)
  :realization (:VERB "model"))

(define-category PROSTITUTE24100
  :mixins (CAPTAIN-29.8)
  :realization (:VERB "prostitute"))

(define-category SOLDIER23300
  :mixins (CAPTAIN-29.8)
  :realization (:VERB "soldier"))

(define-category VOLUNTEER24100
  :mixins (CAPTAIN-29.8)
  :realization (:VERB "volunteer"))

(define-category VOLUNTEER24101
  :mixins (CAPTAIN-29.8)
  :realization (:VERB "volunteer"))

(define-category WHORE24100
  :mixins (CAPTAIN-29.8)
  :realization (:VERB "whore"))

(define-category BULLY23200
  :mixins (CAPTAIN-29.8-1)
  :realization (:VERB "bully"))

(define-category BULLY23700
  :mixins (CAPTAIN-29.8-1)
  :realization (:VERB "bully"))

(define-category CADDY23300
  :mixins (CAPTAIN-29.8-1)
  :realization (:VERB "caddy"))

(define-category CAPTAIN24100
  :mixins (CAPTAIN-29.8-1)
  :realization (:VERB "captain"))

(define-category CHAMPION23300
  :mixins (CAPTAIN-29.8-1)
  :realization (:VERB "champion"))

(define-category CHAPERONE23800
  :mixins (CAPTAIN-29.8-1)
  :realization (:VERB "chaperone"))

(define-category CHAUFFEUR23800
  :mixins (CAPTAIN-29.8-1)
  :realization (:VERB "chauffeur"))

(define-category CLERK24100
  :mixins (CAPTAIN-29.8-1)
  :realization (:VERB "clerk"))

(define-category COACH23200
  :mixins (CAPTAIN-29.8-1)
  :realization (:VERB "coach"))

(define-category COX24100
  :mixins (CAPTAIN-29.8-1)
  :realization (:VERB "cox"))

(define-category CREW23300
  :mixins (CAPTAIN-29.8-1)
  :realization (:VERB "crew"))

(define-category DOCTOR22900
  :mixins (CAPTAIN-29.8-1)
  :realization (:VERB "doctor"))

(define-category EMCEE24100
  :mixins (CAPTAIN-29.8-1)
  :realization (:VERB "emcee"))

(define-category ESCORT23800
  :mixins (CAPTAIN-29.8-1)
  :realization (:VERB "escort"))

(define-category GUARD23303
  :mixins (CAPTAIN-29.8-1)
  :realization (:VERB "guard"))

(define-category GUARD23300
  :mixins (CAPTAIN-29.8-1)
  :realization (:VERB "guard"))

(define-category GUARD24100
  :mixins (CAPTAIN-29.8-1)
  :realization (:VERB "guard"))

(define-category HOST23400
  :mixins (CAPTAIN-29.8-1)
  :realization (:VERB "host"))

(define-category MOTHER24100
  :mixins (CAPTAIN-29.8-1)
  :realization (:VERB "mother"))

(define-category NURSE23400
  :mixins (CAPTAIN-29.8-1)
  :realization (:VERB "nurse"))

(define-category NURSE24100
  :mixins (CAPTAIN-29.8-1)
  :realization (:VERB "nurse"))

(define-category PARTNER24100
  :mixins (CAPTAIN-29.8-1)
  :realization (:VERB "partner"))

(define-category PILOT23801
  :mixins (CAPTAIN-29.8-1)
  :realization (:VERB "pilot"))

(define-category PILOT23800
  :mixins (CAPTAIN-29.8-1)
  :realization (:VERB "pilot"))

(define-category PIONEER23601
  :mixins (CAPTAIN-29.8-1)
  :realization (:VERB "pioneer"))

(define-category PIONEER23600
  :mixins (CAPTAIN-29.8-1)
  :realization (:VERB "pioneer"))

(define-category POLICE24100
  :mixins (CAPTAIN-29.8-1)
  :realization (:VERB "police"))

(define-category REFEREE23300
  :mixins (CAPTAIN-29.8-1)
  :realization (:VERB "referee"))

(define-category SHEPHERD24100
  :mixins (CAPTAIN-29.8-1)
  :realization (:VERB "shepherd"))

(define-category SHEPHERD24101
  :mixins (CAPTAIN-29.8-1)
  :realization (:VERB "shepherd"))

(define-category SKIPPER24100
  :mixins (CAPTAIN-29.8-1)
  :realization (:VERB "skipper"))

(define-category SPONSOR24100
  :mixins (CAPTAIN-29.8-1)
  :realization (:VERB "sponsor"))

(define-category SPONSOR24001
  :mixins (CAPTAIN-29.8-1)
  :realization (:VERB "sponsor"))

(define-category SPONSOR24000
  :mixins (CAPTAIN-29.8-1)
  :realization (:VERB "sponsor"))

(define-category TAILOR23600
  :mixins (CAPTAIN-29.8-1)
  :realization (:VERB "tailor"))

(define-category TAILOR23601
  :mixins (CAPTAIN-29.8-1)
  :realization (:VERB "tailor"))

(define-category TAILOR23000
  :mixins (CAPTAIN-29.8-1)
  :realization (:VERB "tailor"))

(define-category TUTOR24100
  :mixins (CAPTAIN-29.8-1)
  :realization (:VERB "tutor"))

(define-category TUTOR23200
  :mixins (CAPTAIN-29.8-1)
  :realization (:VERB "tutor"))

(define-category UMPIRE23300
  :mixins (CAPTAIN-29.8-1)
  :realization (:VERB "umpire"))

(define-category UNDERSTUDY23100
  :mixins (CAPTAIN-29.8-1)
  :realization (:VERB "understudy"))

(define-category USHER23800
  :mixins (CAPTAIN-29.8-1)
  :realization (:VERB "usher"))

(define-category VALET24100
  :mixins (CAPTAIN-29.8-1)
  :realization (:VERB "valet"))

(define-category WITNESS23900
  :mixins (CAPTAIN-29.8-1)
  :realization (:VERB "witness"))

(define-category STAR23600
  :mixins (CAPTAIN-29.8-1-1)
  :realization (:VERB "star"))

(define-category MIND23102
  :mixins (CARE-88.1)
  :realization (:VERB "mind"))

(define-category MIND23200
  :mixins (CARE-88.1)
  :realization (:VERB "mind"))

(define-category CARE23712
  :mixins (CARE-88.1-1)
  :realization (:VERB "care"))

(define-category CARE23702
  :mixins (CARE-88.1-1)
  :realization (:VERB "care"))

(define-category WORRY23712
  :mixins (CARE-88.1-1)
  :realization (:VERB "worry"))

(define-category WORRY23700
  :mixins (CARE-88.1-1)
  :realization (:VERB "worry"))

(define-category WONDER23201
  :mixins (CARE-88.1-1)
  :realization (:VERB "wonder"))

(define-category LOOK_AFTER23900
  :mixins (CARING-75.2-1)
  :realization (:VERB "look_after"))

(define-category MANAGE24101
  :mixins (CARING-75.2-1)
  :realization (:VERB "manage"))

(define-category MIND24100
  :mixins (CARING-75.2-1)
  :realization (:VERB "mind"))

(define-category MIND23102
  :mixins (CARING-75.2-1)
  :realization (:VERB "mind"))

(define-category WAIT_ON24100
  :mixins (CARING-75.2-1)
  :realization (:VERB "wait_on"))

(define-category ATTEND24112
  :mixins (CARING-75.2-1-1)
  :realization (:VERB "attend"))

(define-category TEND24101
  :mixins (CARING-75.2-1-1)
  :realization (:VERB "tend"))

(define-category TEND24100
  :mixins (CARING-75.2-1-1)
  :realization (:VERB "tend"))

(define-category CARE24111
  :mixins (CARING-75.2-2)
  :realization (:VERB "care"))

(define-category CARRY23508
  :mixins (CARRY-11.4)
  :realization (:VERB "carry"))

(define-category CARRY23502
  :mixins (CARRY-11.4)
  :realization (:VERB "carry"))

(define-category DRAG23501
  :mixins (CARRY-11.4)
  :realization (:VERB "drag"))

(define-category DRAG23500
  :mixins (CARRY-11.4)
  :realization (:VERB "drag"))

(define-category DRAW23503
  :mixins (CARRY-11.4)
  :realization (:VERB "draw"))

(define-category HAUL23500
  :mixins (CARRY-11.4)
  :realization (:VERB "haul"))

(define-category HAUL23501
  :mixins (CARRY-11.4)
  :realization (:VERB "haul"))

(define-category HEFT23500
  :mixins (CARRY-11.4)
  :realization (:VERB "heft"))

(define-category HOIST23510
  :mixins (CARRY-11.4)
  :realization (:VERB "hoist"))

(define-category HOIST23500
  :mixins (CARRY-11.4)
  :realization (:VERB "hoist"))

(define-category LUG23500
  :mixins (CARRY-11.4)
  :realization (:VERB "lug"))

(define-category NUDGE23500
  :mixins (CARRY-11.4)
  :realization (:VERB "nudge"))

(define-category PULL23510
  :mixins (CARRY-11.4)
  :realization (:VERB "pull"))

(define-category PULL23803
  :mixins (CARRY-11.4)
  :realization (:VERB "pull"))

(define-category PULL23504
  :mixins (CARRY-11.4)
  :realization (:VERB "pull"))

(define-category PULL23500
  :mixins (CARRY-11.4)
  :realization (:VERB "pull"))

(define-category RUN23810
  :mixins (CARRY-11.4)
  :realization (:VERB "run"))

(define-category RUN24208
  :mixins (CARRY-11.4)
  :realization (:VERB "run"))

(define-category RUN23800
  :mixins (CARRY-11.4)
  :realization (:VERB "run"))

(define-category SCHLEP23500
  :mixins (CARRY-11.4)
  :realization (:VERB "schlep"))

(define-category TOTE23500
  :mixins (CARRY-11.4)
  :realization (:VERB "tote"))

(define-category TOW23500
  :mixins (CARRY-11.4)
  :realization (:VERB "tow"))

(define-category TUG23501
  :mixins (CARRY-11.4)
  :realization (:VERB "tug"))

(define-category TUG23502
  :mixins (CARRY-11.4)
  :realization (:VERB "tug"))

(define-category TUG23503
  :mixins (CARRY-11.4)
  :realization (:VERB "tug"))

(define-category TUG23504
  :mixins (CARRY-11.4)
  :realization (:VERB "tug"))

(define-category TUG23500
  :mixins (CARRY-11.4)
  :realization (:VERB "tug"))

(define-category YANK23500
  :mixins (CARRY-11.4)
  :realization (:VERB "yank"))

(define-category HEAVE23501
  :mixins (CARRY-11.4-1-1)
  :realization (:VERB "heave"))

(define-category KICK23501
  :mixins (CARRY-11.4-1-1)
  :realization (:VERB "kick"))

(define-category PUSH23800
  :mixins (CARRY-11.4-1-1)
  :realization (:VERB "push"))

(define-category SHOVE23500
  :mixins (CARRY-11.4-1-1)
  :realization (:VERB "shove"))

(define-category THRUST23508
  :mixins (CARRY-11.4-1-1)
  :realization (:VERB "thrust"))

(define-category THRUST23802
  :mixins (CARRY-11.4-1-1)
  :realization (:VERB "thrust"))

(define-category THRUST23800
  :mixins (CARRY-11.4-1-1)
  :realization (:VERB "thrust"))

(define-category BRUISE23000
  :mixins (CARVE-21.2-1)
  :realization (:VERB "bruise"))

(define-category BRUISE23500
  :mixins (CARVE-21.2-1)
  :realization (:VERB "bruise"))

(define-category CHIP23500
  :mixins (CARVE-21.2-1)
  :realization (:VERB "chip"))

(define-category CHIP23503
  :mixins (CARVE-21.2-1)
  :realization (:VERB "chip"))

(define-category CHIP23501
  :mixins (CARVE-21.2-1)
  :realization (:VERB "chip"))

(define-category CLEAVE23501
  :mixins (CARVE-21.2-1)
  :realization (:VERB "cleave"))

(define-category CLEAVE23500
  :mixins (CARVE-21.2-1)
  :realization (:VERB "cleave"))

(define-category CRUMBLE23000
  :mixins (CARVE-21.2-1)
  :realization (:VERB "crumble"))

(define-category CRUMPLE23500
  :mixins (CARVE-21.2-1)
  :realization (:VERB "crumple"))

(define-category CRUNCH23000
  :mixins (CARVE-21.2-1)
  :realization (:VERB "crunch"))

(define-category CRUNCH23400
  :mixins (CARVE-21.2-1)
  :realization (:VERB "crunch"))

(define-category CRUSH23008
  :mixins (CARVE-21.2-1)
  :realization (:VERB "crush"))

(define-category CRUSH23501
  :mixins (CARVE-21.2-1)
  :realization (:VERB "crush"))

(define-category CRUSH23000
  :mixins (CARVE-21.2-1)
  :realization (:VERB "crush"))

(define-category CRUSH23500
  :mixins (CARVE-21.2-1)
  :realization (:VERB "crush"))

(define-category CUBE23500
  :mixins (CARVE-21.2-1)
  :realization (:VERB "cube"))

(define-category DENT23500
  :mixins (CARVE-21.2-1)
  :realization (:VERB "dent"))

(define-category DICE23500
  :mixins (CARVE-21.2-1)
  :realization (:VERB "dice"))

(define-category FILLET23500
  :mixins (CARVE-21.2-1)
  :realization (:VERB "fillet"))

(define-category FLAKE23502
  :mixins (CARVE-21.2-1)
  :realization (:VERB "flake"))

(define-category FLATTEN23001
  :mixins (CARVE-21.2-1)
  :realization (:VERB "flatten"))

(define-category GASH23500
  :mixins (CARVE-21.2-1)
  :realization (:VERB "gash"))

(define-category GOUGE23501
  :mixins (CARVE-21.2-1)
  :realization (:VERB "gouge"))

(define-category GOUGE23500
  :mixins (CARVE-21.2-1)
  :realization (:VERB "gouge"))

(define-category GRATE23502
  :mixins (CARVE-21.2-1)
  :realization (:VERB "grate"))

(define-category GRIND23000
  :mixins (CARVE-21.2-1)
  :realization (:VERB "grind"))

(define-category GRIND23502
  :mixins (CARVE-21.2-1)
  :realization (:VERB "grind"))

(define-category MANGLE23501
  :mixins (CARVE-21.2-1)
  :realization (:VERB "mangle"))

(define-category MASH23000
  :mixins (CARVE-21.2-1)
  :realization (:VERB "mash"))

(define-category MASH23500
  :mixins (CARVE-21.2-1)
  :realization (:VERB "mash"))

(define-category MINCE23500
  :mixins (CARVE-21.2-1)
  :realization (:VERB "mince"))

(define-category NICK23500
  :mixins (CARVE-21.2-1)
  :realization (:VERB "nick"))

(define-category NICK23501
  :mixins (CARVE-21.2-1)
  :realization (:VERB "nick"))

(define-category NOTCH23500
  :mixins (CARVE-21.2-1)
  :realization (:VERB "notch"))

(define-category PERFORATE23500
  :mixins (CARVE-21.2-1)
  :realization (:VERB "perforate"))

(define-category PULVERIZE23000
  :mixins (CARVE-21.2-1)
  :realization (:VERB "pulverize"))

(define-category QUARTER23501
  :mixins (CARVE-21.2-1)
  :realization (:VERB "quarter"))

(define-category SCOLLOP23000
  :mixins (CARVE-21.2-1)
  :realization (:VERB "scollop"))

(define-category SCRUNCH23500
  :mixins (CARVE-21.2-1)
  :realization (:VERB "scrunch"))

(define-category SHRED23500
  :mixins (CARVE-21.2-1)
  :realization (:VERB "shred"))

(define-category SLICE23500
  :mixins (CARVE-21.2-1)
  :realization (:VERB "slice"))

(define-category SLICE23501
  :mixins (CARVE-21.2-1)
  :realization (:VERB "slice"))

(define-category SLIT23500
  :mixins (CARVE-21.2-1)
  :realization (:VERB "slit"))

(define-category SLIT23501
  :mixins (CARVE-21.2-1)
  :realization (:VERB "slit"))

(define-category SMASH23010
  :mixins (CARVE-21.2-1)
  :realization (:VERB "smash"))

(define-category SMASH23505
  :mixins (CARVE-21.2-1)
  :realization (:VERB "smash"))

(define-category SMASH23508
  :mixins (CARVE-21.2-1)
  :realization (:VERB "smash"))

(define-category SMASH23802
  :mixins (CARVE-21.2-1)
  :realization (:VERB "smash"))

(define-category SMASH23000
  :mixins (CARVE-21.2-1)
  :realization (:VERB "smash"))

(define-category SMASH23500
  :mixins (CARVE-21.2-1)
  :realization (:VERB "smash"))

(define-category SQUASH23500
  :mixins (CARVE-21.2-1)
  :realization (:VERB "squash"))

(define-category SQUISH23500
  :mixins (CARVE-21.2-1)
  :realization (:VERB "squish"))

(define-category TRENCH23501
  :mixins (CARVE-21.2-1)
  :realization (:VERB "trench"))

(define-category TRENCH23503
  :mixins (CARVE-21.2-1)
  :realization (:VERB "trench"))

(define-category BORE23500
  :mixins (CARVE-21.2-2)
  :realization (:VERB "bore"))

(define-category CARVE23500
  :mixins (CARVE-21.2-2)
  :realization (:VERB "carve"))

(define-category CARVE23502
  :mixins (CARVE-21.2-2)
  :realization (:VERB "carve"))

(define-category CARVE23501
  :mixins (CARVE-21.2-2)
  :realization (:VERB "carve"))

(define-category CHOP23500
  :mixins (CARVE-21.2-2)
  :realization (:VERB "chop"))

(define-category CHOP23501
  :mixins (CARVE-21.2-2)
  :realization (:VERB "chop"))

(define-category CROP23502
  :mixins (CARVE-21.2-2)
  :realization (:VERB "crop"))

(define-category CRUMB23001
  :mixins (CARVE-21.2-2)
  :realization (:VERB "crumb"))

(define-category DRILL23500
  :mixins (CARVE-21.2-2)
  :realization (:VERB "drill"))

(define-category FILE23500
  :mixins (CARVE-21.2-2)
  :realization (:VERB "file"))

(define-category LANCE23500
  :mixins (CARVE-21.2-2)
  :realization (:VERB "lance"))

(define-category LANCE23501
  :mixins (CARVE-21.2-2)
  :realization (:VERB "lance"))

(define-category MILL23500
  :mixins (CARVE-21.2-2)
  :realization (:VERB "mill"))

(define-category MANGLE23501
  :mixins (CARVE-21.2-2)
  :realization (:VERB "mangle"))

(define-category MOW23500
  :mixins (CARVE-21.2-2)
  :realization (:VERB "mow"))

(define-category PUNCH23501
  :mixins (CARVE-21.2-2)
  :realization (:VERB "punch"))

(define-category PRUNE23500
  :mixins (CARVE-21.2-2)
  :realization (:VERB "prune"))

(define-category SCOLLOP23500
  :mixins (CARVE-21.2-2)
  :realization (:VERB "scollop"))

(define-category SAND23500
  :mixins (CARVE-21.2-2)
  :realization (:VERB "sand"))

(define-category SPEAR23500
  :mixins (CARVE-21.2-2)
  :realization (:VERB "spear"))

(define-category TOOL24000
  :mixins (CARVE-21.2-2)
  :realization (:VERB "tool"))

(define-category TREAD24000
  :mixins (CARVE-21.2-2)
  :realization (:VERB "tread"))

(define-category BLANCH22900
  :mixins (CHANGE_BODILY_STATE-40.8.4)
  :realization (:VERB "blanch"))

(define-category FAINT22900
  :mixins (CHANGE_BODILY_STATE-40.8.4)
  :realization (:VERB "faint"))

(define-category SICKEN22900
  :mixins (CHANGE_BODILY_STATE-40.8.4)
  :realization (:VERB "sicken"))

(define-category BLACK_OUT22900
  :mixins (CHANGE_BODILY_STATE-40.8.4)
  :realization (:VERB "black_out"))

(define-category SWOON22900
  :mixins (CHANGE_BODILY_STATE-40.8.4)
  :realization (:VERB "swoon"))

(define-category DROWSE22900
  :mixins (CHANGE_BODILY_STATE-40.8.4)
  :realization (:VERB "drowse"))

(define-category DOZE_OFF22900
  :mixins (CHANGE_BODILY_STATE-40.8.4)
  :realization (:VERB "doze_off"))

(define-category DROWSE22901
  :mixins (CHANGE_BODILY_STATE-40.8.4)
  :realization (:VERB "drowse"))

(define-category DROWSE_OFF22900
  :mixins (CHANGE_BODILY_STATE-40.8.4)
  :realization (:VERB "drowse_off"))

(define-category DRIFT_OFF22900
  :mixins (CHANGE_BODILY_STATE-40.8.4)
  :realization (:VERB "drift_off"))

(define-category NOD_OFF22900
  :mixins (CHANGE_BODILY_STATE-40.8.4)
  :realization (:VERB "nod_off"))

(define-category PASS_OUT22901
  :mixins (CHANGE_BODILY_STATE-40.8.4)
  :realization (:VERB "pass_out"))

(define-category ZONK_OUT22901
  :mixins (CHANGE_BODILY_STATE-40.8.4)
  :realization (:VERB "zonk_out"))

(define-category COUNT23100
  :mixins (CHARACTERIZE-29.2)
  :realization (:VERB "count"))

(define-category DEPICT23600
  :mixins (CHARACTERIZE-29.2)
  :realization (:VERB "depict"))

(define-category ENVISION23601
  :mixins (CHARACTERIZE-29.2)
  :realization (:VERB "envision"))

(define-category ENVISION23600
  :mixins (CHARACTERIZE-29.2)
  :realization (:VERB "envision"))

(define-category FANCY23600
  :mixins (CHARACTERIZE-29.2)
  :realization (:VERB "fancy"))

(define-category MOOT23200
  :mixins (CHARACTERIZE-29.2)
  :realization (:VERB "moot"))

(define-category PICTURE23601
  :mixins (CHARACTERIZE-29.2)
  :realization (:VERB "picture"))

(define-category PIGEONHOLE23100
  :mixins (CHARACTERIZE-29.2)
  :realization (:VERB "pigeonhole"))

(define-category PAINT23600
  :mixins (CHARACTERIZE-29.2)
  :realization (:VERB "paint"))

(define-category STEREOTYPE23100
  :mixins (CHARACTERIZE-29.2)
  :realization (:VERB "stereotype"))

(define-category TYPECAST23100
  :mixins (CHARACTERIZE-29.2)
  :realization (:VERB "typecast"))

(define-category BILL23201
  :mixins (CHARACTERIZE-29.2)
  :realization (:VERB "bill"))

(define-category BILL23200
  :mixins (CHARACTERIZE-29.2)
  :realization (:VERB "bill"))

(define-category CAST23200
  :mixins (CHARACTERIZE-29.2)
  :realization (:VERB "cast"))

(define-category CAST23601
  :mixins (CHARACTERIZE-29.2)
  :realization (:VERB "cast"))

(define-category DIAGNOSE23101
  :mixins (CHARACTERIZE-29.2)
  :realization (:VERB "diagnose"))

(define-category CERTIFY23201
  :mixins (CHARACTERIZE-29.2)
  :realization (:VERB "certify"))

(define-category CERTIFY24100
  :mixins (CHARACTERIZE-29.2)
  :realization (:VERB "certify"))

(define-category CERTIFY24102
  :mixins (CHARACTERIZE-29.2)
  :realization (:VERB "certify"))

(define-category PRAISE23200
  :mixins (CHARACTERIZE-29.2)
  :realization (:VERB "praise"))

(define-category HAIL23200
  :mixins (CHARACTERIZE-29.2)
  :realization (:VERB "hail"))

(define-category HAIL23202
  :mixins (CHARACTERIZE-29.2)
  :realization (:VERB "hail"))

(define-category REGARD23100
  :mixins (CHARACTERIZE-29.2)
  :realization (:VERB "regard"))

(define-category TREAT23100
  :mixins (CHARACTERIZE-29.2)
  :realization (:VERB "treat"))

(define-category RANK23113
  :mixins (CHARACTERIZE-29.2)
  :realization (:VERB "rank"))

(define-category TAKE24005
  :mixins (CHARACTERIZE-29.2)
  :realization (:VERB "take"))

(define-category TAKE23101
  :mixins (CHARACTERIZE-29.2)
  :realization (:VERB "take"))

(define-category TAKE23107
  :mixins (CHARACTERIZE-29.2)
  :realization (:VERB "take"))

(define-category ADOPT23104
  :mixins (CHARACTERIZE-29.2)
  :realization (:VERB "adopt"))

(define-category ADOPT24101
  :mixins (CHARACTERIZE-29.2)
  :realization (:VERB "adopt"))

(define-category ADOPT24000
  :mixins (CHARACTERIZE-29.2)
  :realization (:VERB "adopt"))

(define-category ADOPT24002
  :mixins (CHARACTERIZE-29.2)
  :realization (:VERB "adopt"))

(define-category CLASS23100
  :mixins (CHARACTERIZE-29.2)
  :realization (:VERB "class"))

(define-category CLASSIFY23101
  :mixins (CHARACTERIZE-29.2)
  :realization (:VERB "classify"))

(define-category CLASSIFY23100
  :mixins (CHARACTERIZE-29.2)
  :realization (:VERB "classify"))

(define-category SELECT23100
  :mixins (CHARACTERIZE-29.2)
  :realization (:VERB "select"))

(define-category PIGEONHOLE23100
  :mixins (CHARACTERIZE-29.2)
  :realization (:VERB "pigeonhole"))

(define-category STAMP23100
  :mixins (CHARACTERIZE-29.2)
  :realization (:VERB "stamp"))

(define-category CHARACTERIZE24201
  :mixins (CHARACTERIZE-29.2-1)
  :realization (:VERB "characterize"))

(define-category CONCEIVE23100
  :mixins (CHARACTERIZE-29.2-1)
  :realization (:VERB "conceive"))

(define-category VIEW23100
  :mixins (CHARACTERIZE-29.2-1)
  :realization (:VERB "view"))

(define-category UNDERESTIMATE23102
  :mixins (CHARACTERIZE-29.2-1)
  :realization (:VERB "underestimate"))

(define-category UNDERESTIMATE23101
  :mixins (CHARACTERIZE-29.2-1)
  :realization (:VERB "underestimate"))

(define-category UNDERESTIMATE23100
  :mixins (CHARACTERIZE-29.2-1)
  :realization (:VERB "underestimate"))

(define-category PORTRAY23200
  :mixins (CHARACTERIZE-29.2-1-1)
  :realization (:VERB "portray"))

(define-category DESCRIBE23201
  :mixins (CHARACTERIZE-29.2-1-1)
  :realization (:VERB "describe"))

(define-category DESCRIBE23200
  :mixins (CHARACTERIZE-29.2-1-1)
  :realization (:VERB "describe"))

(define-category ACCEPT23103
  :mixins (CHARACTERIZE-29.2-1-1)
  :realization (:VERB "accept"))

(define-category ACCEPT23101
  :mixins (CHARACTERIZE-29.2-1-1)
  :realization (:VERB "accept"))

(define-category ACCEPT23100
  :mixins (CHARACTERIZE-29.2-1-1)
  :realization (:VERB "accept"))

(define-category ENVISAGE23600
  :mixins (CHARACTERIZE-29.2-1-1)
  :realization (:VERB "envisage"))

(define-category IDENTIFY23102
  :mixins (CHARACTERIZE-29.2-1-1)
  :realization (:VERB "identify"))

(define-category IDENTIFY23100
  :mixins (CHARACTERIZE-29.2-1-1)
  :realization (:VERB "identify"))

(define-category IMAGINE23600
  :mixins (CHARACTERIZE-29.2-1-1)
  :realization (:VERB "imagine"))

(define-category VISUALIZE23600
  :mixins (CHARACTERIZE-29.2-1-1)
  :realization (:VERB "visualize"))

(define-category REMEMBER23100
  :mixins (CHARACTERIZE-29.2-1-1)
  :realization (:VERB "remember"))

(define-category RECOLLECT23100
  :mixins (CHARACTERIZE-29.2-1-1)
  :realization (:VERB "recollect"))

(define-category REPORT23204
  :mixins (CHARACTERIZE-29.2-1-2)
  :realization (:VERB "report"))

(define-category REPORT23200
  :mixins (CHARACTERIZE-29.2-1-2)
  :realization (:VERB "report"))

(define-category REVEAL23200
  :mixins (CHARACTERIZE-29.2-1-2)
  :realization (:VERB "reveal"))

(define-category CHASE24100
  :mixins (CHASE-51.6)
  :realization (:VERB "chase"))

(define-category CHASE23800
  :mixins (CHASE-51.6)
  :realization (:VERB "chase"))

(define-category FOLLOW23813
  :mixins (CHASE-51.6)
  :realization (:VERB "follow"))

(define-category FOLLOW23800
  :mixins (CHASE-51.6)
  :realization (:VERB "follow"))

(define-category PURSUE23800
  :mixins (CHASE-51.6)
  :realization (:VERB "pursue"))

(define-category SHADOW23800
  :mixins (CHASE-51.6)
  :realization (:VERB "shadow"))

(define-category TAIL23800
  :mixins (CHASE-51.6)
  :realization (:VERB "tail"))

(define-category TRACK23800
  :mixins (CHASE-51.6)
  :realization (:VERB "track"))

(define-category TRAIL23800
  :mixins (CHASE-51.6)
  :realization (:VERB "trail"))

(define-category CHEAT24100
  :mixins (CHEAT-10.6.1)
  :realization (:VERB "cheat"))

(define-category CON24100
  :mixins (CHEAT-10.6.1-1)
  :realization (:VERB "con"))

(define-category COZEN24000
  :mixins (CHEAT-10.6.1-1)
  :realization (:VERB "cozen"))

(define-category FLEECE24000
  :mixins (CHEAT-10.6.1-1)
  :realization (:VERB "fleece"))

(define-category DEFRAUD24100
  :mixins (CHEAT-10.6.1-1)
  :realization (:VERB "defraud"))

(define-category SWINDLE24100
  :mixins (CHEAT-10.6.1-1)
  :realization (:VERB "swindle"))

(define-category ROB24000
  :mixins (CHEAT-10.6.1-1-1)
  :realization (:VERB "rob"))

(define-category BLEED23000
  :mixins (CHEAT-10.6.1-1-1)
  :realization (:VERB "bleed"))

(define-category BLEED24009
  :mixins (CHEAT-10.6.1-1-1)
  :realization (:VERB "bleed"))

(define-category STRIP23012
  :mixins (CHEAT-10.6.1-1-1)
  :realization (:VERB "strip"))

(define-category STRIP23504
  :mixins (CHEAT-10.6.1-1-1)
  :realization (:VERB "strip"))

(define-category STRIP24000
  :mixins (CHEAT-10.6.1-1-1)
  :realization (:VERB "strip"))

(define-category STRIP23005
  :mixins (CHEAT-10.6.1-1-1)
  :realization (:VERB "strip"))

(define-category STRIP23006
  :mixins (CHEAT-10.6.1-1-1)
  :realization (:VERB "strip"))

(define-category STRIP24003
  :mixins (CHEAT-10.6.1-1-1)
  :realization (:VERB "strip"))

(define-category MILK23400
  :mixins (CHEAT-10.6.1-1-1)
  :realization (:VERB "milk"))

(define-category CULL24000
  :mixins (CHEAT-10.6.1-1-1)
  :realization (:VERB "cull"))

(define-category CHEW23400
  :mixins (CHEW-39.2-1)
  :realization (:VERB "chew"))

(define-category CHOMP23400
  :mixins (CHEW-39.2-1)
  :realization (:VERB "chomp"))

(define-category CRUNCH23400
  :mixins (CHEW-39.2-1)
  :realization (:VERB "crunch"))

(define-category GNAW23500
  :mixins (CHEW-39.2-1)
  :realization (:VERB "gnaw"))

(define-category GUM23400
  :mixins (CHEW-39.2-1)
  :realization (:VERB "gum"))

(define-category MUNCH23400
  :mixins (CHEW-39.2-1)
  :realization (:VERB "munch"))

(define-category NIBBLE23502
  :mixins (CHEW-39.2-1)
  :realization (:VERB "nibble"))

(define-category NIBBLE23500
  :mixins (CHEW-39.2-1)
  :realization (:VERB "nibble"))

(define-category PICK23400
  :mixins (CHEW-39.2-1)
  :realization (:VERB "pick"))

(define-category PECK23401
  :mixins (CHEW-39.2-1)
  :realization (:VERB "peck"))

(define-category LICK23500
  :mixins (CHEW-39.2-1)
  :realization (:VERB "lick"))

(define-category SIP23400
  :mixins (CHEW-39.2-2)
  :realization (:VERB "sip"))

(define-category SLURP23400
  :mixins (CHEW-39.2-2)
  :realization (:VERB "slurp"))

(define-category SUCK23404
  :mixins (CHEW-39.2-2)
  :realization (:VERB "suck"))

(define-category CHAT23200
  :mixins (CHIT_CHAT-37.6)
  :realization (:VERB "chat"))

(define-category CHATTER23200
  :mixins (CHIT_CHAT-37.6)
  :realization (:VERB "chatter"))

(define-category CHATTER23201
  :mixins (CHIT_CHAT-37.6)
  :realization (:VERB "chatter"))

(define-category CHITCHAT23200
  :mixins (CHIT_CHAT-37.6)
  :realization (:VERB "chitchat"))

(define-category CONFER23200
  :mixins (CHIT_CHAT-37.6)
  :realization (:VERB "confer"))

(define-category CONVERSE23200
  :mixins (CHIT_CHAT-37.6)
  :realization (:VERB "converse"))

(define-category FLIRT23200
  :mixins (CHIT_CHAT-37.6)
  :realization (:VERB "flirt"))

(define-category GAB23200
  :mixins (CHIT_CHAT-37.6)
  :realization (:VERB "gab"))

(define-category GOSSIP23201
  :mixins (CHIT_CHAT-37.6)
  :realization (:VERB "gossip"))

(define-category GOSSIP23200
  :mixins (CHIT_CHAT-37.6)
  :realization (:VERB "gossip"))

(define-category JEST23200
  :mixins (CHIT_CHAT-37.6)
  :realization (:VERB "jest"))

(define-category JOKE23200
  :mixins (CHIT_CHAT-37.6)
  :realization (:VERB "joke"))

(define-category PALAVER23200
  :mixins (CHIT_CHAT-37.6)
  :realization (:VERB "palaver"))

(define-category RAP23200
  :mixins (CHIT_CHAT-37.6)
  :realization (:VERB "rap"))

(define-category SCHMOOZE23200
  :mixins (CHIT_CHAT-37.6)
  :realization (:VERB "schmooze"))

(define-category YAK23200
  :mixins (CHIT_CHAT-37.6)
  :realization (:VERB "yak"))

(define-category ARGUE23200
  :mixins (CHIT_CHAT-37.6-1)
  :realization (:VERB "argue"))

(define-category CLASSIFY23100
  :mixins (CLASSIFY-29.10)
  :realization (:VERB "classify"))

(define-category CLASS23100
  :mixins (CLASSIFY-29.10)
  :realization (:VERB "class"))

(define-category CONSTELLATE23000
  :mixins (CLASSIFY-29.10)
  :realization (:VERB "constellate"))

(define-category CONSTELLATE23800
  :mixins (CLASSIFY-29.10)
  :realization (:VERB "constellate"))

(define-category SORT23100
  :mixins (CLASSIFY-29.10)
  :realization (:VERB "sort"))

(define-category ISOLATE23002
  :mixins (CLASSIFY-29.10)
  :realization (:VERB "isolate"))

(define-category RECLASSIFY23100
  :mixins (CLASSIFY-29.10)
  :realization (:VERB "reclassify"))

(define-category GROUP23100
  :mixins (CLASSIFY-29.10)
  :realization (:VERB "group"))

(define-category REGROUP23100
  :mixins (CLASSIFY-29.10)
  :realization (:VERB "regroup"))

(define-category BRACKET23100
  :mixins (CLASSIFY-29.10)
  :realization (:VERB "bracket"))

(define-category LUMP23113
  :mixins (CLASSIFY-29.10)
  :realization (:VERB "lump"))

(define-category CHUNK23113
  :mixins (CLASSIFY-29.10)
  :realization (:VERB "chunk"))

(define-category GRADE23103
  :mixins (CLASSIFY-29.10)
  :realization (:VERB "grade"))

(define-category NUMBER23200
  :mixins (CLASSIFY-29.10)
  :realization (:VERB "number"))

(define-category CATALOGUE23100
  :mixins (CLASSIFY-29.10)
  :realization (:VERB "catalogue"))

(define-category SORT_OUT23100
  :mixins (CLASSIFY-29.10)
  :realization (:VERB "sort_out"))

(define-category SEPARATE23100
  :mixins (CLASSIFY-29.10)
  :realization (:VERB "separate"))

(define-category SEED23100
  :mixins (CLASSIFY-29.10)
  :realization (:VERB "seed"))

(define-category CATEGORIZE23100
  :mixins (CLASSIFY-29.10)
  :realization (:VERB "categorize"))

(define-category CLEAN23502
  :mixins (CLEAR-10.3)
  :realization (:VERB "clean"))

(define-category CLEAN23504
  :mixins (CLEAR-10.3)
  :realization (:VERB "clean"))

(define-category CLEAN24200
  :mixins (CLEAR-10.3)
  :realization (:VERB "clean"))

(define-category CLEAN23001
  :mixins (CLEAR-10.3)
  :realization (:VERB "clean"))

(define-category HOLLOW23500
  :mixins (CLEAR-10.3)
  :realization (:VERB "hollow"))

(define-category CLEAR23008
  :mixins (CLEAR-10.3-1)
  :realization (:VERB "clear"))

(define-category CLEAR23010
  :mixins (CLEAR-10.3-1)
  :realization (:VERB "clear"))

(define-category CLEAR23011
  :mixins (CLEAR-10.3-1)
  :realization (:VERB "clear"))

(define-category CLEAR23905
  :mixins (CLEAR-10.3-1)
  :realization (:VERB "clear"))

(define-category CLEAR23001
  :mixins (CLEAR-10.3-1)
  :realization (:VERB "clear"))

(define-category CLEAR24300
  :mixins (CLEAR-10.3-1)
  :realization (:VERB "clear"))

(define-category CLEAR23002
  :mixins (CLEAR-10.3-1)
  :realization (:VERB "clear"))

(define-category DRAIN23001
  :mixins (CLEAR-10.3-1)
  :realization (:VERB "drain"))

(define-category DRAIN23800
  :mixins (CLEAR-10.3-1)
  :realization (:VERB "drain"))

(define-category EMPTY23500
  :mixins (CLEAR-10.3-1)
  :realization (:VERB "empty"))

(define-category EMPTY23000
  :mixins (CLEAR-10.3-1)
  :realization (:VERB "empty"))

(define-category EMPTY23001
  :mixins (CLEAR-10.3-1)
  :realization (:VERB "empty"))

(define-category ADHERE23501
  :mixins (CLING-22.5)
  :realization (:VERB "adhere"))

(define-category CLEAVE23502
  :mixins (CLING-22.5)
  :realization (:VERB "cleave"))

(define-category CLING23502
  :mixins (CLING-22.5)
  :realization (:VERB "cling"))

(define-category CLING23500
  :mixins (CLING-22.5)
  :realization (:VERB "cling"))

(define-category COGNISE23100
  :mixins (COGNIZE-85)
  :realization (:VERB "cognise"))

(define-category COGNIZE23100
  :mixins (COGNIZE-85)
  :realization (:VERB "cognize"))

(define-category LOOP23500
  :mixins (COIL-9.6)
  :realization (:VERB "loop"))

(define-category LOOP23600
  :mixins (COIL-9.6)
  :realization (:VERB "loop"))

(define-category ROLL23500
  :mixins (COIL-9.6)
  :realization (:VERB "roll"))

(define-category ROTATE23801
  :mixins (COIL-9.6)
  :realization (:VERB "rotate"))

(define-category SPIN23802
  :mixins (COIL-9.6)
  :realization (:VERB "spin"))

(define-category SWIRL23801
  :mixins (COIL-9.6)
  :realization (:VERB "swirl"))

(define-category TWINE23503
  :mixins (COIL-9.6)
  :realization (:VERB "twine"))

(define-category WHIRL23802
  :mixins (COIL-9.6)
  :realization (:VERB "whirl"))

(define-category WIND23506
  :mixins (COIL-9.6)
  :realization (:VERB "wind"))

(define-category CURL23500
  :mixins (COIL-9.6-1)
  :realization (:VERB "curl"))

(define-category CURL23501
  :mixins (COIL-9.6-1)
  :realization (:VERB "curl"))

(define-category CURL23800
  :mixins (COIL-9.6-1)
  :realization (:VERB "curl"))

(define-category COIL23500
  :mixins (COIL-9.6-1)
  :realization (:VERB "coil"))

(define-category SWING23803
  :mixins (COIL-9.6-1)
  :realization (:VERB "swing"))

(define-category SWING23802
  :mixins (COIL-9.6-1)
  :realization (:VERB "swing"))

(define-category TWIRL23801
  :mixins (COIL-9.6-1)
  :realization (:VERB "twirl"))

(define-category TWIST23000
  :mixins (COIL-9.6-1)
  :realization (:VERB "twist"))

(define-category COLOR23601
  :mixins (COLORING-24)
  :realization (:VERB "color"))

(define-category COLOR23000
  :mixins (COLORING-24)
  :realization (:VERB "color"))

(define-category DISTEMPER23600
  :mixins (COLORING-24)
  :realization (:VERB "distemper"))

(define-category DYE23000
  :mixins (COLORING-24)
  :realization (:VERB "dye"))

(define-category ENAMEL23600
  :mixins (COLORING-24)
  :realization (:VERB "enamel"))

(define-category GLAZE23500
  :mixins (COLORING-24)
  :realization (:VERB "glaze"))

(define-category JAPAN23600
  :mixins (COLORING-24)
  :realization (:VERB "japan"))

(define-category LACQUER23600
  :mixins (COLORING-24)
  :realization (:VERB "lacquer"))

(define-category PAINT23500
  :mixins (COLORING-24)
  :realization (:VERB "paint"))

(define-category SHELLAC23500
  :mixins (COLORING-24)
  :realization (:VERB "shellac"))

(define-category STAIN23004
  :mixins (COLORING-24)
  :realization (:VERB "stain"))

(define-category STAIN23000
  :mixins (COLORING-24)
  :realization (:VERB "stain"))

(define-category STAIN23001
  :mixins (COLORING-24)
  :realization (:VERB "stain"))

(define-category STARCH23000
  :mixins (COLORING-24)
  :realization (:VERB "starch"))

(define-category TINT23000
  :mixins (COLORING-24)
  :realization (:VERB "tint"))

(define-category VARNISH23500
  :mixins (COLORING-24)
  :realization (:VERB "varnish"))

(define-category BAIT24100
  :mixins (COMPEL-59.1)
  :realization (:VERB "bait"))

(define-category BRIBE24000
  :mixins (COMPEL-59.1)
  :realization (:VERB "bribe"))

(define-category COMPEL24100
  :mixins (COMPEL-59.1)
  :realization (:VERB "compel"))

(define-category CONVINCE23200
  :mixins (COMPEL-59.1)
  :realization (:VERB "convince"))

(define-category COMMANDEER23500
  :mixins (COMPEL-59.1)
  :realization (:VERB "commandeer"))

(define-category DRAGOON24100
  :mixins (COMPEL-59.1)
  :realization (:VERB "dragoon"))

(define-category GOAD23201
  :mixins (COMPEL-59.1)
  :realization (:VERB "goad"))

(define-category GOAD23501
  :mixins (COMPEL-59.1)
  :realization (:VERB "goad"))

(define-category GOAD23500
  :mixins (COMPEL-59.1)
  :realization (:VERB "goad"))

(define-category GOAD23700
  :mixins (COMPEL-59.1)
  :realization (:VERB "goad"))

(define-category HOUND23800
  :mixins (COMPEL-59.1)
  :realization (:VERB "hound"))

(define-category IMPEL23600
  :mixins (COMPEL-59.1)
  :realization (:VERB "impel"))

(define-category INDUCE23200
  :mixins (COMPEL-59.1)
  :realization (:VERB "induce"))

(define-category LEAD23200
  :mixins (COMPEL-59.1)
  :realization (:VERB "lead"))

(define-category MOTIVATE23600
  :mixins (COMPEL-59.1)
  :realization (:VERB "motivate"))

(define-category OBLIGATE24100
  :mixins (COMPEL-59.1)
  :realization (:VERB "obligate"))

(define-category OBLIGE24100
  :mixins (COMPEL-59.1)
  :realization (:VERB "oblige"))

(define-category PALAVER23201
  :mixins (COMPEL-59.1)
  :realization (:VERB "palaver"))

(define-category PERSUADE23200
  :mixins (COMPEL-59.1)
  :realization (:VERB "persuade"))

(define-category RAILROAD24100
  :mixins (COMPEL-59.1)
  :realization (:VERB "railroad"))

(define-category RUSH23001
  :mixins (COMPEL-59.1)
  :realization (:VERB "rush"))

(define-category SANDBAG24102
  :mixins (COMPEL-59.1)
  :realization (:VERB "sandbag"))

(define-category STEAMROLLER23300
  :mixins (COMPEL-59.1)
  :realization (:VERB "steamroller"))

(define-category STEAMROLLER24101
  :mixins (COMPEL-59.1)
  :realization (:VERB "steamroller"))

(define-category SUBORN23200
  :mixins (COMPEL-59.1)
  :realization (:VERB "suborn"))

(define-category SUBORN24100
  :mixins (COMPEL-59.1)
  :realization (:VERB "suborn"))

(define-category SWAY24100
  :mixins (COMPEL-59.1)
  :realization (:VERB "sway"))

(define-category WHEEDLE23200
  :mixins (COMPEL-59.1)
  :realization (:VERB "wheedle"))

(define-category BELLYACHE23200
  :mixins (COMPLAIN-37.8)
  :realization (:VERB "bellyache"))

(define-category BITCH23201
  :mixins (COMPLAIN-37.8)
  :realization (:VERB "bitch"))

(define-category BOAST23200
  :mixins (COMPLAIN-37.8)
  :realization (:VERB "boast"))

(define-category BRAG23200
  :mixins (COMPLAIN-37.8)
  :realization (:VERB "brag"))

(define-category CATERWAUL23200
  :mixins (COMPLAIN-37.8)
  :realization (:VERB "caterwaul"))

(define-category COMPLAIN23200
  :mixins (COMPLAIN-37.8)
  :realization (:VERB "complain"))

(define-category CRAB23200
  :mixins (COMPLAIN-37.8)
  :realization (:VERB "crab"))

(define-category GRIPE23200
  :mixins (COMPLAIN-37.8)
  :realization (:VERB "gripe"))

(define-category GROUCH23200
  :mixins (COMPLAIN-37.8)
  :realization (:VERB "grouch"))

(define-category GROUSE23300
  :mixins (COMPLAIN-37.8)
  :realization (:VERB "grouse"))

(define-category GRUMBLE23200
  :mixins (COMPLAIN-37.8)
  :realization (:VERB "grumble"))

(define-category GRUMBLE23201
  :mixins (COMPLAIN-37.8)
  :realization (:VERB "grumble"))

(define-category KVETCH23200
  :mixins (COMPLAIN-37.8)
  :realization (:VERB "kvetch"))

(define-category OBJECT23200
  :mixins (COMPLAIN-37.8)
  :realization (:VERB "object"))

(define-category WHINE23200
  :mixins (COMPLAIN-37.8)
  :realization (:VERB "whine"))

(define-category ACCOMPLISH24100
  :mixins (COMPLETE-55.2)
  :realization (:VERB "accomplish"))

(define-category ACCOMPLISH23600
  :mixins (COMPLETE-55.2)
  :realization (:VERB "accomplish"))

(define-category ACHIEVE24100
  :mixins (COMPLETE-55.2)
  :realization (:VERB "achieve"))

(define-category COMPLETE24100
  :mixins (COMPLETE-55.2-1)
  :realization (:VERB "complete"))

(define-category COMPLETE23000
  :mixins (COMPLETE-55.2-1)
  :realization (:VERB "complete"))

(define-category COMPLETE23002
  :mixins (COMPLETE-55.2-1)
  :realization (:VERB "complete"))

(define-category DISCONTINUE24200
  :mixins (COMPLETE-55.2-1)
  :realization (:VERB "discontinue"))

(define-category QUIT24204
  :mixins (COMPLETE-55.2-1)
  :realization (:VERB "quit"))

(define-category APPRECIATE23100
  :mixins (COMPREHEND-87.2)
  :realization (:VERB "appreciate"))

(define-category MISCONSTRUE23101
  :mixins (COMPREHEND-87.2)
  :realization (:VERB "misconstrue"))

(define-category MISINTERPRET23102
  :mixins (COMPREHEND-87.2)
  :realization (:VERB "misinterpret"))

(define-category MISUNDERSTAND23101
  :mixins (COMPREHEND-87.2)
  :realization (:VERB "misunderstand"))

(define-category MISAPPREHEND23101
  :mixins (COMPREHEND-87.2)
  :realization (:VERB "misapprehend"))

(define-category GRASP23100
  :mixins (COMPREHEND-87.2-1)
  :realization (:VERB "grasp"))

(define-category COMPREHEND23100
  :mixins (COMPREHEND-87.2-1)
  :realization (:VERB "comprehend"))

(define-category APPREHEND23100
  :mixins (COMPREHEND-87.2-1)
  :realization (:VERB "apprehend"))

(define-category FOLLOW23114
  :mixins (COMPREHEND-87.2-1)
  :realization (:VERB "follow"))

(define-category FATHOM23100
  :mixins (COMPREHEND-87.2-1)
  :realization (:VERB "fathom"))

(define-category GET23109
  :mixins (COMPREHEND-87.2-1)
  :realization (:VERB "get"))

(define-category READ23109
  :mixins (COMPREHEND-87.2-1)
  :realization (:VERB "read"))

(define-category READ23102
  :mixins (COMPREHEND-87.2-1)
  :realization (:VERB "read"))

(define-category REALIZE23101
  :mixins (COMPREHEND-87.2-1)
  :realization (:VERB "realize"))

(define-category RECOGNISE23101
  :mixins (COMPREHEND-87.2-1)
  :realization (:VERB "recognise"))

(define-category RECOGNIZE23101
  :mixins (COMPREHEND-87.2-1)
  :realization (:VERB "recognize"))

(define-category SEE23101
  :mixins (COMPREHEND-87.2-1-1)
  :realization (:VERB "see"))

(define-category KNOW23115
  :mixins (COMPREHEND-87.2-1-1-1)
  :realization (:VERB "know"))

(define-category UNDERSTAND23103
  :mixins (COMPREHEND-87.2-1-1-1)
  :realization (:VERB "understand"))

(define-category UNDERSTAND23101
  :mixins (COMPREHEND-87.2-1-1-1)
  :realization (:VERB "understand"))

(define-category UNDERSTAND23100
  :mixins (COMPREHEND-87.2-1-1-1)
  :realization (:VERB "understand"))

(define-category COMPRISE24203
  :mixins (COMPRISE-107.2)
  :realization (:VERB "comprise"))

(define-category COMPOSE24200
  :mixins (COMPRISE-107.2)
  :realization (:VERB "compose"))

(define-category MAKE23605
  :mixins (COMPRISE-107.2)
  :realization (:VERB "make"))

(define-category MAKE_UP24200
  :mixins (COMPRISE-107.2)
  :realization (:VERB "make_up"))

(define-category CONSTITUTE24200
  :mixins (COMPRISE-107.2)
  :realization (:VERB "constitute"))

(define-category FORM24200
  :mixins (COMPRISE-107.2)
  :realization (:VERB "form"))

(define-category COMPRISE24201
  :mixins (COMPRISE-107.2-1)
  :realization (:VERB "comprise"))

(define-category CONSIST24201
  :mixins (COMPRISE-107.2-1)
  :realization (:VERB "consist"))

(define-category ENCOMPASS24200
  :mixins (COMPRISE-107.2-1)
  :realization (:VERB "encompass"))

(define-category CONTAIN24200
  :mixins (COMPRISE-107.2-1)
  :realization (:VERB "contain"))

(define-category BLOCK23900
  :mixins (CONCEALMENT-16)
  :realization (:VERB "block"))

(define-category CLOISTER23000
  :mixins (CONCEALMENT-16)
  :realization (:VERB "cloister"))

(define-category CLOISTER24200
  :mixins (CONCEALMENT-16)
  :realization (:VERB "cloister"))

(define-category CONCEAL23900
  :mixins (CONCEALMENT-16)
  :realization (:VERB "conceal"))

(define-category CONCEAL23901
  :mixins (CONCEALMENT-16)
  :realization (:VERB "conceal"))

(define-category IMPOUND23500
  :mixins (CONCEALMENT-16)
  :realization (:VERB "impound"))

(define-category ISOLATE23000
  :mixins (CONCEALMENT-16)
  :realization (:VERB "isolate"))

(define-category QUARANTINE23000
  :mixins (CONCEALMENT-16)
  :realization (:VERB "quarantine"))

(define-category REPRESS23100
  :mixins (CONCEALMENT-16)
  :realization (:VERB "repress"))

(define-category SCREEN23300
  :mixins (CONCEALMENT-16)
  :realization (:VERB "screen"))

(define-category SCREEN23500
  :mixins (CONCEALMENT-16)
  :realization (:VERB "screen"))

(define-category SECLUDE23000
  :mixins (CONCEALMENT-16)
  :realization (:VERB "seclude"))

(define-category SEQUESTER23000
  :mixins (CONCEALMENT-16)
  :realization (:VERB "sequester"))

(define-category SHELTER24200
  :mixins (CONCEALMENT-16)
  :realization (:VERB "shelter"))

(define-category SUPPRESS23100
  :mixins (CONCEALMENT-16)
  :realization (:VERB "suppress"))

(define-category HIDE23900
  :mixins (CONCEALMENT-16-1)
  :realization (:VERB "hide"))

(define-category CONDUCT24100
  :mixins (CONDUCT-111.1)
  :realization (:VERB "conduct"))

(define-category GIVE23612
  :mixins (CONDUCT-111.1)
  :realization (:VERB "give"))

(define-category GIVE23602
  :mixins (CONDUCT-111.1)
  :realization (:VERB "give"))

(define-category HEAD23802
  :mixins (CONDUCT-111.1)
  :realization (:VERB "head"))

(define-category HEAD24100
  :mixins (CONDUCT-111.1)
  :realization (:VERB "head"))

(define-category HOLD23600
  :mixins (CONDUCT-111.1)
  :realization (:VERB "hold"))

(define-category HOST23400
  :mixins (CONDUCT-111.1)
  :realization (:VERB "host"))

(define-category RUN23600
  :mixins (CONDUCT-111.1)
  :realization (:VERB "run"))

(define-category RUN23007
  :mixins (CONDUCT-111.1)
  :realization (:VERB "run"))

(define-category RUN24102
  :mixins (CONDUCT-111.1)
  :realization (:VERB "run"))

(define-category SPEARHEAD24100
  :mixins (CONDUCT-111.1)
  :realization (:VERB "spearhead"))

(define-category THROW23608
  :mixins (CONDUCT-111.1)
  :realization (:VERB "throw"))

(define-category CONFESS23201
  :mixins (CONFESS-37.10)
  :realization (:VERB "confess"))

(define-category CONFESS23200
  :mixins (CONFESS-37.10)
  :realization (:VERB "confess"))

(define-category ADMIT23200
  :mixins (CONFESS-37.10)
  :realization (:VERB "admit"))

(define-category ACKNOWLEDGE23200
  :mixins (CONFESS-37.10)
  :realization (:VERB "acknowledge"))

(define-category PROCLAIM23200
  :mixins (CONFESS-37.10)
  :realization (:VERB "proclaim"))

(define-category REVEAL23200
  :mixins (CONFESS-37.10)
  :realization (:VERB "reveal"))

(define-category CHARGE24005
  :mixins (CONFINE-92)
  :realization (:VERB "charge"))

(define-category INSTITUTIONALIZE24000
  :mixins (CONFINE-92)
  :realization (:VERB "institutionalize"))

(define-category INCARCERATE24100
  :mixins (CONFINE-92)
  :realization (:VERB "incarcerate"))

(define-category HOSPITALIZE24000
  :mixins (CONFINE-92)
  :realization (:VERB "hospitalize"))

(define-category DETAIN24100
  :mixins (CONFINE-92)
  :realization (:VERB "detain"))

(define-category JAIL24100
  :mixins (CONFINE-92)
  :realization (:VERB "jail"))

(define-category IMPRISON24101
  :mixins (CONFINE-92)
  :realization (:VERB "imprison"))

(define-category IMPRISON24100
  :mixins (CONFINE-92)
  :realization (:VERB "imprison"))

(define-category JUG24100
  :mixins (CONFINE-92)
  :realization (:VERB "jug"))

(define-category IMMURE24100
  :mixins (CONFINE-92)
  :realization (:VERB "immure"))

(define-category COMMIT24002
  :mixins (CONFINE-92-1)
  :realization (:VERB "commit"))

(define-category RECOMMIT24000
  :mixins (CONFINE-92-1)
  :realization (:VERB "recommit"))

(define-category RECOMMIT24101
  :mixins (CONFINE-92-1)
  :realization (:VERB "recommit"))

(define-category SEND24000
  :mixins (CONFINE-92-1)
  :realization (:VERB "send"))

(define-category CONFINE24100
  :mixins (CONFINE-92-1)
  :realization (:VERB "confine"))

(define-category FACE23203
  :mixins (CONFRONT-98)
  :realization (:VERB "face"))

(define-category FACE23300
  :mixins (CONFRONT-98)
  :realization (:VERB "face"))

(define-category FACE23200
  :mixins (CONFRONT-98)
  :realization (:VERB "face"))

(define-category CONFRONT23203
  :mixins (CONFRONT-98)
  :realization (:VERB "confront"))

(define-category CONFRONT23200
  :mixins (CONFRONT-98)
  :realization (:VERB "confront"))

(define-category CONFRONT23300
  :mixins (CONFRONT-98)
  :realization (:VERB "confront"))

(define-category UNDERTAKE24101
  :mixins (CONFRONT-98)
  :realization (:VERB "undertake"))

(define-category TACKLE24100
  :mixins (CONFRONT-98)
  :realization (:VERB "tackle"))

(define-category TAKE_ON24100
  :mixins (CONFRONT-98)
  :realization (:VERB "take_on"))

(define-category GO_ABOUT24100
  :mixins (CONFRONT-98)
  :realization (:VERB "go_about"))

(define-category APPROACH24100
  :mixins (CONFRONT-98)
  :realization (:VERB "approach"))

(define-category BRAVE24200
  :mixins (CONFRONT-98)
  :realization (:VERB "brave"))

(define-category HANDLE24100
  :mixins (CONFRONT-98)
  :realization (:VERB "handle"))

(define-category INTERCEPT23500
  :mixins (CONFRONT-98)
  :realization (:VERB "intercept"))

(define-category TARGET23300
  :mixins (CONFRONT-98)
  :realization (:VERB "target"))

(define-category RIVAL23300
  :mixins (CONFRONT-98)
  :realization (:VERB "rival"))

(define-category COUNTER24100
  :mixins (CONFRONT-98)
  :realization (:VERB "counter"))

(define-category COMBAT23300
  :mixins (CONFRONT-98)
  :realization (:VERB "combat"))

(define-category BREAST23300
  :mixins (CONFRONT-98)
  :realization (:VERB "breast"))

(define-category MOVE_IN_ON24100
  :mixins (CONFRONT-98)
  :realization (:VERB "move_in_on"))

(define-category MOVE_IN_ON23800
  :mixins (CONFRONT-98)
  :realization (:VERB "move_in_on"))

(define-category ADMIT23200
  :mixins (CONJECTURE-29.5)
  :realization (:VERB "admit"))

(define-category AFFIRM23200
  :mixins (CONJECTURE-29.5)
  :realization (:VERB "affirm"))

(define-category ASSERT23200
  :mixins (CONJECTURE-29.5)
  :realization (:VERB "assert"))

(define-category CONJECTURE23100
  :mixins (CONJECTURE-29.5)
  :realization (:VERB "conjecture"))

(define-category DENY23204
  :mixins (CONJECTURE-29.5)
  :realization (:VERB "deny"))

(define-category DETERMINE23200
  :mixins (CONJECTURE-29.5)
  :realization (:VERB "determine"))

(define-category HOLD23211
  :mixins (CONJECTURE-29.5)
  :realization (:VERB "hold"))

(define-category HOLD23101
  :mixins (CONJECTURE-29.5)
  :realization (:VERB "hold"))

(define-category PROGNOSTICATE23200
  :mixins (CONJECTURE-29.5)
  :realization (:VERB "prognosticate"))

(define-category REPUTE23100
  :mixins (CONJECTURE-29.5)
  :realization (:VERB "repute"))

(define-category SPECULATE23200
  :mixins (CONJECTURE-29.5)
  :realization (:VERB "speculate"))

(define-category SPECULATE23101
  :mixins (CONJECTURE-29.5)
  :realization (:VERB "speculate"))

(define-category ANTICIPATE23100
  :mixins (CONJECTURE-29.5-1)
  :realization (:VERB "anticipate"))

(define-category BELIEVE23103
  :mixins (CONJECTURE-29.5-1)
  :realization (:VERB "believe"))

(define-category BELIEVE23104
  :mixins (CONJECTURE-29.5-1)
  :realization (:VERB "believe"))

(define-category EXPECT23100
  :mixins (CONJECTURE-29.5-1)
  :realization (:VERB "expect"))

(define-category FORESEE23100
  :mixins (CONJECTURE-29.5-1)
  :realization (:VERB "foresee"))

(define-category FORETELL23200
  :mixins (CONJECTURE-29.5-1)
  :realization (:VERB "foretell"))

(define-category GUESS23101
  :mixins (CONJECTURE-29.5-1)
  :realization (:VERB "guess"))

(define-category INFER23200
  :mixins (CONJECTURE-29.5-1)
  :realization (:VERB "infer"))

(define-category INFER23100
  :mixins (CONJECTURE-29.5-1)
  :realization (:VERB "infer"))

(define-category PRESUME23100
  :mixins (CONJECTURE-29.5-1)
  :realization (:VERB "presume"))

(define-category TRUST23102
  :mixins (CONJECTURE-29.5-1)
  :realization (:VERB "trust"))

(define-category FEEL23100
  :mixins (CONJECTURE-29.5-2)
  :realization (:VERB "feel"))

(define-category DEEM23100
  :mixins (CONSIDER-29.9-1)
  :realization (:VERB "deem"))

(define-category ESTEEM23100
  :mixins (CONSIDER-29.9-1)
  :realization (:VERB "esteem"))

(define-category RATE23100
  :mixins (CONSIDER-29.9-1)
  :realization (:VERB "rate"))

(define-category RECKON23100
  :mixins (CONSIDER-29.9-1)
  :realization (:VERB "reckon"))

(define-category REPORT23201
  :mixins (CONSIDER-29.9-1-1)
  :realization (:VERB "report"))

(define-category CONSIDER23202
  :mixins (CONSIDER-29.9-1-1-1)
  :realization (:VERB "consider"))

(define-category POSTULATE23100
  :mixins (CONSIDER-29.9-2)
  :realization (:VERB "postulate"))

(define-category ALLY24100
  :mixins (CONSPIRE-71)
  :realization (:VERB "ally"))

(define-category COLLABORATE24101
  :mixins (CONSPIRE-71)
  :realization (:VERB "collaborate"))

(define-category COLLABORATE24100
  :mixins (CONSPIRE-71)
  :realization (:VERB "collaborate"))

(define-category COLLUDE23100
  :mixins (CONSPIRE-71)
  :realization (:VERB "collude"))

(define-category CONSPIRE23101
  :mixins (CONSPIRE-71)
  :realization (:VERB "conspire"))

(define-category CONSPIRE23100
  :mixins (CONSPIRE-71)
  :realization (:VERB "conspire"))

(define-category LEGISLATE24100
  :mixins (CONSPIRE-71)
  :realization (:VERB "legislate"))

(define-category PARTNER24100
  :mixins (CONSPIRE-71)
  :realization (:VERB "partner"))

(define-category PROTEST24100
  :mixins (CONSPIRE-71)
  :realization (:VERB "protest"))

(define-category PROTEST23200
  :mixins (CONSPIRE-71)
  :realization (:VERB "protest"))

(define-category REBEL24100
  :mixins (CONSPIRE-71)
  :realization (:VERB "rebel"))

(define-category RETALIATE23300
  :mixins (CONSPIRE-71)
  :realization (:VERB "retaliate"))

(define-category SCHEME23100
  :mixins (CONSPIRE-71)
  :realization (:VERB "scheme"))

(define-category TEAM_UP23300
  :mixins (CONSPIRE-71)
  :realization (:VERB "team_up"))

(define-category BEFRIEND24100
  :mixins (CONSPIRE-71)
  :realization (:VERB "befriend"))

(define-category USE23400
  :mixins (CONSUME-66)
  :realization (:VERB "use"))

(define-category CONSUME23401
  :mixins (CONSUME-66)
  :realization (:VERB "consume"))

(define-category REUSE23400
  :mixins (CONSUME-66-1)
  :realization (:VERB "reuse"))

(define-category MISSPEND24000
  :mixins (CONSUME-66-1)
  :realization (:VERB "misspend"))

(define-category SPEND24001
  :mixins (CONSUME-66-1)
  :realization (:VERB "spend"))

(define-category SPEND24000
  :mixins (CONSUME-66-1)
  :realization (:VERB "spend"))

(define-category SQUANDER23400
  :mixins (CONSUME-66-1)
  :realization (:VERB "squander"))

(define-category WASTE23405
  :mixins (CONSUME-66-1)
  :realization (:VERB "waste"))

(define-category WASTE24000
  :mixins (CONSUME-66-1)
  :realization (:VERB "waste"))

(define-category CONTAIN24214
  :mixins (CONTAIN-15.4)
  :realization (:VERB "contain"))

(define-category CONTAIN24213
  :mixins (CONTAIN-15.4)
  :realization (:VERB "contain"))

(define-category CONTAIN24200
  :mixins (CONTAIN-15.4)
  :realization (:VERB "contain"))

(define-category HOLD24214
  :mixins (CONTAIN-15.4)
  :realization (:VERB "hold"))

(define-category HOLD24205
  :mixins (CONTAIN-15.4)
  :realization (:VERB "hold"))

(define-category HOLD24213
  :mixins (CONTAIN-15.4)
  :realization (:VERB "hold"))

(define-category BLANKET24200
  :mixins (CONTIGUOUS_LOCATION-47.8)
  :realization (:VERB "blanket"))

(define-category BLANKET23500
  :mixins (CONTIGUOUS_LOCATION-47.8)
  :realization (:VERB "blanket"))

(define-category BORDER23500
  :mixins (CONTIGUOUS_LOCATION-47.8)
  :realization (:VERB "border"))

(define-category BORDER24200
  :mixins (CONTIGUOUS_LOCATION-47.8)
  :realization (:VERB "border"))

(define-category BORDER23501
  :mixins (CONTIGUOUS_LOCATION-47.8)
  :realization (:VERB "border"))

(define-category BOUND24200
  :mixins (CONTIGUOUS_LOCATION-47.8)
  :realization (:VERB "bound"))

(define-category BRIDGE24200
  :mixins (CONTIGUOUS_LOCATION-47.8)
  :realization (:VERB "bridge"))

(define-category CAP24200
  :mixins (CONTIGUOUS_LOCATION-47.8)
  :realization (:VERB "cap"))

(define-category COVER23501
  :mixins (CONTIGUOUS_LOCATION-47.8)
  :realization (:VERB "cover"))

(define-category EDGE23500
  :mixins (CONTIGUOUS_LOCATION-47.8)
  :realization (:VERB "edge"))

(define-category ENCIRCLE23512
  :mixins (CONTIGUOUS_LOCATION-47.8)
  :realization (:VERB "encircle"))

(define-category ENCLOSE23500
  :mixins (CONTIGUOUS_LOCATION-47.8)
  :realization (:VERB "enclose"))

(define-category ENCLOSE23501
  :mixins (CONTIGUOUS_LOCATION-47.8)
  :realization (:VERB "enclose"))

(define-category FENCE23500
  :mixins (CONTIGUOUS_LOCATION-47.8)
  :realization (:VERB "fence"))

(define-category FILL24200
  :mixins (CONTIGUOUS_LOCATION-47.8)
  :realization (:VERB "fill"))

(define-category FLANK24200
  :mixins (CONTIGUOUS_LOCATION-47.8)
  :realization (:VERB "flank"))

(define-category FORGO24200
  :mixins (CONTIGUOUS_LOCATION-47.8)
  :realization (:VERB "forgo"))

(define-category FRAME24200
  :mixins (CONTIGUOUS_LOCATION-47.8)
  :realization (:VERB "frame"))

(define-category FRAME23500
  :mixins (CONTIGUOUS_LOCATION-47.8)
  :realization (:VERB "frame"))

(define-category HEAD24200
  :mixins (CONTIGUOUS_LOCATION-47.8)
  :realization (:VERB "head"))

(define-category HUG23500
  :mixins (CONTIGUOUS_LOCATION-47.8)
  :realization (:VERB "hug"))

(define-category LINE24200
  :mixins (CONTIGUOUS_LOCATION-47.8)
  :realization (:VERB "line"))

(define-category OVERHANG24200
  :mixins (CONTIGUOUS_LOCATION-47.8)
  :realization (:VERB "overhang"))

(define-category OVERHANG24201
  :mixins (CONTIGUOUS_LOCATION-47.8)
  :realization (:VERB "overhang"))

(define-category PRECEDE23800
  :mixins (CONTIGUOUS_LOCATION-47.8)
  :realization (:VERB "precede"))

(define-category PRECEDE24201
  :mixins (CONTIGUOUS_LOCATION-47.8)
  :realization (:VERB "precede"))

(define-category PREDATE24201
  :mixins (CONTIGUOUS_LOCATION-47.8)
  :realization (:VERB "predate"))

(define-category PREDATE24200
  :mixins (CONTIGUOUS_LOCATION-47.8)
  :realization (:VERB "predate"))

(define-category RIM24200
  :mixins (CONTIGUOUS_LOCATION-47.8)
  :realization (:VERB "rim"))

(define-category RING23503
  :mixins (CONTIGUOUS_LOCATION-47.8)
  :realization (:VERB "ring"))

(define-category SKIRT23500
  :mixins (CONTIGUOUS_LOCATION-47.8)
  :realization (:VERB "skirt"))

(define-category SPAN24200
  :mixins (CONTIGUOUS_LOCATION-47.8)
  :realization (:VERB "span"))

(define-category STRADDLE24202
  :mixins (CONTIGUOUS_LOCATION-47.8)
  :realization (:VERB "straddle"))

(define-category STRADDLE24201
  :mixins (CONTIGUOUS_LOCATION-47.8)
  :realization (:VERB "straddle"))

(define-category SUPPORT23500
  :mixins (CONTIGUOUS_LOCATION-47.8)
  :realization (:VERB "support"))

(define-category SURMOUNT24200
  :mixins (CONTIGUOUS_LOCATION-47.8)
  :realization (:VERB "surmount"))

(define-category SURROUND23500
  :mixins (CONTIGUOUS_LOCATION-47.8)
  :realization (:VERB "surround"))

(define-category TOP24000
  :mixins (CONTIGUOUS_LOCATION-47.8)
  :realization (:VERB "top"))

(define-category UNDERLAY23400
  :mixins (CONTIGUOUS_LOCATION-47.8)
  :realization (:VERB "underlay"))

(define-category UNDERLAY23500
  :mixins (CONTIGUOUS_LOCATION-47.8)
  :realization (:VERB "underlay"))

(define-category UNDERLIE24201
  :mixins (CONTIGUOUS_LOCATION-47.8)
  :realization (:VERB "underlie"))

(define-category UNDERLIE24200
  :mixins (CONTIGUOUS_LOCATION-47.8)
  :realization (:VERB "underlie"))

(define-category ENSHROUD23500
  :mixins (CONTIGUOUS_LOCATION-47.8)
  :realization (:VERB "enshroud"))

(define-category VEIL23500
  :mixins (CONTIGUOUS_LOCATION-47.8)
  :realization (:VERB "veil"))

(define-category ABUT23500
  :mixins (CONTIGUOUS_LOCATION-47.8-1)
  :realization (:VERB "abut"))

(define-category ADJOIN23503
  :mixins (CONTIGUOUS_LOCATION-47.8-1)
  :realization (:VERB "adjoin"))

(define-category ADJOIN23502
  :mixins (CONTIGUOUS_LOCATION-47.8-1)
  :realization (:VERB "adjoin"))

(define-category CROSS23803
  :mixins (CONTIGUOUS_LOCATION-47.8-1)
  :realization (:VERB "cross"))

(define-category INTERSECT23800
  :mixins (CONTIGUOUS_LOCATION-47.8-1)
  :realization (:VERB "intersect"))

(define-category MEET23500
  :mixins (CONTIGUOUS_LOCATION-47.8-1)
  :realization (:VERB "meet"))

(define-category MEET24202
  :mixins (CONTIGUOUS_LOCATION-47.8-1)
  :realization (:VERB "meet"))

(define-category TOUCH23501
  :mixins (CONTIGUOUS_LOCATION-47.8-1)
  :realization (:VERB "touch"))

(define-category DOMINATE24202
  :mixins (CONTIGUOUS_LOCATION-47.8-2)
  :realization (:VERB "dominate"))

(define-category CONTINUE23010
  :mixins (CONTINUE-55.3)
  :realization (:VERB "continue"))

(define-category CONTINUE24211
  :mixins (CONTINUE-55.3)
  :realization (:VERB "continue"))

(define-category CONTINUE24212
  :mixins (CONTINUE-55.3)
  :realization (:VERB "continue"))

(define-category CONTINUE23200
  :mixins (CONTINUE-55.3)
  :realization (:VERB "continue"))

(define-category CONTINUE24201
  :mixins (CONTINUE-55.3)
  :realization (:VERB "continue"))

(define-category BETROTH23200
  :mixins (CONTRIBUTE-13.2)
  :realization (:VERB "betroth"))

(define-category FORGO24200
  :mixins (CONTRIBUTE-13.2)
  :realization (:VERB "forgo"))

(define-category REFER23800
  :mixins (CONTRIBUTE-13.2)
  :realization (:VERB "refer"))

(define-category RELINQUISH24100
  :mixins (CONTRIBUTE-13.2)
  :realization (:VERB "relinquish"))

(define-category RELINQUISH24001
  :mixins (CONTRIBUTE-13.2)
  :realization (:VERB "relinquish"))

(define-category REMIT24000
  :mixins (CONTRIBUTE-13.2)
  :realization (:VERB "remit"))

(define-category RESTORE24000
  :mixins (CONTRIBUTE-13.2)
  :realization (:VERB "restore"))

(define-category GIFT24000
  :mixins (CONTRIBUTE-13.2)
  :realization (:VERB "gift"))

(define-category HAND_OUT24000
  :mixins (CONTRIBUTE-13.2)
  :realization (:VERB "hand_out"))

(define-category PASS_OUT24000
  :mixins (CONTRIBUTE-13.2)
  :realization (:VERB "pass_out"))

(define-category SHELL_OUT24000
  :mixins (CONTRIBUTE-13.2)
  :realization (:VERB "shell_out"))

(define-category ABNEGATE23300
  :mixins (CONTRIBUTE-13.2)
  :realization (:VERB "abnegate"))

(define-category DISTRIBUTE24001
  :mixins (CONTRIBUTE-13.2-1)
  :realization (:VERB "distribute"))

(define-category DISTRIBUTE24100
  :mixins (CONTRIBUTE-13.2-1)
  :realization (:VERB "distribute"))

(define-category DISTRIBUTE23501
  :mixins (CONTRIBUTE-13.2-1)
  :realization (:VERB "distribute"))

(define-category DISTRIBUTE24000
  :mixins (CONTRIBUTE-13.2-1)
  :realization (:VERB "distribute"))

(define-category ADMINISTER22900
  :mixins (CONTRIBUTE-13.2-1-1)
  :realization (:VERB "administer"))

(define-category ADMINISTER24000
  :mixins (CONTRIBUTE-13.2-1-1)
  :realization (:VERB "administer"))

(define-category ADMINISTER24001
  :mixins (CONTRIBUTE-13.2-1-1)
  :realization (:VERB "administer"))

(define-category CIRCULARIZE23200
  :mixins (CONTRIBUTE-13.2-1-1)
  :realization (:VERB "circularize"))

(define-category CONTRIBUTE24002
  :mixins (CONTRIBUTE-13.2-1-1)
  :realization (:VERB "contribute"))

(define-category CONTRIBUTE24000
  :mixins (CONTRIBUTE-13.2-1-1)
  :realization (:VERB "contribute"))

(define-category DONATE24000
  :mixins (CONTRIBUTE-13.2-1-1)
  :realization (:VERB "donate"))

(define-category FORFEIT24000
  :mixins (CONTRIBUTE-13.2-1-1)
  :realization (:VERB "forfeit"))

(define-category RESUBMIT24000
  :mixins (CONTRIBUTE-13.2-1-1)
  :realization (:VERB "resubmit"))

(define-category SACRIFICE24001
  :mixins (CONTRIBUTE-13.2-1-1)
  :realization (:VERB "sacrifice"))

(define-category SACRIFICE24002
  :mixins (CONTRIBUTE-13.2-1-1)
  :realization (:VERB "sacrifice"))

(define-category SACRIFICE24000
  :mixins (CONTRIBUTE-13.2-1-1)
  :realization (:VERB "sacrifice"))

(define-category SUBMIT24001
  :mixins (CONTRIBUTE-13.2-1-1)
  :realization (:VERB "submit"))

(define-category SUBMIT23302
  :mixins (CONTRIBUTE-13.2-1-1)
  :realization (:VERB "submit"))

(define-category SUBMIT24000
  :mixins (CONTRIBUTE-13.2-1-1)
  :realization (:VERB "submit"))

(define-category SUBMIT23300
  :mixins (CONTRIBUTE-13.2-1-1)
  :realization (:VERB "submit"))

(define-category SURRENDER24000
  :mixins (CONTRIBUTE-13.2-1-1)
  :realization (:VERB "surrender"))

(define-category SURRENDER23300
  :mixins (CONTRIBUTE-13.2-1-1)
  :realization (:VERB "surrender"))

(define-category DISBURSE24000
  :mixins (CONTRIBUTE-13.2-2)
  :realization (:VERB "disburse"))

(define-category EXTEND24005
  :mixins (CONTRIBUTE-13.2-2)
  :realization (:VERB "extend"))

(define-category PROFFER24000
  :mixins (CONTRIBUTE-13.2-2)
  :realization (:VERB "proffer"))

(define-category TRANSFER23500
  :mixins (CONTRIBUTE-13.2-2)
  :realization (:VERB "transfer"))

(define-category TRANSFER24000
  :mixins (CONTRIBUTE-13.2-2)
  :realization (:VERB "transfer"))

(define-category REIMBURSE24001
  :mixins (CONTRIBUTE-13.2-2-1)
  :realization (:VERB "reimburse"))

(define-category REIMBURSE24000
  :mixins (CONTRIBUTE-13.2-2-1)
  :realization (:VERB "reimburse"))

(define-category ADVERT23201
  :mixins (CONVERT-26.6.2)
  :realization (:VERB "advert"))

(define-category COME_AROUND23100
  :mixins (CONVERT-26.6.2)
  :realization (:VERB "come_around"))

(define-category FALL23008
  :mixins (CONVERT-26.6.2)
  :realization (:VERB "fall"))

(define-category GET23000
  :mixins (CONVERT-26.6.2)
  :realization (:VERB "get"))

(define-category GET_AROUND23800
  :mixins (CONVERT-26.6.2)
  :realization (:VERB "get_around"))

(define-category GET_DOWN23000
  :mixins (CONVERT-26.6.2)
  :realization (:VERB "get_down"))

(define-category GO_BACK23000
  :mixins (CONVERT-26.6.2)
  :realization (:VERB "go_back"))

(define-category RESORT24111
  :mixins (CONVERT-26.6.2)
  :realization (:VERB "resort"))

(define-category RETURN23800
  :mixins (CONVERT-26.6.2)
  :realization (:VERB "return"))

(define-category REVERT23000
  :mixins (CONVERT-26.6.2)
  :realization (:VERB "revert"))

(define-category SETTLE_DOWN23000
  :mixins (CONVERT-26.6.2)
  :realization (:VERB "settle_down"))

(define-category TAKE24113
  :mixins (CONVERT-26.6.2)
  :realization (:VERB "take"))

(define-category TURN23814
  :mixins (CONVERT-26.6.2)
  :realization (:VERB "turn"))

(define-category RETURN23000
  :mixins (CONVERT-26.6.2-1)
  :realization (:VERB "return"))

(define-category RETURN23800
  :mixins (CONVERT-26.6.2-1)
  :realization (:VERB "return"))

(define-category REVERT23000
  :mixins (CONVERT-26.6.2-1)
  :realization (:VERB "revert"))

(define-category SHIFT23002
  :mixins (CONVERT-26.6.2-1)
  :realization (:VERB "shift"))

(define-category SHIFT23003
  :mixins (CONVERT-26.6.2-1)
  :realization (:VERB "shift"))

(define-category SHIFT23004
  :mixins (CONVERT-26.6.2-1)
  :realization (:VERB "shift"))

(define-category TURN23004
  :mixins (CONVERT-26.6.2-1)
  :realization (:VERB "turn"))

(define-category TURN23800
  :mixins (CONVERT-26.6.2-1)
  :realization (:VERB "turn"))

(define-category CHANGE_OVER23002
  :mixins (CONVERT-26.6.2-1-1)
  :realization (:VERB "change_over"))

(define-category CONVERT23007
  :mixins (CONVERT-26.6.2-1-1)
  :realization (:VERB "convert"))

(define-category SWITCH23000
  :mixins (CONVERT-26.6.2-1-1)
  :realization (:VERB "switch"))

(define-category SWITCH23002
  :mixins (CONVERT-26.6.2-1-1)
  :realization (:VERB "switch"))

(define-category SWITCH_OVER23000
  :mixins (CONVERT-26.6.2-1-1)
  :realization (:VERB "switch_over"))

(define-category BAKE23600
  :mixins (COOKING-45.3)
  :realization (:VERB "bake"))

(define-category BAKE23000
  :mixins (COOKING-45.3)
  :realization (:VERB "bake"))

(define-category BARBECUE23000
  :mixins (COOKING-45.3)
  :realization (:VERB "barbecue"))

(define-category BARBEQUE23000
  :mixins (COOKING-45.3)
  :realization (:VERB "barbeque"))

(define-category BLANCH23000
  :mixins (COOKING-45.3)
  :realization (:VERB "blanch"))

(define-category BOIL23000
  :mixins (COOKING-45.3)
  :realization (:VERB "boil"))

(define-category BOIL23001
  :mixins (COOKING-45.3)
  :realization (:VERB "boil"))

(define-category BRAISE23000
  :mixins (COOKING-45.3)
  :realization (:VERB "braise"))

(define-category BROIL23000
  :mixins (COOKING-45.3)
  :realization (:VERB "broil"))

(define-category BROWN23000
  :mixins (COOKING-45.3)
  :realization (:VERB "brown"))

(define-category CODDLE23000
  :mixins (COOKING-45.3)
  :realization (:VERB "coddle"))

(define-category COOK23000
  :mixins (COOKING-45.3)
  :realization (:VERB "cook"))

(define-category COOK23600
  :mixins (COOKING-45.3)
  :realization (:VERB "cook"))

(define-category CRISP23000
  :mixins (COOKING-45.3)
  :realization (:VERB "crisp"))

(define-category DEEP-FRY23000
  :mixins (COOKING-45.3)
  :realization (:VERB "deep-fry"))

(define-category FRENCH-FRY23000
  :mixins (COOKING-45.3)
  :realization (:VERB "french-fry"))

(define-category FRY23000
  :mixins (COOKING-45.3)
  :realization (:VERB "fry"))

(define-category GRILL23000
  :mixins (COOKING-45.3)
  :realization (:VERB "grill"))

(define-category HEAT23000
  :mixins (COOKING-45.3)
  :realization (:VERB "heat"))

(define-category HEAT23001
  :mixins (COOKING-45.3)
  :realization (:VERB "heat"))

(define-category MICROWAVE23000
  :mixins (COOKING-45.3)
  :realization (:VERB "microwave"))

(define-category OVERCOOK23000
  :mixins (COOKING-45.3)
  :realization (:VERB "overcook"))

(define-category PAN-BROIL23000
  :mixins (COOKING-45.3)
  :realization (:VERB "pan-broil"))

(define-category PAN-FRY23000
  :mixins (COOKING-45.3)
  :realization (:VERB "pan-fry"))

(define-category PARBOIL23000
  :mixins (COOKING-45.3)
  :realization (:VERB "parboil"))

(define-category PERCOLATE23503
  :mixins (COOKING-45.3)
  :realization (:VERB "percolate"))

(define-category PICKLE23000
  :mixins (COOKING-45.3)
  :realization (:VERB "pickle"))

(define-category PLANK23400
  :mixins (COOKING-45.3)
  :realization (:VERB "plank"))

(define-category POACH23000
  :mixins (COOKING-45.3)
  :realization (:VERB "poach"))

(define-category ROAST23000
  :mixins (COOKING-45.3)
  :realization (:VERB "roast"))

(define-category SAUTE23000
  :mixins (COOKING-45.3)
  :realization (:VERB "saute"))

(define-category SCALD23000
  :mixins (COOKING-45.3)
  :realization (:VERB "scald"))

(define-category SHIRR23000
  :mixins (COOKING-45.3)
  :realization (:VERB "shirr"))

(define-category SIMMER23000
  :mixins (COOKING-45.3)
  :realization (:VERB "simmer"))

(define-category STEAM23000
  :mixins (COOKING-45.3)
  :realization (:VERB "steam"))

(define-category STEW23000
  :mixins (COOKING-45.3)
  :realization (:VERB "stew"))

(define-category STIR_FRY23000
  :mixins (COOKING-45.3)
  :realization (:VERB "stir_fry"))

(define-category TOAST23000
  :mixins (COOKING-45.3)
  :realization (:VERB "toast"))

(define-category COLLABORATE24101
  :mixins (COOPERATE-73.1-1)
  :realization (:VERB "collaborate"))

(define-category COLLABORATE24100
  :mixins (COOPERATE-73.1-1)
  :realization (:VERB "collaborate"))

(define-category COOPERATE24100
  :mixins (COOPERATE-73.1-1)
  :realization (:VERB "cooperate"))

(define-category JOIN24101
  :mixins (COOPERATE-73.1-1)
  :realization (:VERB "join"))

(define-category PARTICIPATE23300
  :mixins (COOPERATE-73.1-2)
  :realization (:VERB "participate"))

(define-category PARTICIPATE24100
  :mixins (COOPERATE-73.1-2)
  :realization (:VERB "participate"))

(define-category LABOUR24101
  :mixins (COOPERATE-73.1-3)
  :realization (:VERB "labour"))

(define-category WORK24102
  :mixins (COOPERATE-73.1-3)
  :realization (:VERB "work"))

(define-category DEAL24109
  :mixins (COPE-83)
  :realization (:VERB "deal"))

(define-category COPE24100
  :mixins (COPE-83-1)
  :realization (:VERB "cope"))

(define-category MANAGE24103
  :mixins (COPE-83-1-1)
  :realization (:VERB "manage"))

(define-category GRAPPLE24100
  :mixins (COPE-83-1-1)
  :realization (:VERB "grapple"))

(define-category GET_BY24100
  :mixins (COPE-83-1-1)
  :realization (:VERB "get_by"))

(define-category GET_THROUGH23800
  :mixins (COPE-83-1-1)
  :realization (:VERB "get_through"))

(define-category GET_THROUGH24200
  :mixins (COPE-83-1-1)
  :realization (:VERB "get_through"))

(define-category GET_THROUGH23000
  :mixins (COPE-83-1-1)
  :realization (:VERB "get_through"))

(define-category CO-OCCUR24200
  :mixins (CORRELATE-86.1)
  :realization (:VERB "co-occur"))

(define-category BANTER23200
  :mixins (CORRESPOND-36.1.1)
  :realization (:VERB "banter"))

(define-category BARGAIN23200
  :mixins (CORRESPOND-36.1.1)
  :realization (:VERB "bargain"))

(define-category COLLABORATE24101
  :mixins (CORRESPOND-36.1.1)
  :realization (:VERB "collaborate"))

(define-category COLLABORATE24100
  :mixins (CORRESPOND-36.1.1)
  :realization (:VERB "collaborate"))

(define-category COMMISERATE23700
  :mixins (CORRESPOND-36.1.1)
  :realization (:VERB "commiserate"))

(define-category COMMUNICATE23202
  :mixins (CORRESPOND-36.1.1)
  :realization (:VERB "communicate"))

(define-category CONCUR23200
  :mixins (CORRESPOND-36.1.1)
  :realization (:VERB "concur"))

(define-category COOPERATE24100
  :mixins (CORRESPOND-36.1.1)
  :realization (:VERB "cooperate"))

(define-category CORRESPOND23200
  :mixins (CORRESPOND-36.1.1)
  :realization (:VERB "correspond"))

(define-category DIFFER23200
  :mixins (CORRESPOND-36.1.1)
  :realization (:VERB "differ"))

(define-category DISAGREE23200
  :mixins (CORRESPOND-36.1.1)
  :realization (:VERB "disagree"))

(define-category NEGOTIATE23200
  :mixins (CORRESPOND-36.1.1)
  :realization (:VERB "negotiate"))

(define-category PLOT23100
  :mixins (CORRESPOND-36.1.1)
  :realization (:VERB "plot"))

(define-category AGREE24200
  :mixins (CORRESPOND-36.1.1-1)
  :realization (:VERB "agree"))

(define-category AGREE23201
  :mixins (CORRESPOND-36.1.1-1)
  :realization (:VERB "agree"))

(define-category AGREE23200
  :mixins (CORRESPOND-36.1.1-1)
  :realization (:VERB "agree"))

(define-category DEBATE23201
  :mixins (CORRESPOND-36.1.1-1-1)
  :realization (:VERB "debate"))

(define-category ARGUE23200
  :mixins (CORRESPOND-36.1.1-1-1)
  :realization (:VERB "argue"))

(define-category CARRY24213
  :mixins (COST-54.2)
  :realization (:VERB "carry"))

(define-category COST24200
  :mixins (COST-54.2)
  :realization (:VERB "cost"))

(define-category LAST24200
  :mixins (COST-54.2)
  :realization (:VERB "last"))

(define-category NET24001
  :mixins (COST-54.2)
  :realization (:VERB "net"))

(define-category TAKE24006
  :mixins (COST-54.2)
  :realization (:VERB "take"))

(define-category ARCH23800
  :mixins (CRANE-40.3.2)
  :realization (:VERB "arch"))

(define-category BARE23500
  :mixins (CRANE-40.3.2)
  :realization (:VERB "bare"))

(define-category BAT22900
  :mixins (CRANE-40.3.2)
  :realization (:VERB "bat"))

(define-category BEAT23510
  :mixins (CRANE-40.3.2)
  :realization (:VERB "beat"))

(define-category BLOW22901
  :mixins (CRANE-40.3.2)
  :realization (:VERB "blow"))

(define-category CLENCH23502
  :mixins (CRANE-40.3.2)
  :realization (:VERB "clench"))

(define-category CLICK23500
  :mixins (CRANE-40.3.2)
  :realization (:VERB "click"))

(define-category CLOSE23500
  :mixins (CRANE-40.3.2)
  :realization (:VERB "close"))

(define-category COCK23801
  :mixins (CRANE-40.3.2)
  :realization (:VERB "cock"))

(define-category CRANE22900
  :mixins (CRANE-40.3.2)
  :realization (:VERB "crane"))

(define-category CROOK23800
  :mixins (CRANE-40.3.2)
  :realization (:VERB "crook"))

(define-category CROSS23804
  :mixins (CRANE-40.3.2)
  :realization (:VERB "cross"))

(define-category FLAP23803
  :mixins (CRANE-40.3.2)
  :realization (:VERB "flap"))

(define-category FLASH23902
  :mixins (CRANE-40.3.2)
  :realization (:VERB "flash"))

(define-category FLEX23801
  :mixins (CRANE-40.3.2)
  :realization (:VERB "flex"))

(define-category FLICK23502
  :mixins (CRANE-40.3.2)
  :realization (:VERB "flick"))

(define-category FLUTTER22900
  :mixins (CRANE-40.3.2)
  :realization (:VERB "flutter"))

(define-category FOLD23500
  :mixins (CRANE-40.3.2)
  :realization (:VERB "fold"))

(define-category GNASH22900
  :mixins (CRANE-40.3.2)
  :realization (:VERB "gnash"))

(define-category GRIND23500
  :mixins (CRANE-40.3.2)
  :realization (:VERB "grind"))

(define-category HANG23803
  :mixins (CRANE-40.3.2)
  :realization (:VERB "hang"))

(define-category HUNCH23800
  :mixins (CRANE-40.3.2)
  :realization (:VERB "hunch"))

(define-category KICK23801
  :mixins (CRANE-40.3.2)
  :realization (:VERB "kick"))

(define-category KICK23800
  :mixins (CRANE-40.3.2)
  :realization (:VERB "kick"))

(define-category KNIT23500
  :mixins (CRANE-40.3.2)
  :realization (:VERB "knit"))

(define-category OPEN23500
  :mixins (CRANE-40.3.2)
  :realization (:VERB "open"))

(define-category PUCKER23500
  :mixins (CRANE-40.3.2)
  :realization (:VERB "pucker"))

(define-category PURSE23500
  :mixins (CRANE-40.3.2)
  :realization (:VERB "purse"))

(define-category PURSE23000
  :mixins (CRANE-40.3.2)
  :realization (:VERB "purse"))

(define-category RAISE23802
  :mixins (CRANE-40.3.2)
  :realization (:VERB "raise"))

(define-category RAISE23800
  :mixins (CRANE-40.3.2)
  :realization (:VERB "raise"))

(define-category ROLL23800
  :mixins (CRANE-40.3.2)
  :realization (:VERB "roll"))

(define-category SHAKE23001
  :mixins (CRANE-40.3.2)
  :realization (:VERB "shake"))

(define-category SHAKE23800
  :mixins (CRANE-40.3.2)
  :realization (:VERB "shake"))

(define-category SHOW23902
  :mixins (CRANE-40.3.2)
  :realization (:VERB "show"))

(define-category SHUFFLE23800
  :mixins (CRANE-40.3.2)
  :realization (:VERB "shuffle"))

(define-category SMACK23400
  :mixins (CRANE-40.3.2)
  :realization (:VERB "smack"))

(define-category SNAP23502
  :mixins (CRANE-40.3.2)
  :realization (:VERB "snap"))

(define-category STAMP23800
  :mixins (CRANE-40.3.2)
  :realization (:VERB "stamp"))

(define-category STRETCH22901
  :mixins (CRANE-40.3.2)
  :realization (:VERB "stretch"))

(define-category TURN23813
  :mixins (CRANE-40.3.2)
  :realization (:VERB "turn"))

(define-category TWIDDLE23500
  :mixins (CRANE-40.3.2)
  :realization (:VERB "twiddle"))

(define-category TWITCH23801
  :mixins (CRANE-40.3.2)
  :realization (:VERB "twitch"))

(define-category WAG23800
  :mixins (CRANE-40.3.2)
  :realization (:VERB "wag"))

(define-category WAGGLE23800
  :mixins (CRANE-40.3.2)
  :realization (:VERB "waggle"))

(define-category WIGGLE23800
  :mixins (CRANE-40.3.2)
  :realization (:VERB "wiggle"))

(define-category WRING23500
  :mixins (CRANE-40.3.2)
  :realization (:VERB "wring"))

(define-category WRINKLE23502
  :mixins (CRANE-40.3.2)
  :realization (:VERB "wrinkle"))

(define-category WRINKLE23501
  :mixins (CRANE-40.3.2)
  :realization (:VERB "wrinkle"))

(define-category AUTHOR23600
  :mixins (CREATE-26.4)
  :realization (:VERB "author"))

(define-category COIN23600
  :mixins (CREATE-26.4)
  :realization (:VERB "coin"))

(define-category COIN23601
  :mixins (CREATE-26.4)
  :realization (:VERB "coin"))

(define-category COMPUTE23100
  :mixins (CREATE-26.4)
  :realization (:VERB "compute"))

(define-category CONCOCT23600
  :mixins (CREATE-26.4)
  :realization (:VERB "concoct"))

(define-category CONCOCT23601
  :mixins (CREATE-26.4)
  :realization (:VERB "concoct"))

(define-category CONCOCT23500
  :mixins (CREATE-26.4)
  :realization (:VERB "concoct"))

(define-category CONSTRUCT23500
  :mixins (CREATE-26.4)
  :realization (:VERB "construct"))

(define-category CONSTRUCT23600
  :mixins (CREATE-26.4)
  :realization (:VERB "construct"))

(define-category CREATE23603
  :mixins (CREATE-26.4)
  :realization (:VERB "create"))

(define-category CREATE23613
  :mixins (CREATE-26.4)
  :realization (:VERB "create"))

(define-category DERIVE23100
  :mixins (CREATE-26.4)
  :realization (:VERB "derive"))

(define-category FABRICATE23601
  :mixins (CREATE-26.4)
  :realization (:VERB "fabricate"))

(define-category FORM23600
  :mixins (CREATE-26.4)
  :realization (:VERB "form"))

(define-category FORM23001
  :mixins (CREATE-26.4)
  :realization (:VERB "form"))

(define-category FORMULATE23600
  :mixins (CREATE-26.4)
  :realization (:VERB "formulate"))

(define-category FORMULATE23203
  :mixins (CREATE-26.4)
  :realization (:VERB "formulate"))

(define-category LAY23600
  :mixins (CREATE-26.4)
  :realization (:VERB "lay"))

(define-category MANUFACTURE23600
  :mixins (CREATE-26.4)
  :realization (:VERB "manufacture"))

(define-category MASS-PRODUCE23600
  :mixins (CREATE-26.4)
  :realization (:VERB "mass-produce"))

(define-category MODEL23600
  :mixins (CREATE-26.4)
  :realization (:VERB "model"))

(define-category MODEL23602
  :mixins (CREATE-26.4)
  :realization (:VERB "model"))

(define-category ORGANIZE23100
  :mixins (CREATE-26.4)
  :realization (:VERB "organize"))

(define-category PRODUCE23600
  :mixins (CREATE-26.4)
  :realization (:VERB "produce"))

(define-category PUBLISH23600
  :mixins (CREATE-26.4)
  :realization (:VERB "publish"))

(define-category PUBLISH23200
  :mixins (CREATE-26.4)
  :realization (:VERB "publish"))

(define-category PUBLISH23601
  :mixins (CREATE-26.4)
  :realization (:VERB "publish"))

(define-category REARRANGE23000
  :mixins (CREATE-26.4)
  :realization (:VERB "rearrange"))

(define-category REBUILD23600
  :mixins (CREATE-26.4)
  :realization (:VERB "rebuild"))

(define-category RECONSTITUTE23002
  :mixins (CREATE-26.4)
  :realization (:VERB "reconstitute"))

(define-category REORGANIZE24101
  :mixins (CREATE-26.4)
  :realization (:VERB "reorganize"))

(define-category REORGANIZE24100
  :mixins (CREATE-26.4)
  :realization (:VERB "reorganize"))

(define-category STYLE23600
  :mixins (CREATE-26.4)
  :realization (:VERB "style"))

(define-category SYNTHESIZE23100
  :mixins (CREATE-26.4)
  :realization (:VERB "synthesize"))

(define-category CHOREOGRAPH23600
  :mixins (CREATE-26.4-1)
  :realization (:VERB "choreograph"))

(define-category COMPOSE23100
  :mixins (CREATE-26.4-1)
  :realization (:VERB "compose"))

(define-category COMPOSE23609
  :mixins (CREATE-26.4-1)
  :realization (:VERB "compose"))

(define-category COMPOSE23603
  :mixins (CREATE-26.4-1)
  :realization (:VERB "compose"))

(define-category DRAFT23600
  :mixins (CREATE-26.4-1)
  :realization (:VERB "draft"))

(define-category IMPROVISE23600
  :mixins (CREATE-26.4-1)
  :realization (:VERB "improvise"))

(define-category INVENT23600
  :mixins (CREATE-26.4-1)
  :realization (:VERB "invent"))

(define-category SILKSCREEN23600
  :mixins (CREATE-26.4-1)
  :realization (:VERB "silkscreen"))

(define-category WRITE23610
  :mixins (CREATE-26.4-1)
  :realization (:VERB "write"))

(define-category WRITE23200
  :mixins (CREATE-26.4-1)
  :realization (:VERB "write"))

(define-category WRITE23600
  :mixins (CREATE-26.4-1)
  :realization (:VERB "write"))

(define-category CONJURE23600
  :mixins (CREATE-26.4-1-1)
  :realization (:VERB "conjure"))

(define-category CRAFT23600
  :mixins (CREATE-26.4-1-1)
  :realization (:VERB "craft"))

(define-category DESIGN23600
  :mixins (CREATE-26.4-1-1)
  :realization (:VERB "design"))

(define-category DESIGN23100
  :mixins (CREATE-26.4-1-1)
  :realization (:VERB "design"))

(define-category DIG23501
  :mixins (CREATE-26.4-1-1)
  :realization (:VERB "dig"))

(define-category DRAW23602
  :mixins (CREATE-26.4-1-1)
  :realization (:VERB "draw"))

(define-category DRAW23600
  :mixins (CREATE-26.4-1-1)
  :realization (:VERB "draw"))

(define-category DRAW23501
  :mixins (CREATE-26.4-1-1)
  :realization (:VERB "draw"))

(define-category PAINT23600
  :mixins (CREATE-26.4-1-1)
  :realization (:VERB "paint"))

(define-category PAINT23601
  :mixins (CREATE-26.4-1-1)
  :realization (:VERB "paint"))

(define-category SPIN23200
  :mixins (CREATE-26.4-1-1)
  :realization (:VERB "spin"))

(define-category SPIN23601
  :mixins (CREATE-26.4-1-1)
  :realization (:VERB "spin"))

(define-category BOB23200
  :mixins (CURTSEY-40.3.3)
  :realization (:VERB "bob"))

(define-category BOW23801
  :mixins (CURTSEY-40.3.3)
  :realization (:VERB "bow"))

(define-category BOW23800
  :mixins (CURTSEY-40.3.3)
  :realization (:VERB "bow"))

(define-category BOW23200
  :mixins (CURTSEY-40.3.3)
  :realization (:VERB "bow"))

(define-category CURTSEY23800
  :mixins (CURTSEY-40.3.3)
  :realization (:VERB "curtsey"))

(define-category GENUFLECT23801
  :mixins (CURTSEY-40.3.3)
  :realization (:VERB "genuflect"))

(define-category GENUFLECT23800
  :mixins (CURTSEY-40.3.3)
  :realization (:VERB "genuflect"))

(define-category KNEEL23500
  :mixins (CURTSEY-40.3.3)
  :realization (:VERB "kneel"))

(define-category SALAAM23200
  :mixins (CURTSEY-40.3.3)
  :realization (:VERB "salaam"))

(define-category SALUTE23201
  :mixins (CURTSEY-40.3.3)
  :realization (:VERB "salute"))

(define-category CHIP23500
  :mixins (CUT-21.1-1)
  :realization (:VERB "chip"))

(define-category CHIP23503
  :mixins (CUT-21.1-1)
  :realization (:VERB "chip"))

(define-category CHIP23501
  :mixins (CUT-21.1-1)
  :realization (:VERB "chip"))

(define-category CHOP23501
  :mixins (CUT-21.1-1)
  :realization (:VERB "chop"))

(define-category CLIP23504
  :mixins (CUT-21.1-1)
  :realization (:VERB "clip"))

(define-category CLIP23503
  :mixins (CUT-21.1-1)
  :realization (:VERB "clip"))

(define-category CUT23014
  :mixins (CUT-21.1-1)
  :realization (:VERB "cut"))

(define-category CUT23514
  :mixins (CUT-21.1-1)
  :realization (:VERB "cut"))

(define-category CUT23511
  :mixins (CUT-21.1-1)
  :realization (:VERB "cut"))

(define-category CUT23512
  :mixins (CUT-21.1-1)
  :realization (:VERB "cut"))

(define-category CUT23500
  :mixins (CUT-21.1-1)
  :realization (:VERB "cut"))

(define-category HACK23501
  :mixins (CUT-21.1-1)
  :realization (:VERB "hack"))

(define-category HACK23502
  :mixins (CUT-21.1-1)
  :realization (:VERB "hack"))

(define-category HEW23500
  :mixins (CUT-21.1-1)
  :realization (:VERB "hew"))

(define-category RIP23500
  :mixins (CUT-21.1-1)
  :realization (:VERB "rip"))

(define-category SAW23500
  :mixins (CUT-21.1-1)
  :realization (:VERB "saw"))

(define-category SCARIFY23501
  :mixins (CUT-21.1-1)
  :realization (:VERB "scarify"))

(define-category SCARIFY23502
  :mixins (CUT-21.1-1)
  :realization (:VERB "scarify"))

(define-category SCARIFY23500
  :mixins (CUT-21.1-1)
  :realization (:VERB "scarify"))

(define-category SCRAPE23501
  :mixins (CUT-21.1-1)
  :realization (:VERB "scrape"))

(define-category SCRAPE23502
  :mixins (CUT-21.1-1)
  :realization (:VERB "scrape"))

(define-category SCRAPE23500
  :mixins (CUT-21.1-1)
  :realization (:VERB "scrape"))

(define-category SCRATCH23500
  :mixins (CUT-21.1-1)
  :realization (:VERB "scratch"))

(define-category SLASH23500
  :mixins (CUT-21.1-1)
  :realization (:VERB "slash"))

(define-category SLASH23501
  :mixins (CUT-21.1-1)
  :realization (:VERB "slash"))

(define-category SLICE23501
  :mixins (CUT-21.1-1)
  :realization (:VERB "slice"))

(define-category SNIP23500
  :mixins (CUT-21.1-1)
  :realization (:VERB "snip"))

(define-category SNIP23507
  :mixins (CUT-21.1-1)
  :realization (:VERB "snip"))

(define-category REAM23000
  :mixins (CUT-21.1-1)
  :realization (:VERB "ream"))

(define-category REAM23001
  :mixins (CUT-21.1-1)
  :realization (:VERB "ream"))

(define-category DEBONE23000
  :mixins (DEBONE-10.8)
  :realization (:VERB "debone"))

(define-category DEBUG23000
  :mixins (DEBONE-10.8)
  :realization (:VERB "debug"))

(define-category DECLAW23000
  :mixins (DEBONE-10.8)
  :realization (:VERB "declaw"))

(define-category DECONTAMINATE23000
  :mixins (DEBONE-10.8)
  :realization (:VERB "decontaminate"))

(define-category DEFANG23000
  :mixins (DEBONE-10.8)
  :realization (:VERB "defang"))

(define-category DEFAT24000
  :mixins (DEBONE-10.8)
  :realization (:VERB "defat"))

(define-category DEFOG23000
  :mixins (DEBONE-10.8)
  :realization (:VERB "defog"))

(define-category DEFOREST23000
  :mixins (DEBONE-10.8)
  :realization (:VERB "deforest"))

(define-category DEFROST23000
  :mixins (DEBONE-10.8)
  :realization (:VERB "defrost"))

(define-category DEGAS23000
  :mixins (DEBONE-10.8)
  :realization (:VERB "degas"))

(define-category DEHORN23000
  :mixins (DEBONE-10.8)
  :realization (:VERB "dehorn"))

(define-category DEICE23000
  :mixins (DEBONE-10.8)
  :realization (:VERB "deice"))

(define-category DELOUSE23000
  :mixins (DEBONE-10.8)
  :realization (:VERB "delouse"))

(define-category DESALT23000
  :mixins (DEBONE-10.8)
  :realization (:VERB "desalt"))

(define-category DESCALE23500
  :mixins (DEBONE-10.8)
  :realization (:VERB "descale"))

(define-category DESEX22900
  :mixins (DEBONE-10.8)
  :realization (:VERB "desex"))

(define-category DESTRESS23000
  :mixins (DEBONE-10.8)
  :realization (:VERB "destress"))

(define-category DETUSK23000
  :mixins (DEBONE-10.8)
  :realization (:VERB "detusk"))

(define-category DEVEIN24000
  :mixins (DEBONE-10.8)
  :realization (:VERB "devein"))

(define-category DISEMBOWEL23000
  :mixins (DEBONE-10.8)
  :realization (:VERB "disembowel"))

(define-category EVISCERATE23000
  :mixins (DEBONE-10.8)
  :realization (:VERB "eviscerate"))

(define-category EVISCERATE23002
  :mixins (DEBONE-10.8)
  :realization (:VERB "eviscerate"))

(define-category EVISCERATE23501
  :mixins (DEBONE-10.8)
  :realization (:VERB "eviscerate"))

(define-category AVOW23200
  :mixins (DECLARE-29.4)
  :realization (:VERB "avow"))

(define-category CONFESS23201
  :mixins (DECLARE-29.4)
  :realization (:VERB "confess"))

(define-category ADJUDGE23200
  :mixins (DECLARE-29.4-1)
  :realization (:VERB "adjudge"))

(define-category ASSUME23100
  :mixins (DECLARE-29.4-1)
  :realization (:VERB "assume"))

(define-category MAINTAIN23200
  :mixins (DECLARE-29.4-1)
  :realization (:VERB "maintain"))

(define-category PROVE23200
  :mixins (DECLARE-29.4-1-1)
  :realization (:VERB "prove"))

(define-category DECLARE23204
  :mixins (DECLARE-29.4-1-1-1)
  :realization (:VERB "declare"))

(define-category FIND23110
  :mixins (DECLARE-29.4-1-1-2)
  :realization (:VERB "find"))

(define-category JUDGE23200
  :mixins (DECLARE-29.4-1-1-2)
  :realization (:VERB "judge"))

(define-category JUDGE23100
  :mixins (DECLARE-29.4-1-1-2)
  :realization (:VERB "judge"))

(define-category PROFESS23204
  :mixins (DECLARE-29.4-1-1-3)
  :realization (:VERB "profess"))

(define-category PROFESS23210
  :mixins (DECLARE-29.4-1-1-3)
  :realization (:VERB "profess"))

(define-category PROCLAIM23202
  :mixins (DECLARE-29.4-2)
  :realization (:VERB "proclaim"))

(define-category DEDICATE23200
  :mixins (DEDICATE-79)
  :realization (:VERB "dedicate"))

(define-category DEVOTE23200
  :mixins (DEDICATE-79)
  :realization (:VERB "devote"))

(define-category COMMIT24000
  :mixins (DEDICATE-79)
  :realization (:VERB "commit"))

(define-category COMMIT23201
  :mixins (DEDICATE-79)
  :realization (:VERB "commit"))

(define-category REASON23101
  :mixins (DEDUCE-97.2)
  :realization (:VERB "reason"))

(define-category REASON_OUT23100
  :mixins (DEDUCE-97.2)
  :realization (:VERB "reason_out"))

(define-category CONCLUDE23100
  :mixins (DEDUCE-97.2)
  :realization (:VERB "conclude"))

(define-category DERIVE23100
  :mixins (DEDUCE-97.2)
  :realization (:VERB "derive"))

(define-category DISPROVE23100
  :mixins (DEDUCE-97.2)
  :realization (:VERB "disprove"))

(define-category INFER23100
  :mixins (DEDUCE-97.2)
  :realization (:VERB "infer"))

(define-category DEDUCT23100
  :mixins (DEDUCE-97.2)
  :realization (:VERB "deduct"))

(define-category DEDUCE23200
  :mixins (DEDUCE-97.2)
  :realization (:VERB "deduce"))

(define-category DEDUCE23100
  :mixins (DEDUCE-97.2)
  :realization (:VERB "deduce"))

(define-category GATHER23200
  :mixins (DEDUCE-97.2)
  :realization (:VERB "gather"))

(define-category CONCEIVE23100
  :mixins (DEDUCE-97.2)
  :realization (:VERB "conceive"))

(define-category PROVE23100
  :mixins (DEDUCE-97.2)
  :realization (:VERB "prove"))

(define-category RATIONALIZE23100
  :mixins (DEDUCE-97.2)
  :realization (:VERB "rationalize"))

(define-category DEFEND23201
  :mixins (DEFEND-72.3)
  :realization (:VERB "defend"))

(define-category DEFEND24100
  :mixins (DEFEND-72.3)
  :realization (:VERB "defend"))

(define-category DEFEND23200
  :mixins (DEFEND-72.3)
  :realization (:VERB "defend"))

(define-category INSURE23200
  :mixins (DEFEND-72.3)
  :realization (:VERB "insure"))

(define-category PROTECT23300
  :mixins (DEFEND-72.3)
  :realization (:VERB "protect"))

(define-category SHADE23500
  :mixins (DEFEND-72.3)
  :realization (:VERB "shade"))

(define-category PRESERVE24000
  :mixins (DEFEND-72.3)
  :realization (:VERB "preserve"))

(define-category GUARD23300
  :mixins (DEFEND-72.3)
  :realization (:VERB "guard"))

(define-category GUARD24100
  :mixins (DEFEND-72.3)
  :realization (:VERB "guard"))

(define-category SAFEGUARD23300
  :mixins (DEFEND-72.3)
  :realization (:VERB "safeguard"))

(define-category SPEAK_FOR24100
  :mixins (DEFEND-72.3)
  :realization (:VERB "speak_for"))

(define-category DESPOIL23500
  :mixins (DEPRIVE-10.6.2)
  :realization (:VERB "despoil"))

(define-category DESPOIL24000
  :mixins (DEPRIVE-10.6.2)
  :realization (:VERB "despoil"))

(define-category DISABUSE23200
  :mixins (DEPRIVE-10.6.2)
  :realization (:VERB "disabuse"))

(define-category PLUNDER23501
  :mixins (DEPRIVE-10.6.2)
  :realization (:VERB "plunder"))

(define-category PLUNDER24000
  :mixins (DEPRIVE-10.6.2)
  :realization (:VERB "plunder"))

(define-category RID24000
  :mixins (DEPRIVE-10.6.2)
  :realization (:VERB "rid"))

(define-category DEPOPULATE23000
  :mixins (DEPRIVE-10.6.2)
  :realization (:VERB "depopulate"))

(define-category BEREAVE24000
  :mixins (DEPRIVE-10.6.2)
  :realization (:VERB "bereave"))

(define-category DENUDE23000
  :mixins (DEPRIVE-10.6.2)
  :realization (:VERB "denude"))

(define-category DISARM23301
  :mixins (DEPRIVE-10.6.2)
  :realization (:VERB "disarm"))

(define-category DRAIN23001
  :mixins (DEPRIVE-10.6.2)
  :realization (:VERB "drain"))

(define-category DRAIN23400
  :mixins (DEPRIVE-10.6.2)
  :realization (:VERB "drain"))

(define-category DISPOSSESS24000
  :mixins (DEPRIVE-10.6.2)
  :realization (:VERB "dispossess"))

(define-category DEPLETE23400
  :mixins (DEPRIVE-10.6.2)
  :realization (:VERB "deplete"))

(define-category DIVEST24000
  :mixins (DEPRIVE-10.6.2)
  :realization (:VERB "divest"))

(define-category DIVEST24100
  :mixins (DEPRIVE-10.6.2)
  :realization (:VERB "divest"))

(define-category DIVEST24001
  :mixins (DEPRIVE-10.6.2)
  :realization (:VERB "divest"))

(define-category DEPRIVE23000
  :mixins (DEPRIVE-10.6.2)
  :realization (:VERB "deprive"))

(define-category DEPRIVE24000
  :mixins (DEPRIVE-10.6.2)
  :realization (:VERB "deprive"))

(define-category DEPRIVE24001
  :mixins (DEPRIVE-10.6.2)
  :realization (:VERB "deprive"))

(define-category ANNIHILATE23000
  :mixins (DESTROY-44)
  :realization (:VERB "annihilate"))

(define-category BLIGHT24300
  :mixins (DESTROY-44)
  :realization (:VERB "blight"))

(define-category BLITZ23300
  :mixins (DESTROY-44)
  :realization (:VERB "blitz"))

(define-category DAMAGE23000
  :mixins (DESTROY-44)
  :realization (:VERB "damage"))

(define-category DECIMATE23000
  :mixins (DESTROY-44)
  :realization (:VERB "decimate"))

(define-category DEMOLISH23600
  :mixins (DESTROY-44)
  :realization (:VERB "demolish"))

(define-category DESECRATE23200
  :mixins (DESTROY-44)
  :realization (:VERB "desecrate"))

(define-category DESECRATE24100
  :mixins (DESTROY-44)
  :realization (:VERB "desecrate"))

(define-category DESTROY23500
  :mixins (DESTROY-44)
  :realization (:VERB "destroy"))

(define-category DESTROY23600
  :mixins (DESTROY-44)
  :realization (:VERB "destroy"))

(define-category DEVASTATE23000
  :mixins (DESTROY-44)
  :realization (:VERB "devastate"))

(define-category DISFIGURE23500
  :mixins (DESTROY-44)
  :realization (:VERB "disfigure"))

(define-category EFFACE23500
  :mixins (DESTROY-44)
  :realization (:VERB "efface"))

(define-category EXTERMINATE23501
  :mixins (DESTROY-44)
  :realization (:VERB "exterminate"))

(define-category EXTIRPATE23600
  :mixins (DESTROY-44)
  :realization (:VERB "extirpate"))

(define-category MAIM22900
  :mixins (DESTROY-44)
  :realization (:VERB "maim"))

(define-category MUTILATE22900
  :mixins (DESTROY-44)
  :realization (:VERB "mutilate"))

(define-category MUTILATE23001
  :mixins (DESTROY-44)
  :realization (:VERB "mutilate"))

(define-category MUTILATE23000
  :mixins (DESTROY-44)
  :realization (:VERB "mutilate"))

(define-category OBLITERATE23003
  :mixins (DESTROY-44)
  :realization (:VERB "obliterate"))

(define-category RACK23701
  :mixins (DESTROY-44)
  :realization (:VERB "rack"))

(define-category RAVAGE23001
  :mixins (DESTROY-44)
  :realization (:VERB "ravage"))

(define-category RAZE23600
  :mixins (DESTROY-44)
  :realization (:VERB "raze"))

(define-category RUIN23500
  :mixins (DESTROY-44)
  :realization (:VERB "ruin"))

(define-category SHIPWRECK24100
  :mixins (DESTROY-44)
  :realization (:VERB "shipwreck"))

(define-category WASTE23000
  :mixins (DESTROY-44)
  :realization (:VERB "waste"))

(define-category WASTE23500
  :mixins (DESTROY-44)
  :realization (:VERB "waste"))

(define-category WRACK23500
  :mixins (DESTROY-44)
  :realization (:VERB "wrack"))

(define-category WRECK23500
  :mixins (DESTROY-44)
  :realization (:VERB "wreck"))

(define-category SHATTER23001
  :mixins (DESTROY-44)
  :realization (:VERB "shatter"))

(define-category SHATTER23000
  :mixins (DESTROY-44)
  :realization (:VERB "shatter"))

(define-category CONSUME23403
  :mixins (DEVOUR-39.4)
  :realization (:VERB "consume"))

(define-category DEVOUR23400
  :mixins (DEVOUR-39.4)
  :realization (:VERB "devour"))

(define-category DEVOUR23401
  :mixins (DEVOUR-39.4)
  :realization (:VERB "devour"))

(define-category IMBIBE23400
  :mixins (DEVOUR-39.4)
  :realization (:VERB "imbibe"))

(define-category INGEST23400
  :mixins (DEVOUR-39.4)
  :realization (:VERB "ingest"))

(define-category SWILL23400
  :mixins (DEVOUR-39.4)
  :realization (:VERB "swill"))

(define-category DEVIATE23801
  :mixins (DIFFER-23.4)
  :realization (:VERB "deviate"))

(define-category DEVIATE24200
  :mixins (DIFFER-23.4)
  :realization (:VERB "deviate"))

(define-category DEVIATE23800
  :mixins (DIFFER-23.4)
  :realization (:VERB "deviate"))

(define-category DIFFER24200
  :mixins (DIFFER-23.4)
  :realization (:VERB "differ"))

(define-category DIVERGE24201
  :mixins (DIFFER-23.4)
  :realization (:VERB "diverge"))

(define-category DIVERGE24202
  :mixins (DIFFER-23.4)
  :realization (:VERB "diverge"))

(define-category DIVERGE23800
  :mixins (DIFFER-23.4)
  :realization (:VERB "diverge"))

(define-category VARY23004
  :mixins (DIFFER-23.4)
  :realization (:VERB "vary"))

(define-category VARY24201
  :mixins (DIFFER-23.4)
  :realization (:VERB "vary"))

(define-category VARY24200
  :mixins (DIFFER-23.4)
  :realization (:VERB "vary"))

(define-category VARY23001
  :mixins (DIFFER-23.4)
  :realization (:VERB "vary"))

(define-category BANQUET23400
  :mixins (DINE-39.5)
  :realization (:VERB "banquet"))

(define-category BREAKFAST23400
  :mixins (DINE-39.5)
  :realization (:VERB "breakfast"))

(define-category BRUNCH23400
  :mixins (DINE-39.5)
  :realization (:VERB "brunch"))

(define-category DINE23401
  :mixins (DINE-39.5)
  :realization (:VERB "dine"))

(define-category FEAST23400
  :mixins (DINE-39.5)
  :realization (:VERB "feast"))

(define-category GRAZE23402
  :mixins (DINE-39.5)
  :realization (:VERB "graze"))

(define-category GRAZE23501
  :mixins (DINE-39.5)
  :realization (:VERB "graze"))

(define-category JUNKET23400
  :mixins (DINE-39.5)
  :realization (:VERB "junket"))

(define-category LUNCH23400
  :mixins (DINE-39.5)
  :realization (:VERB "lunch"))

(define-category NOSH23400
  :mixins (DINE-39.5)
  :realization (:VERB "nosh"))

(define-category PICNIC23400
  :mixins (DINE-39.5)
  :realization (:VERB "picnic"))

(define-category SNACK23400
  :mixins (DINE-39.5)
  :realization (:VERB "snack"))

(define-category SUP23402
  :mixins (DINE-39.5)
  :realization (:VERB "sup"))

(define-category DIE23001
  :mixins (DISAPPEARANCE-48.2)
  :realization (:VERB "die"))

(define-category DIE23000
  :mixins (DISAPPEARANCE-48.2)
  :realization (:VERB "die"))

(define-category GO_OUT23000
  :mixins (DISAPPEARANCE-48.2)
  :realization (:VERB "go_out"))

(define-category GO_DOWN23014
  :mixins (DISAPPEARANCE-48.2)
  :realization (:VERB "go_down"))

(define-category GO_OFF23500
  :mixins (DISAPPEARANCE-48.2)
  :realization (:VERB "go_off"))

(define-category DISAPPEAR23002
  :mixins (DISAPPEARANCE-48.2-1)
  :realization (:VERB "disappear"))

(define-category DISAPPEAR23900
  :mixins (DISAPPEARANCE-48.2-1)
  :realization (:VERB "disappear"))

(define-category DISAPPEAR23000
  :mixins (DISAPPEARANCE-48.2-1)
  :realization (:VERB "disappear"))

(define-category EXPIRE23000
  :mixins (DISAPPEARANCE-48.2-1)
  :realization (:VERB "expire"))

(define-category EXPIRE24200
  :mixins (DISAPPEARANCE-48.2-1)
  :realization (:VERB "expire"))

(define-category GO23003
  :mixins (DISAPPEARANCE-48.2-1)
  :realization (:VERB "go"))

(define-category LAPSE23800
  :mixins (DISAPPEARANCE-48.2-1)
  :realization (:VERB "lapse"))

(define-category LAPSE23001
  :mixins (DISAPPEARANCE-48.2-1)
  :realization (:VERB "lapse"))

(define-category PERISH23000
  :mixins (DISAPPEARANCE-48.2-1)
  :realization (:VERB "perish"))

(define-category VANISH23001
  :mixins (DISAPPEARANCE-48.2-1)
  :realization (:VERB "vanish"))

(define-category VANISH23002
  :mixins (DISAPPEARANCE-48.2-1)
  :realization (:VERB "vanish"))

(define-category VANISH23805
  :mixins (DISAPPEARANCE-48.2-1)
  :realization (:VERB "vanish"))

(define-category VANISH23900
  :mixins (DISAPPEARANCE-48.2-1)
  :realization (:VERB "vanish"))

(define-category VANISH23000
  :mixins (DISAPPEARANCE-48.2-1)
  :realization (:VERB "vanish"))

(define-category CARVE23502
  :mixins (DISASSEMBLE-23.3)
  :realization (:VERB "carve"))

(define-category CARVE23501
  :mixins (DISASSEMBLE-23.3)
  :realization (:VERB "carve"))

(define-category DETACH23501
  :mixins (DISASSEMBLE-23.3)
  :realization (:VERB "detach"))

(define-category DISASSEMBLE23600
  :mixins (DISASSEMBLE-23.3)
  :realization (:VERB "disassemble"))

(define-category DISCONNECT23500
  :mixins (DISASSEMBLE-23.3)
  :realization (:VERB "disconnect"))

(define-category DISCONNECT23503
  :mixins (DISASSEMBLE-23.3)
  :realization (:VERB "disconnect"))

(define-category PARE23500
  :mixins (DISASSEMBLE-23.3)
  :realization (:VERB "pare"))

(define-category PARE23502
  :mixins (DISASSEMBLE-23.3)
  :realization (:VERB "pare"))

(define-category PARE23501
  :mixins (DISASSEMBLE-23.3)
  :realization (:VERB "pare"))

(define-category PARTITION23000
  :mixins (DISASSEMBLE-23.3)
  :realization (:VERB "partition"))

(define-category SEGREGATE23000
  :mixins (DISASSEMBLE-23.3)
  :realization (:VERB "segregate"))

(define-category SEGREGATE23502
  :mixins (DISASSEMBLE-23.3)
  :realization (:VERB "segregate"))

(define-category SIFT23500
  :mixins (DISASSEMBLE-23.3)
  :realization (:VERB "sift"))

(define-category SLICE23500
  :mixins (DISASSEMBLE-23.3)
  :realization (:VERB "slice"))

(define-category SUNDER23000
  :mixins (DISASSEMBLE-23.3)
  :realization (:VERB "sunder"))

(define-category UNBOLT23500
  :mixins (DISASSEMBLE-23.3)
  :realization (:VERB "unbolt"))

(define-category UNBUCKLE23500
  :mixins (DISASSEMBLE-23.3)
  :realization (:VERB "unbuckle"))

(define-category UNBUTTON23500
  :mixins (DISASSEMBLE-23.3)
  :realization (:VERB "unbutton"))

(define-category UNCHAIN23500
  :mixins (DISASSEMBLE-23.3)
  :realization (:VERB "unchain"))

(define-category UNCLIP23500
  :mixins (DISASSEMBLE-23.3)
  :realization (:VERB "unclip"))

(define-category UNFASTEN23500
  :mixins (DISASSEMBLE-23.3)
  :realization (:VERB "unfasten"))

(define-category UNFASTEN23501
  :mixins (DISASSEMBLE-23.3)
  :realization (:VERB "unfasten"))

(define-category UNHINGE23000
  :mixins (DISASSEMBLE-23.3)
  :realization (:VERB "unhinge"))

(define-category UNHITCH23500
  :mixins (DISASSEMBLE-23.3)
  :realization (:VERB "unhitch"))

(define-category UNHOOK23500
  :mixins (DISASSEMBLE-23.3)
  :realization (:VERB "unhook"))

(define-category UNLOCK23000
  :mixins (DISASSEMBLE-23.3)
  :realization (:VERB "unlock"))

(define-category UNLOCK23500
  :mixins (DISASSEMBLE-23.3)
  :realization (:VERB "unlock"))

(define-category UNLEASH23501
  :mixins (DISASSEMBLE-23.3)
  :realization (:VERB "unleash"))

(define-category UNPIN23500
  :mixins (DISASSEMBLE-23.3)
  :realization (:VERB "unpin"))

(define-category UNSCREW23501
  :mixins (DISASSEMBLE-23.3)
  :realization (:VERB "unscrew"))

(define-category UNSCREW23500
  :mixins (DISASSEMBLE-23.3)
  :realization (:VERB "unscrew"))

(define-category UNSEAL23500
  :mixins (DISASSEMBLE-23.3)
  :realization (:VERB "unseal"))

(define-category UNSTAPLE23500
  :mixins (DISASSEMBLE-23.3)
  :realization (:VERB "unstaple"))

(define-category UNTIE23500
  :mixins (DISASSEMBLE-23.3)
  :realization (:VERB "untie"))

(define-category UNZIP23500
  :mixins (DISASSEMBLE-23.3)
  :realization (:VERB "unzip"))

(define-category SIEVE23500
  :mixins (DISASSEMBLE-23.3)
  :realization (:VERB "sieve"))

(define-category DEDUCE23200
  :mixins (DISCOVER-84)
  :realization (:VERB "deduce"))

(define-category DEDUCE23100
  :mixins (DISCOVER-84)
  :realization (:VERB "deduce"))

(define-category DETERMINE23201
  :mixins (DISCOVER-84)
  :realization (:VERB "determine"))

(define-category DETERMINE23200
  :mixins (DISCOVER-84)
  :realization (:VERB "determine"))

(define-category DISCOVER23103
  :mixins (DISCOVER-84)
  :realization (:VERB "discover"))

(define-category DISCOVER23900
  :mixins (DISCOVER-84)
  :realization (:VERB "discover"))

(define-category DISCOVER24000
  :mixins (DISCOVER-84)
  :realization (:VERB "discover"))

(define-category DISCOVER23100
  :mixins (DISCOVER-84)
  :realization (:VERB "discover"))

(define-category DISCOVER23600
  :mixins (DISCOVER-84)
  :realization (:VERB "discover"))

(define-category DISCOVER23101
  :mixins (DISCOVER-84)
  :realization (:VERB "discover"))

(define-category DISCOVER23903
  :mixins (DISCOVER-84)
  :realization (:VERB "discover"))

(define-category FIND23109
  :mixins (DISCOVER-84)
  :realization (:VERB "find"))

(define-category FIND23600
  :mixins (DISCOVER-84)
  :realization (:VERB "find"))

(define-category FIND23200
  :mixins (DISCOVER-84)
  :realization (:VERB "find"))

(define-category FIND24000
  :mixins (DISCOVER-84)
  :realization (:VERB "find"))

(define-category FIND23902
  :mixins (DISCOVER-84)
  :realization (:VERB "find"))

(define-category GUESS23102
  :mixins (DISCOVER-84)
  :realization (:VERB "guess"))

(define-category REALIZE23101
  :mixins (DISCOVER-84)
  :realization (:VERB "realize"))

(define-category ASCERTAIN23101
  :mixins (DISCOVER-84)
  :realization (:VERB "ascertain"))

(define-category RATIONALIZE23200
  :mixins (DISCOVER-84)
  :realization (:VERB "rationalize"))

(define-category RELEARN23100
  :mixins (DISCOVER-84)
  :realization (:VERB "relearn"))

(define-category SEE23102
  :mixins (DISCOVER-84)
  :realization (:VERB "see"))

(define-category SCENT_OUT23900
  :mixins (DISCOVER-84)
  :realization (:VERB "scent_out"))

(define-category SOLVE23101
  :mixins (DISCOVER-84)
  :realization (:VERB "solve"))

(define-category SOLVE23100
  :mixins (DISCOVER-84)
  :realization (:VERB "solve"))

(define-category CHANCE_ON24000
  :mixins (DISCOVER-84)
  :realization (:VERB "chance_on"))

(define-category WORK_OUT23104
  :mixins (DISCOVER-84)
  :realization (:VERB "work_out"))

(define-category PICK_UP23100
  :mixins (DISCOVER-84-1)
  :realization (:VERB "pick_up"))

(define-category HEAR23100
  :mixins (DISCOVER-84-1-1)
  :realization (:VERB "hear"))

(define-category LEARN23101
  :mixins (DISCOVER-84-1-1)
  :realization (:VERB "learn"))

(define-category STUDY23102
  :mixins (DISCOVER-84-1-1)
  :realization (:VERB "study"))

(define-category FIND_OUT23201
  :mixins (DISCOVER-84-1-1)
  :realization (:VERB "find_out"))

(define-category FIND_OUT23100
  :mixins (DISCOVER-84-1-1)
  :realization (:VERB "find_out"))

(define-category FIGURE_OUT23100
  :mixins (DISCOVER-84-1-1)
  :realization (:VERB "figure_out"))

(define-category CROAK23000
  :mixins (DISFUNCTION-105.2.2)
  :realization (:VERB "croak"))

(define-category DIE23004
  :mixins (DISFUNCTION-105.2.2)
  :realization (:VERB "die"))

(define-category FIZZLE_OUT24200
  :mixins (DISFUNCTION-105.2.2)
  :realization (:VERB "fizzle_out"))

(define-category GIVE_OUT23000
  :mixins (DISFUNCTION-105.2.2)
  :realization (:VERB "give_out"))

(define-category GO_DOWN23014
  :mixins (DISFUNCTION-105.2.2)
  :realization (:VERB "go_down"))

(define-category GO_OFF23500
  :mixins (DISFUNCTION-105.2.2)
  :realization (:VERB "go_off"))

(define-category GO_OUT23000
  :mixins (DISFUNCTION-105.2.2)
  :realization (:VERB "go_out"))

(define-category POOP_OUT22900
  :mixins (DISFUNCTION-105.2.2)
  :realization (:VERB "poop_out"))

(define-category TELL_APART23900
  :mixins (DISTINGUISH-23.5)
  :realization (:VERB "tell_apart"))

(define-category DIFFERENTIATE23101
  :mixins (DISTINGUISH-23.5-1)
  :realization (:VERB "differentiate"))

(define-category BATHE22901
  :mixins (DRESS-41.1.1)
  :realization (:VERB "bathe"))

(define-category BATHE22900
  :mixins (DRESS-41.1.1)
  :realization (:VERB "bathe"))

(define-category CHANGE23006
  :mixins (DRESS-41.1.1)
  :realization (:VERB "change"))

(define-category CHANGE23003
  :mixins (DRESS-41.1.1)
  :realization (:VERB "change"))

(define-category DISROBE22901
  :mixins (DRESS-41.1.1)
  :realization (:VERB "disrobe"))

(define-category DRESS22907
  :mixins (DRESS-41.1.1)
  :realization (:VERB "dress"))

(define-category DRESS22901
  :mixins (DRESS-41.1.1)
  :realization (:VERB "dress"))

(define-category DRESS22900
  :mixins (DRESS-41.1.1)
  :realization (:VERB "dress"))

(define-category EXERCISE22900
  :mixins (DRESS-41.1.1)
  :realization (:VERB "exercise"))

(define-category EXERCISE22901
  :mixins (DRESS-41.1.1)
  :realization (:VERB "exercise"))

(define-category FROCK22900
  :mixins (DRESS-41.1.1)
  :realization (:VERB "frock"))

(define-category LAVE22902
  :mixins (DRESS-41.1.1)
  :realization (:VERB "lave"))

(define-category LAVE22900
  :mixins (DRESS-41.1.1)
  :realization (:VERB "lave"))

(define-category PREEN22900
  :mixins (DRESS-41.1.1)
  :realization (:VERB "preen"))

(define-category PRIMP22900
  :mixins (DRESS-41.1.1)
  :realization (:VERB "primp"))

(define-category SHAVE23501
  :mixins (DRESS-41.1.1)
  :realization (:VERB "shave"))

(define-category SHAVE22900
  :mixins (DRESS-41.1.1)
  :realization (:VERB "shave"))

(define-category SHOWER22900
  :mixins (DRESS-41.1.1)
  :realization (:VERB "shower"))

(define-category STRIP23012
  :mixins (DRESS-41.1.1)
  :realization (:VERB "strip"))

(define-category STRIP24003
  :mixins (DRESS-41.1.1)
  :realization (:VERB "strip"))

(define-category UNCLOTHE22900
  :mixins (DRESS-41.1.1)
  :realization (:VERB "unclothe"))

(define-category UNDRESS23000
  :mixins (DRESS-41.1.1)
  :realization (:VERB "undress"))

(define-category UNDRESS22900
  :mixins (DRESS-41.1.1)
  :realization (:VERB "undress"))

(define-category WASH23500
  :mixins (DRESS-41.1.1)
  :realization (:VERB "wash"))

(define-category WASH22900
  :mixins (DRESS-41.1.1)
  :realization (:VERB "wash"))

(define-category DRESS22905
  :mixins (DRESSING_WELL-41.3.2)
  :realization (:VERB "dress"))

(define-category SPRUCE22900
  :mixins (DRESSING_WELL-41.3.2)
  :realization (:VERB "spruce"))

(define-category TOG22900
  :mixins (DRESSING_WELL-41.3.2)
  :realization (:VERB "tog"))

(define-category BIKE23800
  :mixins (DRIVE-11.5)
  :realization (:VERB "bike"))

(define-category DRIVE23802
  :mixins (DRIVE-11.5)
  :realization (:VERB "drive"))

(define-category ROW23800
  :mixins (DRIVE-11.5)
  :realization (:VERB "row"))

(define-category MOTOR23800
  :mixins (DRIVE-11.5)
  :realization (:VERB "motor"))

(define-category PADDLE23800
  :mixins (DRIVE-11.5)
  :realization (:VERB "paddle"))

(define-category TOOL23800
  :mixins (DRIVE-11.5)
  :realization (:VERB "tool"))

(define-category TOOL23801
  :mixins (DRIVE-11.5)
  :realization (:VERB "tool"))

(define-category TOOL_AROUND23800
  :mixins (DRIVE-11.5)
  :realization (:VERB "tool_around"))

(define-category TRUNDLE23800
  :mixins (DRIVE-11.5)
  :realization (:VERB "trundle"))

(define-category WHEEL23804
  :mixins (DRIVE-11.5)
  :realization (:VERB "wheel"))

(define-category BARGE23801
  :mixins (DRIVE-11.5-1)
  :realization (:VERB "barge"))

(define-category BUS23801
  :mixins (DRIVE-11.5-1)
  :realization (:VERB "bus"))

(define-category CART23501
  :mixins (DRIVE-11.5-1)
  :realization (:VERB "cart"))

(define-category FERRY23801
  :mixins (DRIVE-11.5-1)
  :realization (:VERB "ferry"))

(define-category FERRY23802
  :mixins (DRIVE-11.5-1)
  :realization (:VERB "ferry"))

(define-category FLY23500
  :mixins (DRIVE-11.5-1)
  :realization (:VERB "fly"))

(define-category SHUTTLE23800
  :mixins (DRIVE-11.5-1)
  :realization (:VERB "shuttle"))

(define-category TRUCK23800
  :mixins (DRIVE-11.5-1)
  :realization (:VERB "truck"))

(define-category CALL24114
  :mixins (DUB-29.3)
  :realization (:VERB "call"))

(define-category CALL23200
  :mixins (DUB-29.3)
  :realization (:VERB "call"))

(define-category CALL23202
  :mixins (DUB-29.3)
  :realization (:VERB "call"))

(define-category DECREE23100
  :mixins (DUB-29.3)
  :realization (:VERB "decree"))

(define-category DUB23200
  :mixins (DUB-29.3)
  :realization (:VERB "dub"))

(define-category PRONOUNCE23200
  :mixins (DUB-29.3)
  :realization (:VERB "pronounce"))

(define-category PRONOUNCE23201
  :mixins (DUB-29.3)
  :realization (:VERB "pronounce"))

(define-category RENAME23200
  :mixins (DUB-29.3)
  :realization (:VERB "rename"))

(define-category RULE23100
  :mixins (DUB-29.3)
  :realization (:VERB "rule"))

(define-category STAMP23900
  :mixins (DUB-29.3)
  :realization (:VERB "stamp"))

(define-category TERM23200
  :mixins (DUB-29.3)
  :realization (:VERB "term"))

(define-category VOTE24112
  :mixins (DUB-29.3)
  :realization (:VERB "vote"))

(define-category ANOINT22900
  :mixins (DUB-29.3)
  :realization (:VERB "anoint"))

(define-category BAPTIZE23200
  :mixins (DUB-29.3)
  :realization (:VERB "baptize"))

(define-category BRAND23200
  :mixins (DUB-29.3)
  :realization (:VERB "brand"))

(define-category CHRISTEN23200
  :mixins (DUB-29.3)
  :realization (:VERB "christen"))

(define-category CONSECRATE23200
  :mixins (DUB-29.3)
  :realization (:VERB "consecrate"))

(define-category CONSECRATE23201
  :mixins (DUB-29.3)
  :realization (:VERB "consecrate"))

(define-category CONSECRATE24100
  :mixins (DUB-29.3)
  :realization (:VERB "consecrate"))

(define-category CROWN24100
  :mixins (DUB-29.3)
  :realization (:VERB "crown"))

(define-category LABEL23201
  :mixins (DUB-29.3)
  :realization (:VERB "label"))

(define-category NAME24100
  :mixins (DUB-29.3)
  :realization (:VERB "name"))

(define-category NAME24101
  :mixins (DUB-29.3)
  :realization (:VERB "name"))

(define-category NAME23203
  :mixins (DUB-29.3)
  :realization (:VERB "name"))

(define-category NICKNAME23200
  :mixins (DUB-29.3)
  :realization (:VERB "nickname"))

(define-category STYLE23200
  :mixins (DUB-29.3)
  :realization (:VERB "style"))

(define-category EAT23402
  :mixins (EAT-39.1-1)
  :realization (:VERB "eat"))

(define-category EAT23401
  :mixins (EAT-39.1-1)
  :realization (:VERB "eat"))

(define-category EAT23400
  :mixins (EAT-39.1-1)
  :realization (:VERB "eat"))

(define-category DRINK23412
  :mixins (EAT-39.1-2)
  :realization (:VERB "drink"))

(define-category DRINK23401
  :mixins (EAT-39.1-2)
  :realization (:VERB "drink"))

(define-category DRINK23400
  :mixins (EAT-39.1-2)
  :realization (:VERB "drink"))

(define-category HUFF23400
  :mixins (EAT-39.1-3)
  :realization (:VERB "huff"))

(define-category INJECT23401
  :mixins (EAT-39.1-3)
  :realization (:VERB "inject"))

(define-category MAINLINE23400
  :mixins (EAT-39.1-3)
  :realization (:VERB "mainline"))

(define-category SNORT23401
  :mixins (EAT-39.1-3)
  :realization (:VERB "snort"))

(define-category SNORT23402
  :mixins (EAT-39.1-3)
  :realization (:VERB "snort"))

(define-category SMOKE23400
  :mixins (EAT-39.1-3)
  :realization (:VERB "smoke"))

(define-category USE23402
  :mixins (EAT-39.1-3)
  :realization (:VERB "use"))

(define-category EMPATHIZE23100
  :mixins (EMPATHIZE-88.2)
  :realization (:VERB "empathize"))

(define-category SYMPATHIZE23700
  :mixins (EMPATHIZE-88.2)
  :realization (:VERB "sympathize"))

(define-category SYMPATHIZE23100
  :mixins (EMPATHIZE-88.2)
  :realization (:VERB "sympathize"))

(define-category IDENTIFY23104
  :mixins (EMPATHIZE-88.2)
  :realization (:VERB "identify"))

(define-category COMMISERATE23700
  :mixins (EMPATHIZE-88.2)
  :realization (:VERB "commiserate"))

(define-category CLERK24100
  :mixins (EMPLOYMENT-95.3)
  :realization (:VERB "clerk"))

(define-category FREELANCE24100
  :mixins (EMPLOYMENT-95.3)
  :realization (:VERB "freelance"))

(define-category SUBCONTRACT24100
  :mixins (EMPLOYMENT-95.3)
  :realization (:VERB "subcontract"))

(define-category WORK24104
  :mixins (EMPLOYMENT-95.3)
  :realization (:VERB "work"))

(define-category WORK24100
  :mixins (EMPLOYMENT-95.3)
  :realization (:VERB "work"))

(define-category CONTROL24100
  :mixins (ENFORCE-63)
  :realization (:VERB "control"))

(define-category ENFORCE24101
  :mixins (ENFORCE-63)
  :realization (:VERB "enforce"))

(define-category IMPOSE24100
  :mixins (ENFORCE-63)
  :realization (:VERB "impose"))

(define-category CREATE23602
  :mixins (ENGENDER-27.1)
  :realization (:VERB "create"))

(define-category CREATE23600
  :mixins (ENGENDER-27.1)
  :realization (:VERB "create"))

(define-category ENGENDER23600
  :mixins (ENGENDER-27.1)
  :realization (:VERB "engender"))

(define-category GENERATE23600
  :mixins (ENGENDER-27.1)
  :realization (:VERB "generate"))

(define-category KINDLE23700
  :mixins (ENGENDER-27.1)
  :realization (:VERB "kindle"))

(define-category PRODUCE23603
  :mixins (ENGENDER-27.1)
  :realization (:VERB "produce"))

(define-category RAISE23206
  :mixins (ENGENDER-27.1)
  :realization (:VERB "raise"))

(define-category RAISE23606
  :mixins (ENGENDER-27.1)
  :realization (:VERB "raise"))

(define-category RAISE23200
  :mixins (ENGENDER-27.1)
  :realization (:VERB "raise"))

(define-category RETURN23600
  :mixins (ENGENDER-27.1)
  :realization (:VERB "return"))

(define-category SET_IN_MOTION23505
  :mixins (ENGENDER-27.1)
  :realization (:VERB "set_in_motion"))

(define-category SET_OFF23600
  :mixins (ENGENDER-27.1)
  :realization (:VERB "set_off"))

(define-category SET_OFF23200
  :mixins (ENGENDER-27.1)
  :realization (:VERB "set_off"))

(define-category SHAPE23100
  :mixins (ENGENDER-27.1)
  :realization (:VERB "shape"))

(define-category SPAWN23600
  :mixins (ENGENDER-27.1)
  :realization (:VERB "spawn"))

(define-category ACTUATE23600
  :mixins (ENGENDER-27.1-1)
  :realization (:VERB "actuate"))

(define-category AROUSE23600
  :mixins (ENGENDER-27.1-1)
  :realization (:VERB "arouse"))

(define-category CALL_FORTH23600
  :mixins (ENGENDER-27.1-1)
  :realization (:VERB "call_forth"))

(define-category CALL_FORTH23601
  :mixins (ENGENDER-27.1-1)
  :realization (:VERB "call_forth"))

(define-category CAUSE23600
  :mixins (ENGENDER-27.1-1)
  :realization (:VERB "cause"))

(define-category INCITE23200
  :mixins (ENGENDER-27.1-1)
  :realization (:VERB "incite"))

(define-category INSPIRE23600
  :mixins (ENGENDER-27.1-1)
  :realization (:VERB "inspire"))

(define-category INSPIRE23700
  :mixins (ENGENDER-27.1-1)
  :realization (:VERB "inspire"))

(define-category INSTIGATE23200
  :mixins (ENGENDER-27.1-1)
  :realization (:VERB "instigate"))

(define-category PROMPT23600
  :mixins (ENGENDER-27.1-1)
  :realization (:VERB "prompt"))

(define-category PROVOKE23600
  :mixins (ENGENDER-27.1-1)
  :realization (:VERB "provoke"))

(define-category PROVOKE23700
  :mixins (ENGENDER-27.1-1)
  :realization (:VERB "provoke"))

(define-category SPARK23600
  :mixins (ENGENDER-27.1-1)
  :realization (:VERB "spark"))

(define-category STIMULATE23200
  :mixins (ENGENDER-27.1-1)
  :realization (:VERB "stimulate"))

(define-category STIMULATE23600
  :mixins (ENGENDER-27.1-1)
  :realization (:VERB "stimulate"))

(define-category STIR_UP23200
  :mixins (ENGENDER-27.1-1)
  :realization (:VERB "stir_up"))

(define-category ENSURE23200
  :mixins (ENSURE-99)
  :realization (:VERB "ensure"))

(define-category ASSURE23203
  :mixins (ENSURE-99)
  :realization (:VERB "assure"))

(define-category GUARANTEE23203
  :mixins (ENSURE-99)
  :realization (:VERB "guarantee"))

(define-category INSURE23204
  :mixins (ENSURE-99)
  :realization (:VERB "insure"))

(define-category SECURE23200
  :mixins (ENSURE-99)
  :realization (:VERB "secure"))

(define-category ASCERTAIN23100
  :mixins (ENSURE-99)
  :realization (:VERB "ascertain"))

(define-category REINSURE23201
  :mixins (ENSURE-99)
  :realization (:VERB "reinsure"))

(define-category REINSURE23200
  :mixins (ENSURE-99)
  :realization (:VERB "reinsure"))

(define-category REINSURE24000
  :mixins (ENSURE-99)
  :realization (:VERB "reinsure"))

(define-category PROVIDE23200
  :mixins (ENSURE-99)
  :realization (:VERB "provide"))

(define-category BLISTER23000
  :mixins (ENTITY_SPECIFIC_COS-45.5)
  :realization (:VERB "blister"))

(define-category BLOOM23000
  :mixins (ENTITY_SPECIFIC_COS-45.5)
  :realization (:VERB "bloom"))

(define-category BLOSSOM23001
  :mixins (ENTITY_SPECIFIC_COS-45.5)
  :realization (:VERB "blossom"))

(define-category BUD23002
  :mixins (ENTITY_SPECIFIC_COS-45.5)
  :realization (:VERB "bud"))

(define-category BUD23000
  :mixins (ENTITY_SPECIFIC_COS-45.5)
  :realization (:VERB "bud"))

(define-category BURGEON23001
  :mixins (ENTITY_SPECIFIC_COS-45.5)
  :realization (:VERB "burgeon"))

(define-category BURN24301
  :mixins (ENTITY_SPECIFIC_COS-45.5)
  :realization (:VERB "burn"))

(define-category CORRODE23000
  :mixins (ENTITY_SPECIFIC_COS-45.5)
  :realization (:VERB "corrode"))

(define-category CRUST23000
  :mixins (ENTITY_SPECIFIC_COS-45.5)
  :realization (:VERB "crust"))

(define-category DECAY23002
  :mixins (ENTITY_SPECIFIC_COS-45.5)
  :realization (:VERB "decay"))

(define-category DECAY23000
  :mixins (ENTITY_SPECIFIC_COS-45.5)
  :realization (:VERB "decay"))

(define-category DETERIORATE22900
  :mixins (ENTITY_SPECIFIC_COS-45.5)
  :realization (:VERB "deteriorate"))

(define-category DETERIORATE23000
  :mixins (ENTITY_SPECIFIC_COS-45.5)
  :realization (:VERB "deteriorate"))

(define-category ERODE23001
  :mixins (ENTITY_SPECIFIC_COS-45.5)
  :realization (:VERB "erode"))

(define-category FERMENT23000
  :mixins (ENTITY_SPECIFIC_COS-45.5)
  :realization (:VERB "ferment"))

(define-category FLOWER23000
  :mixins (ENTITY_SPECIFIC_COS-45.5)
  :realization (:VERB "flower"))

(define-category FOLIATE23000
  :mixins (ENTITY_SPECIFIC_COS-45.5)
  :realization (:VERB "foliate"))

(define-category GERMINATE23000
  :mixins (ENTITY_SPECIFIC_COS-45.5)
  :realization (:VERB "germinate"))

(define-category MOLDER23000
  :mixins (ENTITY_SPECIFIC_COS-45.5)
  :realization (:VERB "molder"))

(define-category MOLT22900
  :mixins (ENTITY_SPECIFIC_COS-45.5)
  :realization (:VERB "molt"))

(define-category MOULT22900
  :mixins (ENTITY_SPECIFIC_COS-45.5)
  :realization (:VERB "moult"))

(define-category ROT23000
  :mixins (ENTITY_SPECIFIC_COS-45.5)
  :realization (:VERB "rot"))

(define-category RUST23000
  :mixins (ENTITY_SPECIFIC_COS-45.5)
  :realization (:VERB "rust"))

(define-category SPOIL23001
  :mixins (ENTITY_SPECIFIC_COS-45.5)
  :realization (:VERB "spoil"))

(define-category SPROUT23000
  :mixins (ENTITY_SPECIFIC_COS-45.5)
  :realization (:VERB "sprout"))

(define-category STAGNATE24200
  :mixins (ENTITY_SPECIFIC_COS-45.5)
  :realization (:VERB "stagnate"))

(define-category SUBSIDE23800
  :mixins (ENTITY_SPECIFIC_COS-45.5)
  :realization (:VERB "subside"))

(define-category SUBSIDE23802
  :mixins (ENTITY_SPECIFIC_COS-45.5)
  :realization (:VERB "subside"))

(define-category SUBSIDE23000
  :mixins (ENTITY_SPECIFIC_COS-45.5)
  :realization (:VERB "subside"))

(define-category SUPPURATE22900
  :mixins (ENTITY_SPECIFIC_COS-45.5)
  :realization (:VERB "suppurate"))

(define-category SUPPURATE22901
  :mixins (ENTITY_SPECIFIC_COS-45.5)
  :realization (:VERB "suppurate"))

(define-category SWELL23000
  :mixins (ENTITY_SPECIFIC_COS-45.5)
  :realization (:VERB "swell"))

(define-category SWELL23002
  :mixins (ENTITY_SPECIFIC_COS-45.5)
  :realization (:VERB "swell"))

(define-category WANE23001
  :mixins (ENTITY_SPECIFIC_COS-45.5)
  :realization (:VERB "wane"))

(define-category WANE23002
  :mixins (ENTITY_SPECIFIC_COS-45.5)
  :realization (:VERB "wane"))

(define-category WILT23000
  :mixins (ENTITY_SPECIFIC_COS-45.5)
  :realization (:VERB "wilt"))

(define-category WITHER23000
  :mixins (ENTITY_SPECIFIC_COS-45.5)
  :realization (:VERB "wither"))

(define-category PULLULATE23000
  :mixins (ENTITY_SPECIFIC_COS-45.5)
  :realization (:VERB "pullulate"))

(define-category BILLOW23802
  :mixins (ENTITY_SPECIFIC_MODES_BEING-47.2)
  :realization (:VERB "billow"))

(define-category BLOOM23000
  :mixins (ENTITY_SPECIFIC_MODES_BEING-47.2)
  :realization (:VERB "bloom"))

(define-category BLOSSOM23001
  :mixins (ENTITY_SPECIFIC_MODES_BEING-47.2)
  :realization (:VERB "blossom"))

(define-category BRISTLE23800
  :mixins (ENTITY_SPECIFIC_MODES_BEING-47.2)
  :realization (:VERB "bristle"))

(define-category BULGE24200
  :mixins (ENTITY_SPECIFIC_MODES_BEING-47.2)
  :realization (:VERB "bulge"))

(define-category BURN24301
  :mixins (ENTITY_SPECIFIC_MODES_BEING-47.2)
  :realization (:VERB "burn"))

(define-category EFFERVESCE23000
  :mixins (ENTITY_SPECIFIC_MODES_BEING-47.2)
  :realization (:VERB "effervesce"))

(define-category FESTER22900
  :mixins (ENTITY_SPECIFIC_MODES_BEING-47.2)
  :realization (:VERB "fester"))

(define-category FIZZ23000
  :mixins (ENTITY_SPECIFIC_MODES_BEING-47.2)
  :realization (:VERB "fizz"))

(define-category FLOW23504
  :mixins (ENTITY_SPECIFIC_MODES_BEING-47.2)
  :realization (:VERB "flow"))

(define-category FLOW23800
  :mixins (ENTITY_SPECIFIC_MODES_BEING-47.2)
  :realization (:VERB "flow"))

(define-category FLOWER23000
  :mixins (ENTITY_SPECIFIC_MODES_BEING-47.2)
  :realization (:VERB "flower"))

(define-category FLUX23800
  :mixins (ENTITY_SPECIFIC_MODES_BEING-47.2)
  :realization (:VERB "flux"))

(define-category FOAM23005
  :mixins (ENTITY_SPECIFIC_MODES_BEING-47.2)
  :realization (:VERB "foam"))

(define-category FROTH23001
  :mixins (ENTITY_SPECIFIC_MODES_BEING-47.2)
  :realization (:VERB "froth"))

(define-category FROTH23000
  :mixins (ENTITY_SPECIFIC_MODES_BEING-47.2)
  :realization (:VERB "froth"))

(define-category MOIL23800
  :mixins (ENTITY_SPECIFIC_MODES_BEING-47.2)
  :realization (:VERB "moil"))

(define-category PROPAGATE22900
  :mixins (ENTITY_SPECIFIC_MODES_BEING-47.2)
  :realization (:VERB "propagate"))

(define-category PROPAGATE23801
  :mixins (ENTITY_SPECIFIC_MODES_BEING-47.2)
  :realization (:VERB "propagate"))

(define-category RAGE24200
  :mixins (ENTITY_SPECIFIC_MODES_BEING-47.2)
  :realization (:VERB "rage"))

(define-category RIPPLE23900
  :mixins (ENTITY_SPECIFIC_MODES_BEING-47.2)
  :realization (:VERB "ripple"))

(define-category ROIL23800
  :mixins (ENTITY_SPECIFIC_MODES_BEING-47.2)
  :realization (:VERB "roil"))

(define-category SEETHE23000
  :mixins (ENTITY_SPECIFIC_MODES_BEING-47.2)
  :realization (:VERB "seethe"))

(define-category SEETHE23003
  :mixins (ENTITY_SPECIFIC_MODES_BEING-47.2)
  :realization (:VERB "seethe"))

(define-category SMOLDER23000
  :mixins (ENTITY_SPECIFIC_MODES_BEING-47.2)
  :realization (:VERB "smolder"))

(define-category SPROUT22901
  :mixins (ENTITY_SPECIFIC_MODES_BEING-47.2)
  :realization (:VERB "sprout"))

(define-category SPROUT23000
  :mixins (ENTITY_SPECIFIC_MODES_BEING-47.2)
  :realization (:VERB "sprout"))

(define-category CHARGE23201
  :mixins (EQUIP-13.4.2)
  :realization (:VERB "charge"))

(define-category CHARGE24100
  :mixins (EQUIP-13.4.2)
  :realization (:VERB "charge"))

(define-category INVEST24100
  :mixins (EQUIP-13.4.2)
  :realization (:VERB "invest"))

(define-category INVEST24102
  :mixins (EQUIP-13.4.2)
  :realization (:VERB "invest"))

(define-category INVEST24103
  :mixins (EQUIP-13.4.2)
  :realization (:VERB "invest"))

(define-category PLY23400
  :mixins (EQUIP-13.4.2)
  :realization (:VERB "ply"))

(define-category ARM24000
  :mixins (EQUIP-13.4.2-1)
  :realization (:VERB "arm"))

(define-category ARM23300
  :mixins (EQUIP-13.4.2-1)
  :realization (:VERB "arm"))

(define-category EQUIP24000
  :mixins (EQUIP-13.4.2-1)
  :realization (:VERB "equip"))

(define-category OUTFIT24000
  :mixins (EQUIP-13.4.2-1)
  :realization (:VERB "outfit"))

(define-category REARM23300
  :mixins (EQUIP-13.4.2-1)
  :realization (:VERB "rearm"))

(define-category REARM24000
  :mixins (EQUIP-13.4.2-1)
  :realization (:VERB "rearm"))

(define-category RECOMPENSE24001
  :mixins (EQUIP-13.4.2-1)
  :realization (:VERB "recompense"))

(define-category REGALE23400
  :mixins (EQUIP-13.4.2-1)
  :realization (:VERB "regale"))

(define-category REMUNERATE24000
  :mixins (EQUIP-13.4.2-1)
  :realization (:VERB "remunerate"))

(define-category REPAY24002
  :mixins (EQUIP-13.4.2-1)
  :realization (:VERB "repay"))

(define-category REWARD24000
  :mixins (EQUIP-13.4.2-1)
  :realization (:VERB "reward"))

(define-category SADDLE23200
  :mixins (EQUIP-13.4.2-1)
  :realization (:VERB "saddle"))

(define-category SADDLE23510
  :mixins (EQUIP-13.4.2-1)
  :realization (:VERB "saddle"))

(define-category TREAT23400
  :mixins (EQUIP-13.4.2-1)
  :realization (:VERB "treat"))

(define-category TREAT24000
  :mixins (EQUIP-13.4.2-1)
  :realization (:VERB "treat"))

(define-category ARMOR24000
  :mixins (EQUIP-13.4.2-1-1)
  :realization (:VERB "armor"))

(define-category FORTIFY23300
  :mixins (EQUIP-13.4.2-1-1)
  :realization (:VERB "fortify"))

(define-category OVERBURDEN23500
  :mixins (EQUIP-13.4.2-1-1)
  :realization (:VERB "overburden"))

(define-category WEIGHT23500
  :mixins (EQUIP-13.4.2-1-1)
  :realization (:VERB "weight"))

(define-category BURDEN23200
  :mixins (EQUIP-13.4.2-1-1)
  :realization (:VERB "burden"))

(define-category BURDEN23500
  :mixins (EQUIP-13.4.2-1-1)
  :realization (:VERB "burden"))

(define-category COMPENSATE24000
  :mixins (EQUIP-13.4.2-1-1)
  :realization (:VERB "compensate"))

(define-category COMPENSATE24002
  :mixins (EQUIP-13.4.2-1-1)
  :realization (:VERB "compensate"))

(define-category CUT23812
  :mixins (ESCAPE-51.1)
  :realization (:VERB "cut"))

(define-category CUT23813
  :mixins (ESCAPE-51.1)
  :realization (:VERB "cut"))

(define-category GET23815
  :mixins (ESCAPE-51.1)
  :realization (:VERB "get"))

(define-category GET23800
  :mixins (ESCAPE-51.1)
  :realization (:VERB "get"))

(define-category ADVANCE23800
  :mixins (ESCAPE-51.1-1)
  :realization (:VERB "advance"))

(define-category APPROACH23800
  :mixins (ESCAPE-51.1-1)
  :realization (:VERB "approach"))

(define-category COME23804
  :mixins (ESCAPE-51.1-1)
  :realization (:VERB "come"))

(define-category COME23800
  :mixins (ESCAPE-51.1-1)
  :realization (:VERB "come"))

(define-category CONTINUE23800
  :mixins (ESCAPE-51.1-1)
  :realization (:VERB "continue"))

(define-category DECAMP23802
  :mixins (ESCAPE-51.1-1)
  :realization (:VERB "decamp"))

(define-category DECAMP23801
  :mixins (ESCAPE-51.1-1)
  :realization (:VERB "decamp"))

(define-category DECAMP23800
  :mixins (ESCAPE-51.1-1)
  :realization (:VERB "decamp"))

(define-category FALL23814
  :mixins (ESCAPE-51.1-1)
  :realization (:VERB "fall"))

(define-category FALL23815
  :mixins (ESCAPE-51.1-1)
  :realization (:VERB "fall"))

(define-category FALL23803
  :mixins (ESCAPE-51.1-1)
  :realization (:VERB "fall"))

(define-category FILE23800
  :mixins (ESCAPE-51.1-1)
  :realization (:VERB "file"))

(define-category GO23801
  :mixins (ESCAPE-51.1-1)
  :realization (:VERB "go"))

(define-category GO23800
  :mixins (ESCAPE-51.1-1)
  :realization (:VERB "go"))

(define-category PLUNGE23800
  :mixins (ESCAPE-51.1-1)
  :realization (:VERB "plunge"))

(define-category PLUNGE23805
  :mixins (ESCAPE-51.1-1)
  :realization (:VERB "plunge"))

(define-category RECEDE23000
  :mixins (ESCAPE-51.1-1)
  :realization (:VERB "recede"))

(define-category RECEDE23300
  :mixins (ESCAPE-51.1-1)
  :realization (:VERB "recede"))

(define-category RECEDE23801
  :mixins (ESCAPE-51.1-1)
  :realization (:VERB "recede"))

(define-category RETURN23800
  :mixins (ESCAPE-51.1-1)
  :realization (:VERB "return"))

(define-category RISE23808
  :mixins (ESCAPE-51.1-1)
  :realization (:VERB "rise"))

(define-category RISE22908
  :mixins (ESCAPE-51.1-1)
  :realization (:VERB "rise"))

(define-category RISE23804
  :mixins (ESCAPE-51.1-1)
  :realization (:VERB "rise"))

(define-category RISE23805
  :mixins (ESCAPE-51.1-1)
  :realization (:VERB "rise"))

(define-category RISE23800
  :mixins (ESCAPE-51.1-1)
  :realization (:VERB "rise"))

(define-category TUMBLE23804
  :mixins (ESCAPE-51.1-1)
  :realization (:VERB "tumble"))

(define-category TUMBLE23800
  :mixins (ESCAPE-51.1-1)
  :realization (:VERB "tumble"))

(define-category ARRIVE23800
  :mixins (ESCAPE-51.1-1)
  :realization (:VERB "arrive"))

(define-category SET_OFF23800
  :mixins (ESCAPE-51.1-1)
  :realization (:VERB "set_off"))

(define-category SET_OUT23800
  :mixins (ESCAPE-51.1-1)
  :realization (:VERB "set_out"))

(define-category BOLT23801
  :mixins (ESCAPE-51.1-1)
  :realization (:VERB "bolt"))

(define-category BOLT23802
  :mixins (ESCAPE-51.1-1)
  :realization (:VERB "bolt"))

(define-category EMERGE23000
  :mixins (ESCAPE-51.1-1)
  :realization (:VERB "emerge"))

(define-category EMIGRATE23000
  :mixins (ESCAPE-51.1-1)
  :realization (:VERB "emigrate"))

(define-category RETREAT23802
  :mixins (ESCAPE-51.1-1)
  :realization (:VERB "retreat"))

(define-category RETREAT23800
  :mixins (ESCAPE-51.1-1)
  :realization (:VERB "retreat"))

(define-category SKEDADDLE23800
  :mixins (ESCAPE-51.1-1)
  :realization (:VERB "skedaddle"))

(define-category WITHDRAW23800
  :mixins (ESCAPE-51.1-1)
  :realization (:VERB "withdraw"))

(define-category DEPART23801
  :mixins (ESCAPE-51.1-1-1)
  :realization (:VERB "depart"))

(define-category DEPART23804
  :mixins (ESCAPE-51.1-1-1)
  :realization (:VERB "depart"))

(define-category DISEMBARK23800
  :mixins (ESCAPE-51.1-1-1)
  :realization (:VERB "disembark"))

(define-category ESCAPE23800
  :mixins (ESCAPE-51.1-1-1)
  :realization (:VERB "escape"))

(define-category EXIT23800
  :mixins (ESCAPE-51.1-1-1)
  :realization (:VERB "exit"))

(define-category FLEE23800
  :mixins (ESCAPE-51.1-1-1)
  :realization (:VERB "flee"))

(define-category LEAVE23800
  :mixins (ESCAPE-51.1-1-1)
  :realization (:VERB "leave"))

(define-category LEAVE23801
  :mixins (ESCAPE-51.1-1-1)
  :realization (:VERB "leave"))

(define-category VACATE23800
  :mixins (ESCAPE-51.1-1-1)
  :realization (:VERB "vacate"))

(define-category ENTER23600
  :mixins (ESCAPE-51.1-1-2)
  :realization (:VERB "enter"))

(define-category ENTER23800
  :mixins (ESCAPE-51.1-1-2)
  :realization (:VERB "enter"))

(define-category APPROACH23800
  :mixins (ESCAPE-51.1-1-2)
  :realization (:VERB "approach"))

(define-category ASCEND23803
  :mixins (ESCAPE-51.1-1-3)
  :realization (:VERB "ascend"))

(define-category ASCEND23801
  :mixins (ESCAPE-51.1-1-3)
  :realization (:VERB "ascend"))

(define-category ASCEND23804
  :mixins (ESCAPE-51.1-1-3)
  :realization (:VERB "ascend"))

(define-category ASCEND23802
  :mixins (ESCAPE-51.1-1-3)
  :realization (:VERB "ascend"))

(define-category CLIMB23800
  :mixins (ESCAPE-51.1-1-3)
  :realization (:VERB "climb"))

(define-category CROSS23800
  :mixins (ESCAPE-51.1-1-3)
  :realization (:VERB "cross"))

(define-category DESCEND23800
  :mixins (ESCAPE-51.1-1-3)
  :realization (:VERB "descend"))

(define-category PASS23500
  :mixins (ESCAPE-51.1-1-3)
  :realization (:VERB "pass"))

(define-category PASS23801
  :mixins (ESCAPE-51.1-1-3)
  :realization (:VERB "pass"))

(define-category PASS23805
  :mixins (ESCAPE-51.1-1-3)
  :realization (:VERB "pass"))

(define-category CONSTITUTE23600
  :mixins (ESTABLISH-55.5)
  :realization (:VERB "constitute"))

(define-category CONSTITUTIONALIZE24000
  :mixins (ESTABLISH-55.5)
  :realization (:VERB "constitutionalize"))

(define-category INNOVATE23600
  :mixins (ESTABLISH-55.5)
  :realization (:VERB "innovate"))

(define-category MACHINATE23600
  :mixins (ESTABLISH-55.5)
  :realization (:VERB "machinate"))

(define-category STAGE23601
  :mixins (ESTABLISH-55.5)
  :realization (:VERB "stage"))

(define-category INITIATE23601
  :mixins (ESTABLISH-55.5-1)
  :realization (:VERB "initiate"))

(define-category INITIATE23000
  :mixins (ESTABLISH-55.5-1)
  :realization (:VERB "initiate"))

(define-category ESTABLISH23600
  :mixins (ESTABLISH-55.5-1)
  :realization (:VERB "establish"))

(define-category ESTABLISH24100
  :mixins (ESTABLISH-55.5-1)
  :realization (:VERB "establish"))

(define-category FOUND23600
  :mixins (ESTABLISH-55.5-1)
  :realization (:VERB "found"))

(define-category FOUND24100
  :mixins (ESTABLISH-55.5-1)
  :realization (:VERB "found"))

(define-category PLANT23600
  :mixins (ESTABLISH-55.5-1)
  :realization (:VERB "plant"))

(define-category INSTIGATE23201
  :mixins (ESTABLISH-55.5-1)
  :realization (:VERB "instigate"))

(define-category INSTITUTE23600
  :mixins (ESTABLISH-55.5-1)
  :realization (:VERB "institute"))

(define-category ORGANIZE23600
  :mixins (ESTABLISH-55.5-1)
  :realization (:VERB "organize"))

(define-category ORIGINATE23600
  :mixins (ESTABLISH-55.5-1)
  :realization (:VERB "originate"))

(define-category PREPARE23600
  :mixins (ESTABLISH-55.5-1)
  :realization (:VERB "prepare"))

(define-category PREMISE23201
  :mixins (ESTABLISH-55.5-1)
  :realization (:VERB "premise"))

(define-category PREMISE23200
  :mixins (ESTABLISH-55.5-1)
  :realization (:VERB "premise"))

(define-category DEVISE23601
  :mixins (ESTABLISH-55.5-1)
  :realization (:VERB "devise"))

(define-category MOUNT23601
  :mixins (ESTABLISH-55.5-1)
  :realization (:VERB "mount"))

(define-category MOUNT23600
  :mixins (ESTABLISH-55.5-1)
  :realization (:VERB "mount"))

(define-category ARRANGE23603
  :mixins (ESTABLISH-55.5-1)
  :realization (:VERB "arrange"))

(define-category STRIKE_UP23600
  :mixins (ESTABLISH-55.5-1)
  :realization (:VERB "strike_up"))

(define-category LAUNCH24101
  :mixins (ESTABLISH-55.5-1)
  :realization (:VERB "launch"))

(define-category OPEN24101
  :mixins (ESTABLISH-55.5-1)
  :realization (:VERB "open"))

(define-category OPEN24100
  :mixins (ESTABLISH-55.5-1)
  :realization (:VERB "open"))

(define-category OPEN_UP24100
  :mixins (ESTABLISH-55.5-1)
  :realization (:VERB "open_up"))

(define-category PUT23113
  :mixins (ESTIMATE-34.2)
  :realization (:VERB "put"))

(define-category ESTIMATE23100
  :mixins (ESTIMATE-34.2-1)
  :realization (:VERB "estimate"))

(define-category GAUGE23100
  :mixins (ESTIMATE-34.2-1)
  :realization (:VERB "gauge"))

(define-category APPROXIMATE23100
  :mixins (ESTIMATE-34.2-1)
  :realization (:VERB "approximate"))

(define-category GUESS23101
  :mixins (ESTIMATE-34.2-1)
  :realization (:VERB "guess"))

(define-category JUDGE23101
  :mixins (ESTIMATE-34.2-1)
  :realization (:VERB "judge"))

(define-category ASSESS23100
  :mixins (ESTIMATE-34.2-1)
  :realization (:VERB "assess"))

(define-category GUESSTIMATE23200
  :mixins (ESTIMATE-34.2-1)
  :realization (:VERB "guesstimate"))

(define-category OVERCOME23301
  :mixins (EXCEED-90)
  :realization (:VERB "overcome"))

(define-category OVERLEAP23800
  :mixins (EXCEED-90)
  :realization (:VERB "overleap"))

(define-category TRANSCEND24201
  :mixins (EXCEED-90)
  :realization (:VERB "transcend"))

(define-category TRANSCEND24200
  :mixins (EXCEED-90)
  :realization (:VERB "transcend"))

(define-category BETTER23300
  :mixins (EXCEED-90)
  :realization (:VERB "better"))

(define-category EXCEED23300
  :mixins (EXCEED-90)
  :realization (:VERB "exceed"))

(define-category EXCEED24200
  :mixins (EXCEED-90)
  :realization (:VERB "exceed"))

(define-category EXCEED24201
  :mixins (EXCEED-90)
  :realization (:VERB "exceed"))

(define-category OUTBID24000
  :mixins (EXCEED-90)
  :realization (:VERB "outbid"))

(define-category OUTBID24001
  :mixins (EXCEED-90)
  :realization (:VERB "outbid"))

(define-category OUTDO23300
  :mixins (EXCEED-90)
  :realization (:VERB "outdo"))

(define-category OUTMATCH23300
  :mixins (EXCEED-90)
  :realization (:VERB "outmatch"))

(define-category OUTNUMBER24200
  :mixins (EXCEED-90)
  :realization (:VERB "outnumber"))

(define-category OUTSHINE23300
  :mixins (EXCEED-90)
  :realization (:VERB "outshine"))

(define-category OUTSMART23301
  :mixins (EXCEED-90)
  :realization (:VERB "outsmart"))

(define-category OUTSMART23300
  :mixins (EXCEED-90)
  :realization (:VERB "outsmart"))

(define-category OUTSTRIP23800
  :mixins (EXCEED-90)
  :realization (:VERB "outstrip"))

(define-category OUTSTRIP23300
  :mixins (EXCEED-90)
  :realization (:VERB "outstrip"))

(define-category OUTWEIGH24200
  :mixins (EXCEED-90)
  :realization (:VERB "outweigh"))

(define-category OUTWEIGH23300
  :mixins (EXCEED-90)
  :realization (:VERB "outweigh"))

(define-category OUTWIT23300
  :mixins (EXCEED-90)
  :realization (:VERB "outwit"))

(define-category OVERREACH23300
  :mixins (EXCEED-90)
  :realization (:VERB "overreach"))

(define-category OVERSTEP24200
  :mixins (EXCEED-90)
  :realization (:VERB "overstep"))

(define-category SURPASS24201
  :mixins (EXCEED-90)
  :realization (:VERB "surpass"))

(define-category SURPASS23300
  :mixins (EXCEED-90)
  :realization (:VERB "surpass"))

(define-category TOP24211
  :mixins (EXCEED-90)
  :realization (:VERB "top"))

(define-category TOP24200
  :mixins (EXCEED-90)
  :realization (:VERB "top"))

(define-category BARTER24000
  :mixins (EXCHANGE-13.6.1)
  :realization (:VERB "barter"))

(define-category CHANGE23004
  :mixins (EXCHANGE-13.6.1)
  :realization (:VERB "change"))

(define-category CHANGE23005
  :mixins (EXCHANGE-13.6.1)
  :realization (:VERB "change"))

(define-category EXCHANGE24100
  :mixins (EXCHANGE-13.6.1)
  :realization (:VERB "exchange"))

(define-category EXCHANGE23000
  :mixins (EXCHANGE-13.6.1)
  :realization (:VERB "exchange"))

(define-category TRADE24002
  :mixins (EXCHANGE-13.6.1)
  :realization (:VERB "trade"))

(define-category TRADE24000
  :mixins (EXCHANGE-13.6.1)
  :realization (:VERB "trade"))

(define-category OMIT23101
  :mixins (EXCLUDE-107.3)
  :realization (:VERB "omit"))

(define-category EXCLUDE23101
  :mixins (EXCLUDE-107.3-1)
  :realization (:VERB "exclude"))

(define-category PRECLUDE24200
  :mixins (EXCLUDE-107.3-1)
  :realization (:VERB "preclude"))

(define-category PRECLUDE24100
  :mixins (EXCLUDE-107.3-1)
  :realization (:VERB "preclude"))

(define-category EXHALE22900
  :mixins (EXHALE-40.1.3-1)
  :realization (:VERB "exhale"))

(define-category PERSPIRE22900
  :mixins (EXHALE-40.1.3-1)
  :realization (:VERB "perspire"))

(define-category EXPECTORATE22900
  :mixins (EXHALE-40.1.3-1)
  :realization (:VERB "expectorate"))

(define-category URINATE22901
  :mixins (EXHALE-40.1.3-1)
  :realization (:VERB "urinate"))

(define-category WHIFF23402
  :mixins (EXHALE-40.1.3-1)
  :realization (:VERB "whiff"))

(define-category INHALE22900
  :mixins (EXHALE-40.1.3-2)
  :realization (:VERB "inhale"))

(define-category COEXIST24200
  :mixins (EXIST-47.1)
  :realization (:VERB "coexist"))

(define-category COEXIST24201
  :mixins (EXIST-47.1)
  :realization (:VERB "coexist"))

(define-category DWELL24200
  :mixins (EXIST-47.1)
  :realization (:VERB "dwell"))

(define-category DWELL24201
  :mixins (EXIST-47.1)
  :realization (:VERB "dwell"))

(define-category EXIST24201
  :mixins (EXIST-47.1)
  :realization (:VERB "exist"))

(define-category EXIST24200
  :mixins (EXIST-47.1)
  :realization (:VERB "exist"))

(define-category EXTEND23006
  :mixins (EXIST-47.1)
  :realization (:VERB "extend"))

(define-category EXTEND24201
  :mixins (EXIST-47.1)
  :realization (:VERB "extend"))

(define-category EXTEND24203
  :mixins (EXIST-47.1)
  :realization (:VERB "extend"))

(define-category FLOURISH23001
  :mixins (EXIST-47.1)
  :realization (:VERB "flourish"))

(define-category LANGUISH22900
  :mixins (EXIST-47.1)
  :realization (:VERB "languish"))

(define-category LANGUISH23000
  :mixins (EXIST-47.1)
  :realization (:VERB "languish"))

(define-category LINGER24200
  :mixins (EXIST-47.1)
  :realization (:VERB "linger"))

(define-category LINGER24202
  :mixins (EXIST-47.1)
  :realization (:VERB "linger"))

(define-category LIVE24201
  :mixins (EXIST-47.1)
  :realization (:VERB "live"))

(define-category LIVE24204
  :mixins (EXIST-47.1)
  :realization (:VERB "live"))

(define-category LIVE24208
  :mixins (EXIST-47.1)
  :realization (:VERB "live"))

(define-category LOOM24206
  :mixins (EXIST-47.1)
  :realization (:VERB "loom"))

(define-category LOOM24202
  :mixins (EXIST-47.1)
  :realization (:VERB "loom"))

(define-category LURK23300
  :mixins (EXIST-47.1)
  :realization (:VERB "lurk"))

(define-category LURK24200
  :mixins (EXIST-47.1)
  :realization (:VERB "lurk"))

(define-category LURK24201
  :mixins (EXIST-47.1)
  :realization (:VERB "lurk"))

(define-category PERSIST24200
  :mixins (EXIST-47.1)
  :realization (:VERB "persist"))

(define-category PREDOMINATE24200
  :mixins (EXIST-47.1)
  :realization (:VERB "predominate"))

(define-category PREVAIL24200
  :mixins (EXIST-47.1)
  :realization (:VERB "prevail"))

(define-category PREVAIL24201
  :mixins (EXIST-47.1)
  :realization (:VERB "prevail"))

(define-category PREVAIL24202
  :mixins (EXIST-47.1)
  :realization (:VERB "prevail"))

(define-category PROSPER24000
  :mixins (EXIST-47.1)
  :realization (:VERB "prosper"))

(define-category REMAIN24205
  :mixins (EXIST-47.1)
  :realization (:VERB "remain"))

(define-category REMAIN24203
  :mixins (EXIST-47.1)
  :realization (:VERB "remain"))

(define-category REMAIN23000
  :mixins (EXIST-47.1)
  :realization (:VERB "remain"))

(define-category RESIDE24212
  :mixins (EXIST-47.1)
  :realization (:VERB "reside"))

(define-category RESIDE24201
  :mixins (EXIST-47.1)
  :realization (:VERB "reside"))

(define-category RESIDE24200
  :mixins (EXIST-47.1)
  :realization (:VERB "reside"))

(define-category STAND24204
  :mixins (EXIST-47.1)
  :realization (:VERB "stand"))

(define-category STAY23801
  :mixins (EXIST-47.1)
  :realization (:VERB "stay"))

(define-category STAY24202
  :mixins (EXIST-47.1)
  :realization (:VERB "stay"))

(define-category STAY23800
  :mixins (EXIST-47.1)
  :realization (:VERB "stay"))

(define-category STAY23000
  :mixins (EXIST-47.1)
  :realization (:VERB "stay"))

(define-category THRIVE24000
  :mixins (EXIST-47.1)
  :realization (:VERB "thrive"))

(define-category THRIVE23000
  :mixins (EXIST-47.1)
  :realization (:VERB "thrive"))

(define-category TOWER24200
  :mixins (EXIST-47.1)
  :realization (:VERB "tower"))

(define-category VEGETATE24200
  :mixins (EXIST-47.1)
  :realization (:VERB "vegetate"))

(define-category WAIT24200
  :mixins (EXIST-47.1)
  :realization (:VERB "wait"))

(define-category ENDURE24208
  :mixins (EXIST-47.1-1)
  :realization (:VERB "endure"))

(define-category ENDURE24200
  :mixins (EXIST-47.1-1)
  :realization (:VERB "endure"))

(define-category LIVE24204
  :mixins (EXIST-47.1-1)
  :realization (:VERB "live"))

(define-category SURVIVE24200
  :mixins (EXIST-47.1-1)
  :realization (:VERB "survive"))

(define-category SURVIVE24202
  :mixins (EXIST-47.1-1)
  :realization (:VERB "survive"))

(define-category SURVIVE24201
  :mixins (EXIST-47.1-1)
  :realization (:VERB "survive"))

(define-category BOTTLEFEED23400
  :mixins (FEEDING-39.7)
  :realization (:VERB "bottlefeed"))

(define-category BREASTFEED23400
  :mixins (FEEDING-39.7)
  :realization (:VERB "breastfeed"))

(define-category FEED23401
  :mixins (FEEDING-39.7)
  :realization (:VERB "feed"))

(define-category FEED23404
  :mixins (FEEDING-39.7)
  :realization (:VERB "feed"))

(define-category FORCE-FEED23400
  :mixins (FEEDING-39.7)
  :realization (:VERB "force-feed"))

(define-category SPOONFEED23400
  :mixins (FEEDING-39.7)
  :realization (:VERB "spoonfeed"))

(define-category FERRET23100
  :mixins (FERRET-35.6)
  :realization (:VERB "ferret"))

(define-category NOSE23901
  :mixins (FERRET-35.6)
  :realization (:VERB "nose"))

(define-category ANOINT22900
  :mixins (FILL-9.8)
  :realization (:VERB "anoint"))

(define-category BANDAGE22900
  :mixins (FILL-9.8)
  :realization (:VERB "bandage"))

(define-category BANDAGE23503
  :mixins (FILL-9.8)
  :realization (:VERB "bandage"))

(define-category BESTREW23500
  :mixins (FILL-9.8)
  :realization (:VERB "bestrew"))

(define-category BLACKTOP23500
  :mixins (FILL-9.8)
  :realization (:VERB "blacktop"))

(define-category BLOCKADE23500
  :mixins (FILL-9.8)
  :realization (:VERB "blockade"))

(define-category BLOT23500
  :mixins (FILL-9.8)
  :realization (:VERB "blot"))

(define-category BOMBARD23300
  :mixins (FILL-9.8)
  :realization (:VERB "bombard"))

(define-category BOMBARD23500
  :mixins (FILL-9.8)
  :realization (:VERB "bombard"))

(define-category CHOKE23503
  :mixins (FILL-9.8)
  :realization (:VERB "choke"))

(define-category CHOKE23501
  :mixins (FILL-9.8)
  :realization (:VERB "choke"))

(define-category CHOKE22904
  :mixins (FILL-9.8)
  :realization (:VERB "choke"))

(define-category CHOKE23502
  :mixins (FILL-9.8)
  :realization (:VERB "choke"))

(define-category CHOKE23500
  :mixins (FILL-9.8)
  :realization (:VERB "choke"))

(define-category CLOG23000
  :mixins (FILL-9.8)
  :realization (:VERB "clog"))

(define-category CLOG23500
  :mixins (FILL-9.8)
  :realization (:VERB "clog"))

(define-category CLOSE23511
  :mixins (FILL-9.8)
  :realization (:VERB "close"))

(define-category CLUTTER23000
  :mixins (FILL-9.8)
  :realization (:VERB "clutter"))

(define-category CONTAMINATE23000
  :mixins (FILL-9.8)
  :realization (:VERB "contaminate"))

(define-category DAM23500
  :mixins (FILL-9.8)
  :realization (:VERB "dam"))

(define-category DELUGE23000
  :mixins (FILL-9.8)
  :realization (:VERB "deluge"))

(define-category DELUGE23500
  :mixins (FILL-9.8)
  :realization (:VERB "deluge"))

(define-category DIRTY23500
  :mixins (FILL-9.8)
  :realization (:VERB "dirty"))

(define-category DOPE23000
  :mixins (FILL-9.8)
  :realization (:VERB "dope"))

(define-category DOPE23400
  :mixins (FILL-9.8)
  :realization (:VERB "dope"))

(define-category DOT23500
  :mixins (FILL-9.8)
  :realization (:VERB "dot"))

(define-category DOT24200
  :mixins (FILL-9.8)
  :realization (:VERB "dot"))

(define-category EMBELLISH23000
  :mixins (FILL-9.8)
  :realization (:VERB "embellish"))

(define-category EMBELLISH23600
  :mixins (FILL-9.8)
  :realization (:VERB "embellish"))

(define-category EMBELLISH24200
  :mixins (FILL-9.8)
  :realization (:VERB "embellish"))

(define-category EMBELLISH23200
  :mixins (FILL-9.8)
  :realization (:VERB "embellish"))

(define-category EMBLAZON23600
  :mixins (FILL-9.8)
  :realization (:VERB "emblazon"))

(define-category EMBLAZON23601
  :mixins (FILL-9.8)
  :realization (:VERB "emblazon"))

(define-category ENCIRCLE23500
  :mixins (FILL-9.8)
  :realization (:VERB "encircle"))

(define-category ENCIRCLE23512
  :mixins (FILL-9.8)
  :realization (:VERB "encircle"))

(define-category ENDOW24100
  :mixins (FILL-9.8)
  :realization (:VERB "endow"))

(define-category ENRICH24000
  :mixins (FILL-9.8)
  :realization (:VERB "enrich"))

(define-category ENRICH23000
  :mixins (FILL-9.8)
  :realization (:VERB "enrich"))

(define-category FILL23000
  :mixins (FILL-9.8)
  :realization (:VERB "fill"))

(define-category FILL23002
  :mixins (FILL-9.8)
  :realization (:VERB "fill"))

(define-category FILL24200
  :mixins (FILL-9.8)
  :realization (:VERB "fill"))

(define-category FILL23001
  :mixins (FILL-9.8)
  :realization (:VERB "fill"))

(define-category FLECK23500
  :mixins (FILL-9.8)
  :realization (:VERB "fleck"))

(define-category FLOOD24000
  :mixins (FILL-9.8)
  :realization (:VERB "flood"))

(define-category FLOOD23000
  :mixins (FILL-9.8)
  :realization (:VERB "flood"))

(define-category FLOOD23500
  :mixins (FILL-9.8)
  :realization (:VERB "flood"))

(define-category GARLAND23600
  :mixins (FILL-9.8)
  :realization (:VERB "garland"))

(define-category GARNISH23600
  :mixins (FILL-9.8)
  :realization (:VERB "garnish"))

(define-category GUM_UP23500
  :mixins (FILL-9.8)
  :realization (:VERB "gum_up"))

(define-category HONEYCOMB23500
  :mixins (FILL-9.8)
  :realization (:VERB "honeycomb"))

(define-category IMBUE23001
  :mixins (FILL-9.8)
  :realization (:VERB "imbue"))

(define-category IMPREGNATE22900
  :mixins (FILL-9.8)
  :realization (:VERB "impregnate"))

(define-category IMPREGNATE23000
  :mixins (FILL-9.8)
  :realization (:VERB "impregnate"))

(define-category INFECT22900
  :mixins (FILL-9.8)
  :realization (:VERB "infect"))

(define-category INFEST24200
  :mixins (FILL-9.8)
  :realization (:VERB "infest"))

(define-category INFEST24202
  :mixins (FILL-9.8)
  :realization (:VERB "infest"))

(define-category INFEST23800
  :mixins (FILL-9.8)
  :realization (:VERB "infest"))

(define-category INLAY23600
  :mixins (FILL-9.8)
  :realization (:VERB "inlay"))

(define-category INTERLACE23500
  :mixins (FILL-9.8)
  :realization (:VERB "interlace"))

(define-category INTERLARD23000
  :mixins (FILL-9.8)
  :realization (:VERB "interlard"))

(define-category INTERLEAVE23000
  :mixins (FILL-9.8)
  :realization (:VERB "interleave"))

(define-category INTERSPERSE23000
  :mixins (FILL-9.8)
  :realization (:VERB "intersperse"))

(define-category INTERSPERSE23502
  :mixins (FILL-9.8)
  :realization (:VERB "intersperse"))

(define-category INTERWEAVE23500
  :mixins (FILL-9.8)
  :realization (:VERB "interweave"))

(define-category INUNDATE23000
  :mixins (FILL-9.8)
  :realization (:VERB "inundate"))

(define-category INUNDATE23500
  :mixins (FILL-9.8)
  :realization (:VERB "inundate"))

(define-category LARD23200
  :mixins (FILL-9.8)
  :realization (:VERB "lard"))

(define-category LARD23600
  :mixins (FILL-9.8)
  :realization (:VERB "lard"))

(define-category LASH23502
  :mixins (FILL-9.8)
  :realization (:VERB "lash"))

(define-category LITTER23500
  :mixins (FILL-9.8)
  :realization (:VERB "litter"))

(define-category LITTER24200
  :mixins (FILL-9.8)
  :realization (:VERB "litter"))

(define-category MASK23502
  :mixins (FILL-9.8)
  :realization (:VERB "mask"))

(define-category MASK23500
  :mixins (FILL-9.8)
  :realization (:VERB "mask"))

(define-category MOTTLE23000
  :mixins (FILL-9.8)
  :realization (:VERB "mottle"))

(define-category MOTTLE23600
  :mixins (FILL-9.8)
  :realization (:VERB "mottle"))

(define-category ORNAMENT23600
  :mixins (FILL-9.8)
  :realization (:VERB "ornament"))

(define-category PAD23000
  :mixins (FILL-9.8)
  :realization (:VERB "pad"))

(define-category PAD23500
  :mixins (FILL-9.8)
  :realization (:VERB "pad"))

(define-category PAD23200
  :mixins (FILL-9.8)
  :realization (:VERB "pad"))

(define-category PLATE23500
  :mixins (FILL-9.8)
  :realization (:VERB "plate"))

(define-category PLUG23501
  :mixins (FILL-9.8)
  :realization (:VERB "plug"))

(define-category REPLENISH23000
  :mixins (FILL-9.8)
  :realization (:VERB "replenish"))

(define-category RIDDLE23500
  :mixins (FILL-9.8)
  :realization (:VERB "riddle"))

(define-category RING23503
  :mixins (FILL-9.8)
  :realization (:VERB "ring"))

(define-category RIPPLE23800
  :mixins (FILL-9.8)
  :realization (:VERB "ripple"))

(define-category SAUCE23000
  :mixins (FILL-9.8)
  :realization (:VERB "sauce"))

(define-category SAUCE23500
  :mixins (FILL-9.8)
  :realization (:VERB "sauce"))

(define-category SEASON23900
  :mixins (FILL-9.8)
  :realization (:VERB "season"))

(define-category SMUT23000
  :mixins (FILL-9.8)
  :realization (:VERB "smut"))

(define-category SOIL23500
  :mixins (FILL-9.8)
  :realization (:VERB "soil"))

(define-category SPLOTCH23500
  :mixins (FILL-9.8)
  :realization (:VERB "splotch"))

(define-category STAFF23300
  :mixins (FILL-9.8)
  :realization (:VERB "staff"))

(define-category STIPPLE23500
  :mixins (FILL-9.8)
  :realization (:VERB "stipple"))

(define-category STIPPLE23602
  :mixins (FILL-9.8)
  :realization (:VERB "stipple"))

(define-category STIPPLE23601
  :mixins (FILL-9.8)
  :realization (:VERB "stipple"))

(define-category STIPPLE23600
  :mixins (FILL-9.8)
  :realization (:VERB "stipple"))

(define-category STOP_UP23500
  :mixins (FILL-9.8)
  :realization (:VERB "stop_up"))

(define-category STUD23500
  :mixins (FILL-9.8)
  :realization (:VERB "stud"))

(define-category SUFFUSE23001
  :mixins (FILL-9.8)
  :realization (:VERB "suffuse"))

(define-category TAINT22900
  :mixins (FILL-9.8)
  :realization (:VERB "taint"))

(define-category TINGE23213
  :mixins (FILL-9.8)
  :realization (:VERB "tinge"))

(define-category TINGE23000
  :mixins (FILL-9.8)
  :realization (:VERB "tinge"))

(define-category INJECT23400
  :mixins (FILL-9.8)
  :realization (:VERB "inject"))

(define-category INJECT23401
  :mixins (FILL-9.8)
  :realization (:VERB "inject"))

(define-category INJECT23500
  :mixins (FILL-9.8)
  :realization (:VERB "inject"))

(define-category INJECT22900
  :mixins (FILL-9.8)
  :realization (:VERB "inject"))

(define-category ADORN24200
  :mixins (FILL-9.8-1)
  :realization (:VERB "adorn"))

(define-category ADORN23600
  :mixins (FILL-9.8-1)
  :realization (:VERB "adorn"))

(define-category BATHE23500
  :mixins (FILL-9.8-1)
  :realization (:VERB "bathe"))

(define-category BIND23501
  :mixins (FILL-9.8-1)
  :realization (:VERB "bind"))

(define-category BIND23507
  :mixins (FILL-9.8-1)
  :realization (:VERB "bind"))

(define-category BIND23508
  :mixins (FILL-9.8-1)
  :realization (:VERB "bind"))

(define-category BIND23500
  :mixins (FILL-9.8-1)
  :realization (:VERB "bind"))

(define-category BLANKET24200
  :mixins (FILL-9.8-1)
  :realization (:VERB "blanket"))

(define-category BLANKET23500
  :mixins (FILL-9.8-1)
  :realization (:VERB "blanket"))

(define-category BLOCK23300
  :mixins (FILL-9.8-1)
  :realization (:VERB "block"))

(define-category BLOCK23900
  :mixins (FILL-9.8-1)
  :realization (:VERB "block"))

(define-category BLOCK23500
  :mixins (FILL-9.8-1)
  :realization (:VERB "block"))

(define-category CARPET23500
  :mixins (FILL-9.8-1)
  :realization (:VERB "carpet"))

(define-category CARPET23501
  :mixins (FILL-9.8-1)
  :realization (:VERB "carpet"))

(define-category CARPET24200
  :mixins (FILL-9.8-1)
  :realization (:VERB "carpet"))

(define-category COAT23501
  :mixins (FILL-9.8-1)
  :realization (:VERB "coat"))

(define-category COAT22900
  :mixins (FILL-9.8-1)
  :realization (:VERB "coat"))

(define-category COAT23500
  :mixins (FILL-9.8-1)
  :realization (:VERB "coat"))

(define-category COVER22915
  :mixins (FILL-9.8-1)
  :realization (:VERB "cover"))

(define-category COVER23514
  :mixins (FILL-9.8-1)
  :realization (:VERB "cover"))

(define-category COVER23501
  :mixins (FILL-9.8-1)
  :realization (:VERB "cover"))

(define-category COVER23500
  :mixins (FILL-9.8-1)
  :realization (:VERB "cover"))

(define-category DAPPLE23000
  :mixins (FILL-9.8-1)
  :realization (:VERB "dapple"))

(define-category DECK23600
  :mixins (FILL-9.8-1)
  :realization (:VERB "deck"))

(define-category DECK24200
  :mixins (FILL-9.8-1)
  :realization (:VERB "deck"))

(define-category DECORATE23500
  :mixins (FILL-9.8-1)
  :realization (:VERB "decorate"))

(define-category DECORATE24200
  :mixins (FILL-9.8-1)
  :realization (:VERB "decorate"))

(define-category DECORATE23600
  :mixins (FILL-9.8-1)
  :realization (:VERB "decorate"))

(define-category DOUSE23000
  :mixins (FILL-9.8-1)
  :realization (:VERB "douse"))

(define-category DOUSE23500
  :mixins (FILL-9.8-1)
  :realization (:VERB "douse"))

(define-category DOUSE23800
  :mixins (FILL-9.8-1)
  :realization (:VERB "douse"))

(define-category DOUSE24209
  :mixins (FILL-9.8-1)
  :realization (:VERB "douse"))

(define-category DOUSE24300
  :mixins (FILL-9.8-1)
  :realization (:VERB "douse"))

(define-category DRENCH23000
  :mixins (FILL-9.8-1)
  :realization (:VERB "drench"))

(define-category EDGE24000
  :mixins (FILL-9.8-1)
  :realization (:VERB "edge"))

(define-category ENCRUST23000
  :mixins (FILL-9.8-1)
  :realization (:VERB "encrust"))

(define-category ENCRUST23501
  :mixins (FILL-9.8-1)
  :realization (:VERB "encrust"))

(define-category ENCRUST23500
  :mixins (FILL-9.8-1)
  :realization (:VERB "encrust"))

(define-category ENTANGLE23500
  :mixins (FILL-9.8-1)
  :realization (:VERB "entangle"))

(define-category ENTANGLE24200
  :mixins (FILL-9.8-1)
  :realization (:VERB "entangle"))

(define-category FACE23501
  :mixins (FILL-9.8-1)
  :realization (:VERB "face"))

(define-category FACE23500
  :mixins (FILL-9.8-1)
  :realization (:VERB "face"))

(define-category FESTOON23600
  :mixins (FILL-9.8-1)
  :realization (:VERB "festoon"))

(define-category FRAME24200
  :mixins (FILL-9.8-1)
  :realization (:VERB "frame"))

(define-category FRAME23500
  :mixins (FILL-9.8-1)
  :realization (:VERB "frame"))

(define-category LINE23001
  :mixins (FILL-9.8-1)
  :realization (:VERB "line"))

(define-category LINE23000
  :mixins (FILL-9.8-1)
  :realization (:VERB "line"))

(define-category LINE23500
  :mixins (FILL-9.8-1)
  :realization (:VERB "line"))

(define-category MARINATE23000
  :mixins (FILL-9.8-1)
  :realization (:VERB "marinate"))

(define-category PANEL23600
  :mixins (FILL-9.8-1)
  :realization (:VERB "panel"))

(define-category PAVE23500
  :mixins (FILL-9.8-1)
  :realization (:VERB "pave"))

(define-category REDECORATE23600
  :mixins (FILL-9.8-1)
  :realization (:VERB "redecorate"))

(define-category ROBE22900
  :mixins (FILL-9.8-1)
  :realization (:VERB "robe"))

(define-category SATURATE23004
  :mixins (FILL-9.8-1)
  :realization (:VERB "saturate"))

(define-category SHROUD23500
  :mixins (FILL-9.8-1)
  :realization (:VERB "shroud"))

(define-category SHROUD24202
  :mixins (FILL-9.8-1)
  :realization (:VERB "shroud"))

(define-category SMOTHER24200
  :mixins (FILL-9.8-1)
  :realization (:VERB "smother"))

(define-category SMOTHER23502
  :mixins (FILL-9.8-1)
  :realization (:VERB "smother"))

(define-category SOAK23000
  :mixins (FILL-9.8-1)
  :realization (:VERB "soak"))

(define-category SOAK23001
  :mixins (FILL-9.8-1)
  :realization (:VERB "soak"))

(define-category SPECKLE23500
  :mixins (FILL-9.8-1)
  :realization (:VERB "speckle"))

(define-category SPOT23500
  :mixins (FILL-9.8-1)
  :realization (:VERB "spot"))

(define-category SPOT23501
  :mixins (FILL-9.8-1)
  :realization (:VERB "spot"))

(define-category SURROUND23301
  :mixins (FILL-9.8-1)
  :realization (:VERB "surround"))

(define-category SURROUND23300
  :mixins (FILL-9.8-1)
  :realization (:VERB "surround"))

(define-category SURROUND23501
  :mixins (FILL-9.8-1)
  :realization (:VERB "surround"))

(define-category SURROUND23500
  :mixins (FILL-9.8-1)
  :realization (:VERB "surround"))

(define-category SWADDLE23500
  :mixins (FILL-9.8-1)
  :realization (:VERB "swaddle"))

(define-category SWATHE23500
  :mixins (FILL-9.8-1)
  :realization (:VERB "swathe"))

(define-category TILE23500
  :mixins (FILL-9.8-1)
  :realization (:VERB "tile"))

(define-category TOOL24000
  :mixins (FILL-9.8-1)
  :realization (:VERB "tool"))

(define-category TRIM23600
  :mixins (FILL-9.8-1)
  :realization (:VERB "trim"))

(define-category TRIM23601
  :mixins (FILL-9.8-1)
  :realization (:VERB "trim"))

(define-category VEIL23500
  :mixins (FILL-9.8-1)
  :realization (:VERB "veil"))

(define-category VEIN23600
  :mixins (FILL-9.8-1)
  :realization (:VERB "vein"))

(define-category STAIN23004
  :mixins (FILL-9.8-1)
  :realization (:VERB "stain"))

(define-category STAIN23000
  :mixins (FILL-9.8-1)
  :realization (:VERB "stain"))

(define-category STAIN23001
  :mixins (FILL-9.8-1)
  :realization (:VERB "stain"))

(define-category FIRE24100
  :mixins (FIRE-10.10)
  :realization (:VERB "fire"))

(define-category DISMISS24100
  :mixins (FIRE-10.10)
  :realization (:VERB "dismiss"))

(define-category SACK24100
  :mixins (FIRE-10.10)
  :realization (:VERB "sack"))

(define-category DROP24101
  :mixins (FIRE-10.10)
  :realization (:VERB "drop"))

(define-category DROP24100
  :mixins (FIRE-10.10)
  :realization (:VERB "drop"))

(define-category UNSEAT24100
  :mixins (FIRE-10.10)
  :realization (:VERB "unseat"))

(define-category OUST24100
  :mixins (FIRE-10.10)
  :realization (:VERB "oust"))

(define-category EXPEL24101
  :mixins (FIRE-10.10)
  :realization (:VERB "expel"))

(define-category REMOVE24100
  :mixins (FIRE-10.10)
  :realization (:VERB "remove"))

(define-category CAN24100
  :mixins (FIRE-10.10)
  :realization (:VERB "can"))

(define-category SEND_AWAY24100
  :mixins (FIRE-10.10)
  :realization (:VERB "send_away"))

(define-category SUSPEND24100
  :mixins (FIRE-10.10)
  :realization (:VERB "suspend"))

(define-category FORCE_OUT24100
  :mixins (FIRE-10.10)
  :realization (:VERB "force_out"))

(define-category TERMINATE24101
  :mixins (FIRE-10.10)
  :realization (:VERB "terminate"))

(define-category LAY_OFF24100
  :mixins (FIRE-10.10)
  :realization (:VERB "lay_off"))

(define-category CARRY23401
  :mixins (FIT-54.3)
  :realization (:VERB "carry"))

(define-category CARRY23608
  :mixins (FIT-54.3)
  :realization (:VERB "carry"))

(define-category CARRY23112
  :mixins (FIT-54.3)
  :realization (:VERB "carry"))

(define-category CARRY24203
  :mixins (FIT-54.3)
  :realization (:VERB "carry"))

(define-category CONTAIN24214
  :mixins (FIT-54.3)
  :realization (:VERB "contain"))

(define-category FIT24203
  :mixins (FIT-54.3)
  :realization (:VERB "fit"))

(define-category FIT24202
  :mixins (FIT-54.3)
  :realization (:VERB "fit"))

(define-category FEED23402
  :mixins (FIT-54.3)
  :realization (:VERB "feed"))

(define-category HOLD24214
  :mixins (FIT-54.3)
  :realization (:VERB "hold"))

(define-category HOLD24205
  :mixins (FIT-54.3)
  :realization (:VERB "hold"))

(define-category HOUSE24100
  :mixins (FIT-54.3)
  :realization (:VERB "house"))

(define-category RESEAT23500
  :mixins (FIT-54.3)
  :realization (:VERB "reseat"))

(define-category RESEAT24000
  :mixins (FIT-54.3)
  :realization (:VERB "reseat"))

(define-category RESEAT24001
  :mixins (FIT-54.3)
  :realization (:VERB "reseat"))

(define-category SEAT24200
  :mixins (FIT-54.3)
  :realization (:VERB "seat"))

(define-category SERVE24100
  :mixins (FIT-54.3)
  :realization (:VERB "serve"))

(define-category SLEEP24200
  :mixins (FIT-54.3)
  :realization (:VERB "sleep"))

(define-category STORE24002
  :mixins (FIT-54.3)
  :realization (:VERB "store"))

(define-category TAKE24215
  :mixins (FIT-54.3)
  :realization (:VERB "take"))

(define-category BALK24100
  :mixins (FLINCH-40.5)
  :realization (:VERB "balk"))

(define-category COWER23801
  :mixins (FLINCH-40.5)
  :realization (:VERB "cower"))

(define-category CRINGE23801
  :mixins (FLINCH-40.5)
  :realization (:VERB "cringe"))

(define-category FLINCH23800
  :mixins (FLINCH-40.5)
  :realization (:VERB "flinch"))

(define-category RECOIL23800
  :mixins (FLINCH-40.5)
  :realization (:VERB "recoil"))

(define-category SHRINK23800
  :mixins (FLINCH-40.5)
  :realization (:VERB "shrink"))

(define-category WINCE22900
  :mixins (FLINCH-40.5)
  :realization (:VERB "wince"))

(define-category WINCE23800
  :mixins (FLINCH-40.5)
  :realization (:VERB "wince"))

(define-category BRUSH23502
  :mixins (FLOSS-41.2.1)
  :realization (:VERB "brush"))

(define-category FLOSS22900
  :mixins (FLOSS-41.2.1)
  :realization (:VERB "floss"))

(define-category SHAVE23501
  :mixins (FLOSS-41.2.1)
  :realization (:VERB "shave"))

(define-category WASH23500
  :mixins (FLOSS-41.2.1)
  :realization (:VERB "wash"))

(define-category WASH22900
  :mixins (FLOSS-41.2.1)
  :realization (:VERB "wash"))

(define-category FOCUS23100
  :mixins (FOCUS-87.1)
  :realization (:VERB "focus"))

(define-category FOCALIZE23000
  :mixins (FOCUS-87.1)
  :realization (:VERB "focalize"))

(define-category FOCALIZE23100
  :mixins (FOCUS-87.1)
  :realization (:VERB "focalize"))

(define-category FOCALIZE24200
  :mixins (FOCUS-87.1)
  :realization (:VERB "focalize"))

(define-category CENTER23100
  :mixins (FOCUS-87.1)
  :realization (:VERB "center"))

(define-category CENTER24200
  :mixins (FOCUS-87.1)
  :realization (:VERB "center"))

(define-category CONTEMPLATE23101
  :mixins (FOCUS-87.1)
  :realization (:VERB "contemplate"))

(define-category CONTEMPLATE23100
  :mixins (FOCUS-87.1)
  :realization (:VERB "contemplate"))

(define-category CONTEMPLATE23102
  :mixins (FOCUS-87.1)
  :realization (:VERB "contemplate"))

(define-category DWELL23100
  :mixins (FOCUS-87.1)
  :realization (:VERB "dwell"))

(define-category FIXATE23900
  :mixins (FOCUS-87.1)
  :realization (:VERB "fixate"))

(define-category FIXATE24100
  :mixins (FOCUS-87.1)
  :realization (:VERB "fixate"))

(define-category BROOD23100
  :mixins (FOCUS-87.1-1)
  :realization (:VERB "brood"))

(define-category DELIBERATE23201
  :mixins (FOCUS-87.1-1)
  :realization (:VERB "deliberate"))

(define-category MEDITATE23100
  :mixins (FOCUS-87.1-1)
  :realization (:VERB "meditate"))

(define-category MUSE23100
  :mixins (FOCUS-87.1-1)
  :realization (:VERB "muse"))

(define-category PONDER23100
  :mixins (FOCUS-87.1-1)
  :realization (:VERB "ponder"))

(define-category REFLECT23100
  :mixins (FOCUS-87.1-1)
  :realization (:VERB "reflect"))

(define-category RUMINATE23100
  :mixins (FOCUS-87.1-1)
  :realization (:VERB "ruminate"))

(define-category THINK23113
  :mixins (FOCUS-87.1-1)
  :realization (:VERB "think"))

(define-category DISSUADE23200
  :mixins (FORBID-64.4)
  :realization (:VERB "dissuade"))

(define-category KEEP24100
  :mixins (FORBID-64.4)
  :realization (:VERB "keep"))

(define-category BAN23200
  :mixins (FORBID-64.4-1)
  :realization (:VERB "ban"))

(define-category BAR23200
  :mixins (FORBID-64.4-1)
  :realization (:VERB "bar"))

(define-category BLOCK24101
  :mixins (FORBID-64.4-1)
  :realization (:VERB "block"))

(define-category BLOCK24100
  :mixins (FORBID-64.4-1)
  :realization (:VERB "block"))

(define-category DETER23200
  :mixins (FORBID-64.4-1)
  :realization (:VERB "deter"))

(define-category DETER23201
  :mixins (FORBID-64.4-1)
  :realization (:VERB "deter"))

(define-category DISCOURAGE23201
  :mixins (FORBID-64.4-1)
  :realization (:VERB "discourage"))

(define-category EXCLUDE24100
  :mixins (FORBID-64.4-1)
  :realization (:VERB "exclude"))

(define-category EXCLUDE23101
  :mixins (FORBID-64.4-1)
  :realization (:VERB "exclude"))

(define-category FORBID24103
  :mixins (FORBID-64.4-1)
  :realization (:VERB "forbid"))

(define-category FORBID23200
  :mixins (FORBID-64.4-1)
  :realization (:VERB "forbid"))

(define-category HAMPER23000
  :mixins (FORBID-64.4-1)
  :realization (:VERB "hamper"))

(define-category HINDER24100
  :mixins (FORBID-64.4-1)
  :realization (:VERB "hinder"))

(define-category HINDER24101
  :mixins (FORBID-64.4-1)
  :realization (:VERB "hinder"))

(define-category IMPEDE24100
  :mixins (FORBID-64.4-1)
  :realization (:VERB "impede"))

(define-category INHIBIT23000
  :mixins (FORBID-64.4-1)
  :realization (:VERB "inhibit"))

(define-category OBSTRUCT24100
  :mixins (FORBID-64.4-1)
  :realization (:VERB "obstruct"))

(define-category PRECLUDE24100
  :mixins (FORBID-64.4-1)
  :realization (:VERB "preclude"))

(define-category PREVENT24100
  :mixins (FORBID-64.4-1)
  :realization (:VERB "prevent"))

(define-category PREVENT24101
  :mixins (FORBID-64.4-1)
  :realization (:VERB "prevent"))

(define-category PROHIBIT23200
  :mixins (FORBID-64.4-1)
  :realization (:VERB "prohibit"))

(define-category RESTRAIN23700
  :mixins (FORBID-64.4-1)
  :realization (:VERB "restrain"))

(define-category STOP24100
  :mixins (FORBID-64.4-1)
  :realization (:VERB "stop"))

(define-category LIBERATE24101
  :mixins (FREE-10.6.3)
  :realization (:VERB "liberate"))

(define-category DISCHARGE23200
  :mixins (FREE-10.6.3)
  :realization (:VERB "discharge"))

(define-category DISCHARGE24101
  :mixins (FREE-10.6.3)
  :realization (:VERB "discharge"))

(define-category EXONERATE23200
  :mixins (FREE-10.6.3)
  :realization (:VERB "exonerate"))

(define-category UNBURDEN23500
  :mixins (FREE-10.6.3)
  :realization (:VERB "unburden"))

(define-category UNBURDEN24000
  :mixins (FREE-10.6.3)
  :realization (:VERB "unburden"))

(define-category CLEANSE23005
  :mixins (FREE-10.6.3)
  :realization (:VERB "cleanse"))

(define-category DISENCUMBER23500
  :mixins (FREE-10.6.3)
  :realization (:VERB "disencumber"))

(define-category WEAN23700
  :mixins (FREE-10.6.3)
  :realization (:VERB "wean"))

(define-category EASE23700
  :mixins (FREE-10.6.3)
  :realization (:VERB "ease"))

(define-category EASE23000
  :mixins (FREE-10.6.3)
  :realization (:VERB "ease"))

(define-category BREAK24204
  :mixins (FREE-10.6.3)
  :realization (:VERB "break"))

(define-category ABSOLVE23200
  :mixins (FREE-10.6.3-1)
  :realization (:VERB "absolve"))

(define-category ACQUIT23200
  :mixins (FREE-10.6.3-1)
  :realization (:VERB "acquit"))

(define-category CLEAR23200
  :mixins (FREE-10.6.3-1)
  :realization (:VERB "clear"))

(define-category FREE23200
  :mixins (FREE-10.6.3-1)
  :realization (:VERB "free"))

(define-category FREE24102
  :mixins (FREE-10.6.3-1)
  :realization (:VERB "free"))

(define-category FREE24107
  :mixins (FREE-10.6.3-1)
  :realization (:VERB "free"))

(define-category EMANCIPATE24100
  :mixins (FREE-10.6.3-1)
  :realization (:VERB "emancipate"))

(define-category CURE22900
  :mixins (FREE-10.6.3-1-1)
  :realization (:VERB "cure"))

(define-category RELIEVE23005
  :mixins (FREE-10.6.3-1-1)
  :realization (:VERB "relieve"))

(define-category RELIEVE23201
  :mixins (FREE-10.6.3-1-1)
  :realization (:VERB "relieve"))

(define-category RELIEVE24001
  :mixins (FREE-10.6.3-1-1)
  :realization (:VERB "relieve"))

(define-category RELIEVE24102
  :mixins (FREE-10.6.3-1-1)
  :realization (:VERB "relieve"))

(define-category RELIEVE24101
  :mixins (FREE-10.6.3-1-1)
  :realization (:VERB "relieve"))

(define-category PURGE23000
  :mixins (FREE-10.6.3-1-1)
  :realization (:VERB "purge"))

(define-category PURIFY23001
  :mixins (FREE-10.6.3-1-1)
  :realization (:VERB "purify"))

(define-category PURIFY23000
  :mixins (FREE-10.6.3-1-1)
  :realization (:VERB "purify"))

(define-category LIBERATE24101
  :mixins (FREE-80)
  :realization (:VERB "liberate"))

(define-category DISCHARGE23200
  :mixins (FREE-80)
  :realization (:VERB "discharge"))

(define-category DISCHARGE24101
  :mixins (FREE-80)
  :realization (:VERB "discharge"))

(define-category EXONERATE23200
  :mixins (FREE-80)
  :realization (:VERB "exonerate"))

(define-category UNBURDEN23500
  :mixins (FREE-80)
  :realization (:VERB "unburden"))

(define-category UNBURDEN24000
  :mixins (FREE-80)
  :realization (:VERB "unburden"))

(define-category CLEANSE23005
  :mixins (FREE-80)
  :realization (:VERB "cleanse"))

(define-category DISENCUMBER23500
  :mixins (FREE-80)
  :realization (:VERB "disencumber"))

(define-category WEAN23700
  :mixins (FREE-80)
  :realization (:VERB "wean"))

(define-category EASE23700
  :mixins (FREE-80)
  :realization (:VERB "ease"))

(define-category EASE23000
  :mixins (FREE-80)
  :realization (:VERB "ease"))

(define-category BREAK24204
  :mixins (FREE-80)
  :realization (:VERB "break"))

(define-category ABSOLVE23200
  :mixins (FREE-80-1)
  :realization (:VERB "absolve"))

(define-category ACQUIT23200
  :mixins (FREE-80-1)
  :realization (:VERB "acquit"))

(define-category CLEAR23200
  :mixins (FREE-80-1)
  :realization (:VERB "clear"))

(define-category FREE23200
  :mixins (FREE-80-1)
  :realization (:VERB "free"))

(define-category FREE24102
  :mixins (FREE-80-1)
  :realization (:VERB "free"))

(define-category FREE24107
  :mixins (FREE-80-1)
  :realization (:VERB "free"))

(define-category EMANCIPATE24100
  :mixins (FREE-80-1)
  :realization (:VERB "emancipate"))

(define-category CURE22900
  :mixins (FREE-80-1-1)
  :realization (:VERB "cure"))

(define-category RELIEVE23005
  :mixins (FREE-80-1-1)
  :realization (:VERB "relieve"))

(define-category RELIEVE23201
  :mixins (FREE-80-1-1)
  :realization (:VERB "relieve"))

(define-category RELIEVE24001
  :mixins (FREE-80-1-1)
  :realization (:VERB "relieve"))

(define-category RELIEVE24102
  :mixins (FREE-80-1-1)
  :realization (:VERB "relieve"))

(define-category RELIEVE24101
  :mixins (FREE-80-1-1)
  :realization (:VERB "relieve"))

(define-category PURGE23000
  :mixins (FREE-80-1-1)
  :realization (:VERB "purge"))

(define-category PURIFY23001
  :mixins (FREE-80-1-1)
  :realization (:VERB "purify"))

(define-category PURIFY23000
  :mixins (FREE-80-1-1)
  :realization (:VERB "purify"))

(define-category ISSUE24100
  :mixins (FULFILLING-13.4.1)
  :realization (:VERB "issue"))

(define-category LEAVE24002
  :mixins (FULFILLING-13.4.1)
  :realization (:VERB "leave"))

(define-category LEAVE24001
  :mixins (FULFILLING-13.4.1)
  :realization (:VERB "leave"))

(define-category LEAVE23105
  :mixins (FULFILLING-13.4.1)
  :realization (:VERB "leave"))

(define-category PRESENT23206
  :mixins (FULFILLING-13.4.1)
  :realization (:VERB "present"))

(define-category PRESENT23200
  :mixins (FULFILLING-13.4.1)
  :realization (:VERB "present"))

(define-category PRESENT23900
  :mixins (FULFILLING-13.4.1)
  :realization (:VERB "present"))

(define-category TRUST24000
  :mixins (FULFILLING-13.4.1)
  :realization (:VERB "trust"))

(define-category CREDIT23112
  :mixins (FULFILLING-13.4.1-1)
  :realization (:VERB "credit"))

(define-category CREDIT23101
  :mixins (FULFILLING-13.4.1-1)
  :realization (:VERB "credit"))

(define-category ENTRUST24001
  :mixins (FULFILLING-13.4.1-1)
  :realization (:VERB "entrust"))

(define-category ENTRUST24000
  :mixins (FULFILLING-13.4.1-1)
  :realization (:VERB "entrust"))

(define-category FURNISH24000
  :mixins (FULFILLING-13.4.1-1)
  :realization (:VERB "furnish"))

(define-category SERVE23500
  :mixins (FULFILLING-13.4.1-1)
  :realization (:VERB "serve"))

(define-category SERVE23400
  :mixins (FULFILLING-13.4.1-1)
  :realization (:VERB "serve"))

(define-category SERVE23401
  :mixins (FULFILLING-13.4.1-1)
  :realization (:VERB "serve"))

(define-category SUPPLY23400
  :mixins (FULFILLING-13.4.1-1)
  :realization (:VERB "supply"))

(define-category SUPPLY24100
  :mixins (FULFILLING-13.4.1-1)
  :realization (:VERB "supply"))

(define-category SUPPLY24000
  :mixins (FULFILLING-13.4.1-1)
  :realization (:VERB "supply"))

(define-category PROVIDE23400
  :mixins (FULFILLING-13.4.1-2)
  :realization (:VERB "provide"))

(define-category PROVIDE24000
  :mixins (FULFILLING-13.4.1-2)
  :realization (:VERB "provide"))

(define-category GO23500
  :mixins (FUNCTION-105.2.1)
  :realization (:VERB "go"))

(define-category GO_ON23500
  :mixins (FUNCTION-105.2.1)
  :realization (:VERB "go_on"))

(define-category RUN23504
  :mixins (FUNCTION-105.2.1)
  :realization (:VERB "run"))

(define-category RUN23500
  :mixins (FUNCTION-105.2.1)
  :realization (:VERB "run"))

(define-category PERFORM23600
  :mixins (FUNCTION-105.2.1-1)
  :realization (:VERB "perform"))

(define-category FUNCTION23500
  :mixins (FUNCTION-105.2.1-1)
  :realization (:VERB "function"))

(define-category OPERATE23502
  :mixins (FUNCTION-105.2.1-1)
  :realization (:VERB "operate"))

(define-category OPERATE23503
  :mixins (FUNCTION-105.2.1-1)
  :realization (:VERB "operate"))

(define-category WORK23502
  :mixins (FUNCTION-105.2.1-1)
  :realization (:VERB "work"))

(define-category DIP23400
  :mixins (FUNNEL-9.3)
  :realization (:VERB "dip"))

(define-category DIP23500
  :mixins (FUNNEL-9.3)
  :realization (:VERB "dip"))

(define-category DUNK23400
  :mixins (FUNNEL-9.3)
  :realization (:VERB "dunk"))

(define-category DUNK23500
  :mixins (FUNNEL-9.3)
  :realization (:VERB "dunk"))

(define-category LADLE23501
  :mixins (FUNNEL-9.3)
  :realization (:VERB "ladle"))

(define-category HOE23600
  :mixins (FUNNEL-9.3)
  :realization (:VERB "hoe"))

(define-category SCOOP23501
  :mixins (FUNNEL-9.3)
  :realization (:VERB "scoop"))

(define-category SIPHON23500
  :mixins (FUNNEL-9.3)
  :realization (:VERB "siphon"))

(define-category SOP23500
  :mixins (FUNNEL-9.3)
  :realization (:VERB "sop"))

(define-category CHANNELIZE23803
  :mixins (FUNNEL-9.3)
  :realization (:VERB "channelize"))

(define-category CHANNEL23500
  :mixins (FUNNEL-9.3-1)
  :realization (:VERB "channel"))

(define-category CHANNEL23800
  :mixins (FUNNEL-9.3-1)
  :realization (:VERB "channel"))

(define-category CHANNEL23801
  :mixins (FUNNEL-9.3-1)
  :realization (:VERB "channel"))

(define-category FIT24203
  :mixins (FUNNEL-9.3-1)
  :realization (:VERB "fit"))

(define-category FIT24202
  :mixins (FUNNEL-9.3-1)
  :realization (:VERB "fit"))

(define-category RAKE23500
  :mixins (FUNNEL-9.3-1)
  :realization (:VERB "rake"))

(define-category SHOVEL23500
  :mixins (FUNNEL-9.3-1)
  :realization (:VERB "shovel"))

(define-category SPOON23500
  :mixins (FUNNEL-9.3-1)
  :realization (:VERB "spoon"))

(define-category SQUISH23500
  :mixins (FUNNEL-9.3-1)
  :realization (:VERB "squish"))

(define-category TUCK23500
  :mixins (FUNNEL-9.3-1)
  :realization (:VERB "tuck"))

(define-category WIPE23500
  :mixins (FUNNEL-9.3-1)
  :realization (:VERB "wipe"))

(define-category WRING23502
  :mixins (FUNNEL-9.3-1)
  :realization (:VERB "wring"))

(define-category BANG23502
  :mixins (FUNNEL-9.3-1-1)
  :realization (:VERB "bang"))

(define-category DUMP24000
  :mixins (FUNNEL-9.3-1-1)
  :realization (:VERB "dump"))

(define-category FUNNEL23500
  :mixins (FUNNEL-9.3-1-1)
  :realization (:VERB "funnel"))

(define-category HAMMER23600
  :mixins (FUNNEL-9.3-1-1)
  :realization (:VERB "hammer"))

(define-category HAMMER23500
  :mixins (FUNNEL-9.3-1-1)
  :realization (:VERB "hammer"))

(define-category POUND23003
  :mixins (FUNNEL-9.3-1-1)
  :realization (:VERB "pound"))

(define-category PUSH23800
  :mixins (FUNNEL-9.3-1-1)
  :realization (:VERB "push"))

(define-category RAM23503
  :mixins (FUNNEL-9.3-1-1)
  :realization (:VERB "ram"))

(define-category SHAKE23001
  :mixins (FUNNEL-9.3-1-1)
  :realization (:VERB "shake"))

(define-category SQUEEZE23503
  :mixins (FUNNEL-9.3-1-1)
  :realization (:VERB "squeeze"))

(define-category SWEEP23500
  :mixins (FUNNEL-9.3-1-1)
  :realization (:VERB "sweep"))

(define-category WEDGE23500
  :mixins (FUNNEL-9.3-1-1)
  :realization (:VERB "wedge"))

(define-category WEDGE23501
  :mixins (FUNNEL-9.3-1-1)
  :realization (:VERB "wedge"))

(define-category ACCORD24000
  :mixins (FUTURE_HAVING-13.3)
  :realization (:VERB "accord"))

(define-category DEVOLVE24102
  :mixins (FUTURE_HAVING-13.3)
  :realization (:VERB "devolve"))

(define-category PORTION24000
  :mixins (FUTURE_HAVING-13.3)
  :realization (:VERB "portion"))

(define-category RATION24000
  :mixins (FUTURE_HAVING-13.3)
  :realization (:VERB "ration"))

(define-category ADVANCE24000
  :mixins (FUTURE_HAVING-13.3-1)
  :realization (:VERB "advance"))

(define-category ALLOCATE24000
  :mixins (FUTURE_HAVING-13.3-1)
  :realization (:VERB "allocate"))

(define-category ALLOT24002
  :mixins (FUTURE_HAVING-13.3-1)
  :realization (:VERB "allot"))

(define-category ALLOT24000
  :mixins (FUTURE_HAVING-13.3-1)
  :realization (:VERB "allot"))

(define-category ALLOT24001
  :mixins (FUTURE_HAVING-13.3-1)
  :realization (:VERB "allot"))

(define-category APPORTION24000
  :mixins (FUTURE_HAVING-13.3-1)
  :realization (:VERB "apportion"))

(define-category APPORTION24001
  :mixins (FUTURE_HAVING-13.3-1)
  :realization (:VERB "apportion"))

(define-category ASSIGN24001
  :mixins (FUTURE_HAVING-13.3-1)
  :realization (:VERB "assign"))

(define-category AWARD24001
  :mixins (FUTURE_HAVING-13.3-1)
  :realization (:VERB "award"))

(define-category AWARD24000
  :mixins (FUTURE_HAVING-13.3-1)
  :realization (:VERB "award"))

(define-category BEQUEATH24000
  :mixins (FUTURE_HAVING-13.3-1)
  :realization (:VERB "bequeath"))

(define-category CEDE24000
  :mixins (FUTURE_HAVING-13.3-1)
  :realization (:VERB "cede"))

(define-category CEDE24001
  :mixins (FUTURE_HAVING-13.3-1)
  :realization (:VERB "cede"))

(define-category CONCEDE24000
  :mixins (FUTURE_HAVING-13.3-1)
  :realization (:VERB "concede"))

(define-category EXTEND24005
  :mixins (FUTURE_HAVING-13.3-1)
  :realization (:VERB "extend"))

(define-category GRANT24002
  :mixins (FUTURE_HAVING-13.3-1)
  :realization (:VERB "grant"))

(define-category GRANT24004
  :mixins (FUTURE_HAVING-13.3-1)
  :realization (:VERB "grant"))

(define-category GRANT24005
  :mixins (FUTURE_HAVING-13.3-1)
  :realization (:VERB "grant"))

(define-category GRANT24000
  :mixins (FUTURE_HAVING-13.3-1)
  :realization (:VERB "grant"))

(define-category GRANT24003
  :mixins (FUTURE_HAVING-13.3-1)
  :realization (:VERB "grant"))

(define-category GRANT24001
  :mixins (FUTURE_HAVING-13.3-1)
  :realization (:VERB "grant"))

(define-category GUARANTEE23201
  :mixins (FUTURE_HAVING-13.3-1)
  :realization (:VERB "guarantee"))

(define-category ISSUE24100
  :mixins (FUTURE_HAVING-13.3-1)
  :realization (:VERB "issue"))

(define-category LEAVE24002
  :mixins (FUTURE_HAVING-13.3-1)
  :realization (:VERB "leave"))

(define-category LEAVE24001
  :mixins (FUTURE_HAVING-13.3-1)
  :realization (:VERB "leave"))

(define-category LEAVE23105
  :mixins (FUTURE_HAVING-13.3-1)
  :realization (:VERB "leave"))

(define-category OFFER24200
  :mixins (FUTURE_HAVING-13.3-1)
  :realization (:VERB "offer"))

(define-category OFFER24000
  :mixins (FUTURE_HAVING-13.3-1)
  :realization (:VERB "offer"))

(define-category OWE24000
  :mixins (FUTURE_HAVING-13.3-1)
  :realization (:VERB "owe"))

(define-category OWE24001
  :mixins (FUTURE_HAVING-13.3-1)
  :realization (:VERB "owe"))

(define-category PROMISE23201
  :mixins (FUTURE_HAVING-13.3-1)
  :realization (:VERB "promise"))

(define-category REALLOCATE24000
  :mixins (FUTURE_HAVING-13.3-1)
  :realization (:VERB "reallocate"))

(define-category REASSIGN24100
  :mixins (FUTURE_HAVING-13.3-1)
  :realization (:VERB "reassign"))

(define-category VOTE24112
  :mixins (FUTURE_HAVING-13.3-1)
  :realization (:VERB "vote"))

(define-category WILL24000
  :mixins (FUTURE_HAVING-13.3-1)
  :realization (:VERB "will"))

(define-category YIELD24001
  :mixins (FUTURE_HAVING-13.3-1)
  :realization (:VERB "yield"))

(define-category BOOK24101
  :mixins (GET-13.5.1)
  :realization (:VERB "book"))

(define-category BUY24200
  :mixins (GET-13.5.1)
  :realization (:VERB "buy"))

(define-category BUY24000
  :mixins (GET-13.5.1)
  :realization (:VERB "buy"))

(define-category CALL23215
  :mixins (GET-13.5.1)
  :realization (:VERB "call"))

(define-category CALL23205
  :mixins (GET-13.5.1)
  :realization (:VERB "call"))

(define-category CATCH23503
  :mixins (GET-13.5.1)
  :realization (:VERB "catch"))

(define-category CATCH23501
  :mixins (GET-13.5.1)
  :realization (:VERB "catch"))

(define-category CATCH23500
  :mixins (GET-13.5.1)
  :realization (:VERB "catch"))

(define-category CHARTER24000
  :mixins (GET-13.5.1)
  :realization (:VERB "charter"))

(define-category CHOOSE23102
  :mixins (GET-13.5.1)
  :realization (:VERB "choose"))

(define-category CHOOSE23100
  :mixins (GET-13.5.1)
  :realization (:VERB "choose"))

(define-category FIND24001
  :mixins (GET-13.5.1)
  :realization (:VERB "find"))

(define-category FIND24000
  :mixins (GET-13.5.1)
  :realization (:VERB "find"))

(define-category GATHER24102
  :mixins (GET-13.5.1)
  :realization (:VERB "gather"))

(define-category GATHER23500
  :mixins (GET-13.5.1)
  :realization (:VERB "gather"))

(define-category HIRE24000
  :mixins (GET-13.5.1)
  :realization (:VERB "hire"))

(define-category HIRE24101
  :mixins (GET-13.5.1)
  :realization (:VERB "hire"))

(define-category HIRE24100
  :mixins (GET-13.5.1)
  :realization (:VERB "hire"))

(define-category LEASE24000
  :mixins (GET-13.5.1)
  :realization (:VERB "lease"))

(define-category LEASE24101
  :mixins (GET-13.5.1)
  :realization (:VERB "lease"))

(define-category ORDER23200
  :mixins (GET-13.5.1)
  :realization (:VERB "order"))

(define-category PHONE23200
  :mixins (GET-13.5.1)
  :realization (:VERB "phone"))

(define-category PICK23501
  :mixins (GET-13.5.1)
  :realization (:VERB "pick"))

(define-category PLUCK23501
  :mixins (GET-13.5.1)
  :realization (:VERB "pluck"))

(define-category PLUCK23500
  :mixins (GET-13.5.1)
  :realization (:VERB "pluck"))

(define-category PROCURE23400
  :mixins (GET-13.5.1)
  :realization (:VERB "procure"))

(define-category PROCURE24000
  :mixins (GET-13.5.1)
  :realization (:VERB "procure"))

(define-category PULL23011
  :mixins (GET-13.5.1)
  :realization (:VERB "pull"))

(define-category PULL23803
  :mixins (GET-13.5.1)
  :realization (:VERB "pull"))

(define-category PULL23502
  :mixins (GET-13.5.1)
  :realization (:VERB "pull"))

(define-category REACH24000
  :mixins (GET-13.5.1)
  :realization (:VERB "reach"))

(define-category RENT24100
  :mixins (GET-13.5.1)
  :realization (:VERB "rent"))

(define-category RENT24000
  :mixins (GET-13.5.1)
  :realization (:VERB "rent"))

(define-category RESERVE24100
  :mixins (GET-13.5.1)
  :realization (:VERB "reserve"))

(define-category RESERVE23200
  :mixins (GET-13.5.1)
  :realization (:VERB "reserve"))

(define-category TAKE24000
  :mixins (GET-13.5.1)
  :realization (:VERB "take"))

(define-category WIN24000
  :mixins (GET-13.5.1)
  :realization (:VERB "win"))

(define-category EARN24003
  :mixins (GET-13.5.1-1)
  :realization (:VERB "earn"))

(define-category EARN24001
  :mixins (GET-13.5.1-1)
  :realization (:VERB "earn"))

(define-category FETCH23503
  :mixins (GET-13.5.1-1)
  :realization (:VERB "fetch"))

(define-category FETCH24000
  :mixins (GET-13.5.1-1)
  :realization (:VERB "fetch"))

(define-category FETCH23500
  :mixins (GET-13.5.1-1)
  :realization (:VERB "fetch"))

(define-category CASH24000
  :mixins (GET-13.5.1-1)
  :realization (:VERB "cash"))

(define-category GAIN24000
  :mixins (GET-13.5.1-1)
  :realization (:VERB "gain"))

(define-category GAIN24001
  :mixins (GET-13.5.1-1)
  :realization (:VERB "gain"))

(define-category GAIN24003
  :mixins (GET-13.5.1-1)
  :realization (:VERB "gain"))

(define-category GET24013
  :mixins (GET-13.5.1-1)
  :realization (:VERB "get"))

(define-category GET24014
  :mixins (GET-13.5.1-1)
  :realization (:VERB "get"))

(define-category GET23503
  :mixins (GET-13.5.1-1)
  :realization (:VERB "get"))

(define-category GET24000
  :mixins (GET-13.5.1-1)
  :realization (:VERB "get"))

(define-category SAVE24003
  :mixins (GET-13.5.1-1)
  :realization (:VERB "save"))

(define-category SECURE23200
  :mixins (GET-13.5.1-1)
  :realization (:VERB "secure"))

(define-category SECURE24001
  :mixins (GET-13.5.1-1)
  :realization (:VERB "secure"))

(define-category SECURE24000
  :mixins (GET-13.5.1-1)
  :realization (:VERB "secure"))

(define-category DEAL24006
  :mixins (GIVE-13.1)
  :realization (:VERB "deal"))

(define-category DEAL24007
  :mixins (GIVE-13.1)
  :realization (:VERB "deal"))

(define-category DEAL24002
  :mixins (GIVE-13.1)
  :realization (:VERB "deal"))

(define-category DEAL24001
  :mixins (GIVE-13.1)
  :realization (:VERB "deal"))

(define-category LEND24000
  :mixins (GIVE-13.1)
  :realization (:VERB "lend"))

(define-category LOAN24000
  :mixins (GIVE-13.1)
  :realization (:VERB "loan"))

(define-category PASS23804
  :mixins (GIVE-13.1)
  :realization (:VERB "pass"))

(define-category PASS24013
  :mixins (GIVE-13.1)
  :realization (:VERB "pass"))

(define-category PASS24001
  :mixins (GIVE-13.1)
  :realization (:VERB "pass"))

(define-category PASS24000
  :mixins (GIVE-13.1)
  :realization (:VERB "pass"))

(define-category PEDDLE24000
  :mixins (GIVE-13.1)
  :realization (:VERB "peddle"))

(define-category REFUND24000
  :mixins (GIVE-13.1)
  :realization (:VERB "refund"))

(define-category RENDER24003
  :mixins (GIVE-13.1)
  :realization (:VERB "render"))

(define-category RENDER24000
  :mixins (GIVE-13.1)
  :realization (:VERB "render"))

(define-category RENDER24001
  :mixins (GIVE-13.1)
  :realization (:VERB "render"))

(define-category RENDER24002
  :mixins (GIVE-13.1)
  :realization (:VERB "render"))

(define-category GIVE24012
  :mixins (GIVE-13.1-1)
  :realization (:VERB "give"))

(define-category GIVE23400
  :mixins (GIVE-13.1-1)
  :realization (:VERB "give"))

(define-category GIVE24013
  :mixins (GIVE-13.1-1)
  :realization (:VERB "give"))

(define-category GIVE24006
  :mixins (GIVE-13.1-1)
  :realization (:VERB "give"))

(define-category GIVE24002
  :mixins (GIVE-13.1-1)
  :realization (:VERB "give"))

(define-category GIVE24001
  :mixins (GIVE-13.1-1)
  :realization (:VERB "give"))

(define-category GIVE24000
  :mixins (GIVE-13.1-1)
  :realization (:VERB "give"))

(define-category GIVE24003
  :mixins (GIVE-13.1-1)
  :realization (:VERB "give"))

(define-category HOCK24000
  :mixins (GIVE-13.1-1)
  :realization (:VERB "hock"))

(define-category HAWK24000
  :mixins (GIVE-13.1-1)
  :realization (:VERB "hawk"))

(define-category LET24000
  :mixins (GIVE-13.1-1)
  :realization (:VERB "let"))

(define-category RENT24001
  :mixins (GIVE-13.1-1)
  :realization (:VERB "rent"))

(define-category RENT24101
  :mixins (GIVE-13.1-1)
  :realization (:VERB "rent"))

(define-category SELL24001
  :mixins (GIVE-13.1-1)
  :realization (:VERB "sell"))

(define-category SELL24000
  :mixins (GIVE-13.1-1)
  :realization (:VERB "sell"))

(define-category LEASE24001
  :mixins (GIVE-13.1-1)
  :realization (:VERB "lease"))

(define-category LEASE24100
  :mixins (GIVE-13.1-1)
  :realization (:VERB "lease"))

(define-category PAWN24000
  :mixins (GIVE-13.1-1)
  :realization (:VERB "pawn"))

(define-category BOLT23400
  :mixins (GOBBLE-39.3-1)
  :realization (:VERB "bolt"))

(define-category BOLT23401
  :mixins (GOBBLE-39.3-1)
  :realization (:VERB "bolt"))

(define-category GOBBLE23400
  :mixins (GOBBLE-39.3-1)
  :realization (:VERB "gobble"))

(define-category WOLF23400
  :mixins (GOBBLE-39.3-1)
  :realization (:VERB "wolf"))

(define-category GULP23401
  :mixins (GOBBLE-39.3-2)
  :realization (:VERB "gulp"))

(define-category GUZZLE23400
  :mixins (GOBBLE-39.3-2)
  :realization (:VERB "guzzle"))

(define-category QUAFF23400
  :mixins (GOBBLE-39.3-2)
  :realization (:VERB "quaff"))

(define-category SWALLOW23400
  :mixins (GOBBLE-39.3-2)
  :realization (:VERB "swallow"))

(define-category SWIG23400
  :mixins (GOBBLE-39.3-2)
  :realization (:VERB "swig"))

(define-category EXIST24201
  :mixins (GORGE-39.6)
  :realization (:VERB "exist"))

(define-category FEED23400
  :mixins (GORGE-39.6)
  :realization (:VERB "feed"))

(define-category FLOURISH23001
  :mixins (GORGE-39.6)
  :realization (:VERB "flourish"))

(define-category GORGE23400
  :mixins (GORGE-39.6)
  :realization (:VERB "gorge"))

(define-category PROSPER24000
  :mixins (GORGE-39.6)
  :realization (:VERB "prosper"))

(define-category SUBSIST24200
  :mixins (GORGE-39.6)
  :realization (:VERB "subsist"))

(define-category SURVIVE24201
  :mixins (GORGE-39.6)
  :realization (:VERB "survive"))

(define-category THRIVE23000
  :mixins (GORGE-39.6)
  :realization (:VERB "thrive"))

(define-category CURRY22900
  :mixins (GROOM-41.1.2)
  :realization (:VERB "curry"))

(define-category GROOM22900
  :mixins (GROOM-41.1.2)
  :realization (:VERB "groom"))

(define-category GROOM22903
  :mixins (GROOM-41.1.2)
  :realization (:VERB "groom"))

(define-category DEVELOP23010
  :mixins (GROW-26.2.1)
  :realization (:VERB "develop"))

(define-category DEVELOP23609
  :mixins (GROW-26.2.1)
  :realization (:VERB "develop"))

(define-category DEVELOP23001
  :mixins (GROW-26.2.1)
  :realization (:VERB "develop"))

(define-category DEVELOP23000
  :mixins (GROW-26.2.1)
  :realization (:VERB "develop"))

(define-category EVOLVE23003
  :mixins (GROW-26.2.1)
  :realization (:VERB "evolve"))

(define-category EVOLVE23000
  :mixins (GROW-26.2.1)
  :realization (:VERB "evolve"))

(define-category GENERATE23601
  :mixins (GROW-26.2.1)
  :realization (:VERB "generate"))

(define-category GENERATE23602
  :mixins (GROW-26.2.1)
  :realization (:VERB "generate"))

(define-category GROW23010
  :mixins (GROW-26.2.1)
  :realization (:VERB "grow"))

(define-category GROW23600
  :mixins (GROW-26.2.1)
  :realization (:VERB "grow"))

(define-category GROW23004
  :mixins (GROW-26.2.1)
  :realization (:VERB "grow"))

(define-category GROW23001
  :mixins (GROW-26.2.1)
  :realization (:VERB "grow"))

(define-category GROW23002
  :mixins (GROW-26.2.1)
  :realization (:VERB "grow"))

(define-category HATCH22900
  :mixins (GROW-26.2.1)
  :realization (:VERB "hatch"))

(define-category HATCH22901
  :mixins (GROW-26.2.1)
  :realization (:VERB "hatch"))

(define-category MATURATE23000
  :mixins (GROW-26.2.1)
  :realization (:VERB "maturate"))

(define-category MATURE23001
  :mixins (GROW-26.2.1)
  :realization (:VERB "mature"))

(define-category MATURE23000
  :mixins (GROW-26.2.1)
  :realization (:VERB "mature"))

(define-category REDEVELOP23000
  :mixins (GROW-26.2.1)
  :realization (:VERB "redevelop"))

(define-category REDEVELOP23900
  :mixins (GROW-26.2.1)
  :realization (:VERB "redevelop"))

(define-category SUPPORT24100
  :mixins (HELP-72.1-1)
  :realization (:VERB "support"))

(define-category SUCCOR24100
  :mixins (HELP-72.1-1)
  :realization (:VERB "succor"))

(define-category AID24100
  :mixins (HELP-72.1-1-1)
  :realization (:VERB "aid"))

(define-category ABET24100
  :mixins (HELP-72.1-1-1)
  :realization (:VERB "abet"))

(define-category ASSIST24102
  :mixins (HELP-72.1-1-1)
  :realization (:VERB "assist"))

(define-category HELP24100
  :mixins (HELP-72.1-1-1)
  :realization (:VERB "help"))

(define-category PULL23313
  :mixins (HELP-72.1-2)
  :realization (:VERB "pull"))

(define-category ACCUMULATE23000
  :mixins (HERD-47.5.2)
  :realization (:VERB "accumulate"))

(define-category ACCUMULATE24000
  :mixins (HERD-47.5.2)
  :realization (:VERB "accumulate"))

(define-category AGGREGATE23500
  :mixins (HERD-47.5.2)
  :realization (:VERB "aggregate"))

(define-category AMASS24000
  :mixins (HERD-47.5.2)
  :realization (:VERB "amass"))

(define-category AMASS23000
  :mixins (HERD-47.5.2)
  :realization (:VERB "amass"))

(define-category ASSEMBLE24103
  :mixins (HERD-47.5.2)
  :realization (:VERB "assemble"))

(define-category ASSEMBLE24100
  :mixins (HERD-47.5.2)
  :realization (:VERB "assemble"))

(define-category CLUSTER23500
  :mixins (HERD-47.5.2)
  :realization (:VERB "cluster"))

(define-category CLUSTER23800
  :mixins (HERD-47.5.2)
  :realization (:VERB "cluster"))

(define-category COLLECT23501
  :mixins (HERD-47.5.2)
  :realization (:VERB "collect"))

(define-category COLLECT23500
  :mixins (HERD-47.5.2)
  :realization (:VERB "collect"))

(define-category COLLECT24000
  :mixins (HERD-47.5.2)
  :realization (:VERB "collect"))

(define-category CONGREGATE23800
  :mixins (HERD-47.5.2)
  :realization (:VERB "congregate"))

(define-category CONVENE23200
  :mixins (HERD-47.5.2)
  :realization (:VERB "convene"))

(define-category CONVENE23800
  :mixins (HERD-47.5.2)
  :realization (:VERB "convene"))

(define-category FLOCK23800
  :mixins (HERD-47.5.2)
  :realization (:VERB "flock"))

(define-category FLOCK23801
  :mixins (HERD-47.5.2)
  :realization (:VERB "flock"))

(define-category GATHER24102
  :mixins (HERD-47.5.2)
  :realization (:VERB "gather"))

(define-category GATHER23000
  :mixins (HERD-47.5.2)
  :realization (:VERB "gather"))

(define-category GATHER24100
  :mixins (HERD-47.5.2)
  :realization (:VERB "gather"))

(define-category GATHER23500
  :mixins (HERD-47.5.2)
  :realization (:VERB "gather"))

(define-category GROUP23300
  :mixins (HERD-47.5.2)
  :realization (:VERB "group"))

(define-category GROUP23100
  :mixins (HERD-47.5.2)
  :realization (:VERB "group"))

(define-category HERD24200
  :mixins (HERD-47.5.2)
  :realization (:VERB "herd"))

(define-category HERD23800
  :mixins (HERD-47.5.2)
  :realization (:VERB "herd"))

(define-category HERD23801
  :mixins (HERD-47.5.2)
  :realization (:VERB "herd"))

(define-category HUDDLE23801
  :mixins (HERD-47.5.2)
  :realization (:VERB "huddle"))

(define-category MASS23800
  :mixins (HERD-47.5.2)
  :realization (:VERB "mass"))

(define-category RECONVENE23800
  :mixins (HERD-47.5.2)
  :realization (:VERB "reconvene"))

(define-category BELCH22900
  :mixins (HICCUP-40.1.1)
  :realization (:VERB "belch"))

(define-category BLUSH22900
  :mixins (HICCUP-40.1.1)
  :realization (:VERB "blush"))

(define-category BURP22900
  :mixins (HICCUP-40.1.1)
  :realization (:VERB "burp"))

(define-category ERUCT22900
  :mixins (HICCUP-40.1.1)
  :realization (:VERB "eruct"))

(define-category FART22900
  :mixins (HICCUP-40.1.1)
  :realization (:VERB "fart"))

(define-category FLUSH22900
  :mixins (HICCUP-40.1.1)
  :realization (:VERB "flush"))

(define-category HICCUP22900
  :mixins (HICCUP-40.1.1)
  :realization (:VERB "hiccup"))

(define-category PANT22900
  :mixins (HICCUP-40.1.1)
  :realization (:VERB "pant"))

(define-category SNEEZE22900
  :mixins (HICCUP-40.1.1)
  :realization (:VERB "sneeze"))

(define-category SNIFFLE22900
  :mixins (HICCUP-40.1.1)
  :realization (:VERB "sniffle"))

(define-category SNORE22900
  :mixins (HICCUP-40.1.1)
  :realization (:VERB "snore"))

(define-category SNUFF22902
  :mixins (HICCUP-40.1.1)
  :realization (:VERB "snuff"))

(define-category SNUFFLE22900
  :mixins (HICCUP-40.1.1)
  :realization (:VERB "snuffle"))

(define-category SWALLOW23400
  :mixins (HICCUP-40.1.1)
  :realization (:VERB "swallow"))

(define-category WHEEZE22900
  :mixins (HICCUP-40.1.1)
  :realization (:VERB "wheeze"))

(define-category YAWN22900
  :mixins (HICCUP-40.1.1)
  :realization (:VERB "yawn"))

(define-category COMMISSION24100
  :mixins (HIRE-13.5.3)
  :realization (:VERB "commission"))

(define-category CONTRACT24100
  :mixins (HIRE-13.5.3)
  :realization (:VERB "contract"))

(define-category DRAFT23300
  :mixins (HIRE-13.5.3)
  :realization (:VERB "draft"))

(define-category EMPLOY24100
  :mixins (HIRE-13.5.3)
  :realization (:VERB "employ"))

(define-category ENGAGE24101
  :mixins (HIRE-13.5.3)
  :realization (:VERB "engage"))

(define-category ENLIST23301
  :mixins (HIRE-13.5.3)
  :realization (:VERB "enlist"))

(define-category ENLIST24000
  :mixins (HIRE-13.5.3)
  :realization (:VERB "enlist"))

(define-category GROOM24100
  :mixins (HIRE-13.5.3)
  :realization (:VERB "groom"))

(define-category HIRE24100
  :mixins (HIRE-13.5.3)
  :realization (:VERB "hire"))

(define-category PREPARE23101
  :mixins (HIRE-13.5.3)
  :realization (:VERB "prepare"))

(define-category REINSTATE24100
  :mixins (HIRE-13.5.3)
  :realization (:VERB "reinstate"))

(define-category SIGN24101
  :mixins (HIRE-13.5.3)
  :realization (:VERB "sign"))

(define-category SIGN_ON24100
  :mixins (HIRE-13.5.3)
  :realization (:VERB "sign_on"))

(define-category SIGN_UP24100
  :mixins (HIRE-13.5.3)
  :realization (:VERB "sign_up"))

(define-category SUBCONTRACT24100
  :mixins (HIRE-13.5.3)
  :realization (:VERB "subcontract"))

(define-category TAKE_ON24000
  :mixins (HIRE-13.5.3)
  :realization (:VERB "take_on"))

(define-category TRAIN24100
  :mixins (HIRE-13.5.3)
  :realization (:VERB "train"))

(define-category BANG23501
  :mixins (HIT-18.1)
  :realization (:VERB "bang"))

(define-category BANG23500
  :mixins (HIT-18.1)
  :realization (:VERB "bang"))

(define-category BASH23500
  :mixins (HIT-18.1)
  :realization (:VERB "bash"))

(define-category CLICK23500
  :mixins (HIT-18.1)
  :realization (:VERB "click"))

(define-category DASH23502
  :mixins (HIT-18.1)
  :realization (:VERB "dash"))

(define-category SQUASH23500
  :mixins (HIT-18.1)
  :realization (:VERB "squash"))

(define-category TAMP23500
  :mixins (HIT-18.1)
  :realization (:VERB "tamp"))

(define-category THUMP23500
  :mixins (HIT-18.1)
  :realization (:VERB "thump"))

(define-category THWACK23500
  :mixins (HIT-18.1)
  :realization (:VERB "thwack"))

(define-category WHACK23500
  :mixins (HIT-18.1)
  :realization (:VERB "whack"))

(define-category SMITE23000
  :mixins (HIT-18.1)
  :realization (:VERB "smite"))

(define-category SMITE23500
  :mixins (HIT-18.1)
  :realization (:VERB "smite"))

(define-category BATTER23000
  :mixins (HIT-18.1-1)
  :realization (:VERB "batter"))

(define-category BATTER23500
  :mixins (HIT-18.1-1)
  :realization (:VERB "batter"))

(define-category BATTER23501
  :mixins (HIT-18.1-1)
  :realization (:VERB "batter"))

(define-category BEAT23512
  :mixins (HIT-18.1-1)
  :realization (:VERB "beat"))

(define-category BEAT23510
  :mixins (HIT-18.1-1)
  :realization (:VERB "beat"))

(define-category BEAT23503
  :mixins (HIT-18.1-1)
  :realization (:VERB "beat"))

(define-category BEAT23600
  :mixins (HIT-18.1-1)
  :realization (:VERB "beat"))

(define-category BEAT23501
  :mixins (HIT-18.1-1)
  :realization (:VERB "beat"))

(define-category BUMP23500
  :mixins (HIT-18.1-1)
  :realization (:VERB "bump"))

(define-category BUTT23500
  :mixins (HIT-18.1-1)
  :realization (:VERB "butt"))

(define-category DRUM23900
  :mixins (HIT-18.1-1)
  :realization (:VERB "drum"))

(define-category HAMMER23500
  :mixins (HIT-18.1-1)
  :realization (:VERB "hammer"))

(define-category HIT23303
  :mixins (HIT-18.1-1)
  :realization (:VERB "hit"))

(define-category HIT23301
  :mixins (HIT-18.1-1)
  :realization (:VERB "hit"))

(define-category HIT23500
  :mixins (HIT-18.1-1)
  :realization (:VERB "hit"))

(define-category HIT23501
  :mixins (HIT-18.1-1)
  :realization (:VERB "hit"))

(define-category JAB23502
  :mixins (HIT-18.1-1)
  :realization (:VERB "jab"))

(define-category JAB23501
  :mixins (HIT-18.1-1)
  :realization (:VERB "jab"))

(define-category JAB23500
  :mixins (HIT-18.1-1)
  :realization (:VERB "jab"))

(define-category KICK23500
  :mixins (HIT-18.1-1)
  :realization (:VERB "kick"))

(define-category KNOCK23900
  :mixins (HIT-18.1-1)
  :realization (:VERB "knock"))

(define-category KNOCK23500
  :mixins (HIT-18.1-1)
  :realization (:VERB "knock"))

(define-category KNOCK23501
  :mixins (HIT-18.1-1)
  :realization (:VERB "knock"))

(define-category LASH23500
  :mixins (HIT-18.1-1)
  :realization (:VERB "lash"))

(define-category LASH23501
  :mixins (HIT-18.1-1)
  :realization (:VERB "lash"))

(define-category POUND23003
  :mixins (HIT-18.1-1)
  :realization (:VERB "pound"))

(define-category POUND23501
  :mixins (HIT-18.1-1)
  :realization (:VERB "pound"))

(define-category POUND23500
  :mixins (HIT-18.1-1)
  :realization (:VERB "pound"))

(define-category RAP23900
  :mixins (HIT-18.1-1)
  :realization (:VERB "rap"))

(define-category RAP23500
  :mixins (HIT-18.1-1)
  :realization (:VERB "rap"))

(define-category SLAP23500
  :mixins (HIT-18.1-1)
  :realization (:VERB "slap"))

(define-category SMACK23502
  :mixins (HIT-18.1-1)
  :realization (:VERB "smack"))

(define-category SMASH23010
  :mixins (HIT-18.1-1)
  :realization (:VERB "smash"))

(define-category SMASH23505
  :mixins (HIT-18.1-1)
  :realization (:VERB "smash"))

(define-category SMASH23802
  :mixins (HIT-18.1-1)
  :realization (:VERB "smash"))

(define-category SMASH23000
  :mixins (HIT-18.1-1)
  :realization (:VERB "smash"))

(define-category SMASH23500
  :mixins (HIT-18.1-1)
  :realization (:VERB "smash"))

(define-category STRIKE23509
  :mixins (HIT-18.1-1)
  :realization (:VERB "strike"))

(define-category STRIKE23500
  :mixins (HIT-18.1-1)
  :realization (:VERB "strike"))

(define-category STRIKE23501
  :mixins (HIT-18.1-1)
  :realization (:VERB "strike"))

(define-category WHANG23501
  :mixins (HIT-18.1-1)
  :realization (:VERB "whang"))

(define-category TAP23901
  :mixins (HIT-18.1-1)
  :realization (:VERB "tap"))

(define-category TAP23500
  :mixins (HIT-18.1-1)
  :realization (:VERB "tap"))

(define-category CLASP23500
  :mixins (HOLD-15.1)
  :realization (:VERB "clasp"))

(define-category CLUTCH23504
  :mixins (HOLD-15.1)
  :realization (:VERB "clutch"))

(define-category GRAB23505
  :mixins (HOLD-15.1)
  :realization (:VERB "grab"))

(define-category GRAB24003
  :mixins (HOLD-15.1)
  :realization (:VERB "grab"))

(define-category GRAB23802
  :mixins (HOLD-15.1)
  :realization (:VERB "grab"))

(define-category GRAB24000
  :mixins (HOLD-15.1)
  :realization (:VERB "grab"))

(define-category GRAB23500
  :mixins (HOLD-15.1)
  :realization (:VERB "grab"))

(define-category GRASP23500
  :mixins (HOLD-15.1)
  :realization (:VERB "grasp"))

(define-category GRIP23500
  :mixins (HOLD-15.1)
  :realization (:VERB "grip"))

(define-category HANDLE23500
  :mixins (HOLD-15.1)
  :realization (:VERB "handle"))

(define-category HOLD23500
  :mixins (HOLD-15.1)
  :realization (:VERB "hold"))

(define-category SEIZE23501
  :mixins (HOLD-15.1)
  :realization (:VERB "seize"))

(define-category SEIZE23500
  :mixins (HOLD-15.1)
  :realization (:VERB "seize"))

(define-category WIELD23500
  :mixins (HOLD-15.1)
  :realization (:VERB "wield"))

(define-category DIG23502
  :mixins (HUNT-35.1)
  :realization (:VERB "dig"))

(define-category DIG23500
  :mixins (HUNT-35.1)
  :realization (:VERB "dig"))

(define-category FEEL24000
  :mixins (HUNT-35.1)
  :realization (:VERB "feel"))

(define-category FEEL23910
  :mixins (HUNT-35.1)
  :realization (:VERB "feel"))

(define-category FISH23300
  :mixins (HUNT-35.1)
  :realization (:VERB "fish"))

(define-category HUNT23302
  :mixins (HUNT-35.1)
  :realization (:VERB "hunt"))

(define-category HUNT23503
  :mixins (HUNT-35.1)
  :realization (:VERB "hunt"))

(define-category HUNT23800
  :mixins (HUNT-35.1)
  :realization (:VERB "hunt"))

(define-category HUNT23300
  :mixins (HUNT-35.1)
  :realization (:VERB "hunt"))

(define-category MINE23400
  :mixins (HUNT-35.1)
  :realization (:VERB "mine"))

(define-category POACH23300
  :mixins (HUNT-35.1)
  :realization (:VERB "poach"))

(define-category SCROUNGE24000
  :mixins (HUNT-35.1)
  :realization (:VERB "scrounge"))

(define-category SEEK23200
  :mixins (HUNT-35.1)
  :realization (:VERB "seek"))

(define-category SEEK24000
  :mixins (HUNT-35.1)
  :realization (:VERB "seek"))

(define-category CHAFE23500
  :mixins (HURT-40.8.3-1)
  :realization (:VERB "chafe"))

(define-category STUB22900
  :mixins (HURT-40.8.3-1)
  :realization (:VERB "stub"))

(define-category BREAK22904
  :mixins (HURT-40.8.3-1-1)
  :realization (:VERB "break"))

(define-category BREAK23015
  :mixins (HURT-40.8.3-1-1)
  :realization (:VERB "break"))

(define-category BREAK23509
  :mixins (HURT-40.8.3-1-1)
  :realization (:VERB "break"))

(define-category BREAK23513
  :mixins (HURT-40.8.3-1-1)
  :realization (:VERB "break"))

(define-category CHIP23500
  :mixins (HURT-40.8.3-1-1)
  :realization (:VERB "chip"))

(define-category FRACTURE22900
  :mixins (HURT-40.8.3-1-1)
  :realization (:VERB "fracture"))

(define-category FRACTURE22901
  :mixins (HURT-40.8.3-1-1)
  :realization (:VERB "fracture"))

(define-category FRACTURE22902
  :mixins (HURT-40.8.3-1-1)
  :realization (:VERB "fracture"))

(define-category PULL22900
  :mixins (HURT-40.8.3-1-1)
  :realization (:VERB "pull"))

(define-category RUPTURE23500
  :mixins (HURT-40.8.3-1-1)
  :realization (:VERB "rupture"))

(define-category SPLIT23500
  :mixins (HURT-40.8.3-1-1)
  :realization (:VERB "split"))

(define-category SPLINTER23000
  :mixins (HURT-40.8.3-1-1)
  :realization (:VERB "splinter"))

(define-category SPRAIN22900
  :mixins (HURT-40.8.3-1-1)
  :realization (:VERB "sprain"))

(define-category TURN22900
  :mixins (HURT-40.8.3-1-1)
  :realization (:VERB "turn"))

(define-category TWIST22900
  :mixins (HURT-40.8.3-1-1)
  :realization (:VERB "twist"))

(define-category BITE23500
  :mixins (HURT-40.8.3-2)
  :realization (:VERB "bite"))

(define-category BRUISE23500
  :mixins (HURT-40.8.3-2)
  :realization (:VERB "bruise"))

(define-category BUMP23500
  :mixins (HURT-40.8.3-2)
  :realization (:VERB "bump"))

(define-category BURN23900
  :mixins (HURT-40.8.3-2)
  :realization (:VERB "burn"))

(define-category BURN23002
  :mixins (HURT-40.8.3-2)
  :realization (:VERB "burn"))

(define-category CUT23514
  :mixins (HURT-40.8.3-2)
  :realization (:VERB "cut"))

(define-category HURT22901
  :mixins (HURT-40.8.3-2)
  :realization (:VERB "hurt"))

(define-category INJURE22900
  :mixins (HURT-40.8.3-2)
  :realization (:VERB "injure"))

(define-category NICK23501
  :mixins (HURT-40.8.3-2)
  :realization (:VERB "nick"))

(define-category PRICK23503
  :mixins (HURT-40.8.3-2)
  :realization (:VERB "prick"))

(define-category PRICK23500
  :mixins (HURT-40.8.3-2)
  :realization (:VERB "prick"))

(define-category SCALD23000
  :mixins (HURT-40.8.3-2)
  :realization (:VERB "scald"))

(define-category SCRATCH23900
  :mixins (HURT-40.8.3-2)
  :realization (:VERB "scratch"))

(define-category SCRATCH23500
  :mixins (HURT-40.8.3-2)
  :realization (:VERB "scratch"))

(define-category SKIN23502
  :mixins (HURT-40.8.3-2)
  :realization (:VERB "skin"))

(define-category STRAIN23400
  :mixins (HURT-40.8.3-2)
  :realization (:VERB "strain"))

(define-category WRENCH22900
  :mixins (HURT-40.8.3-2)
  :realization (:VERB "wrench"))

(define-category ADDRESS23203
  :mixins (ILLUSTRATE-25.3)
  :realization (:VERB "address"))

(define-category ADORN23600
  :mixins (ILLUSTRATE-25.3)
  :realization (:VERB "adorn"))

(define-category AUTOGRAPH23200
  :mixins (ILLUSTRATE-25.3)
  :realization (:VERB "autograph"))

(define-category BEAD23500
  :mixins (ILLUSTRATE-25.3)
  :realization (:VERB "bead"))

(define-category BEAD23600
  :mixins (ILLUSTRATE-25.3)
  :realization (:VERB "bead"))

(define-category BRAND24101
  :mixins (ILLUSTRATE-25.3)
  :realization (:VERB "brand"))

(define-category DATE23101
  :mixins (ILLUSTRATE-25.3)
  :realization (:VERB "date"))

(define-category DATE23102
  :mixins (ILLUSTRATE-25.3)
  :realization (:VERB "date"))

(define-category DECORATE23500
  :mixins (ILLUSTRATE-25.3)
  :realization (:VERB "decorate"))

(define-category EMBELLISH23600
  :mixins (ILLUSTRATE-25.3)
  :realization (:VERB "embellish"))

(define-category EMBELLISH23200
  :mixins (ILLUSTRATE-25.3)
  :realization (:VERB "embellish"))

(define-category ENDORSE23200
  :mixins (ILLUSTRATE-25.3)
  :realization (:VERB "endorse"))

(define-category ICE23500
  :mixins (ILLUSTRATE-25.3)
  :realization (:VERB "ice"))

(define-category ILLUMINATE23600
  :mixins (ILLUSTRATE-25.3)
  :realization (:VERB "illuminate"))

(define-category ILLUSTRATE23601
  :mixins (ILLUSTRATE-25.3)
  :realization (:VERB "illustrate"))

(define-category INITIAL23200
  :mixins (ILLUSTRATE-25.3)
  :realization (:VERB "initial"))

(define-category LABEL23500
  :mixins (ILLUSTRATE-25.3)
  :realization (:VERB "label"))

(define-category LETTER23600
  :mixins (ILLUSTRATE-25.3)
  :realization (:VERB "letter"))

(define-category ORNAMENT23600
  :mixins (ILLUSTRATE-25.3)
  :realization (:VERB "ornament"))

(define-category REDECORATE23600
  :mixins (ILLUSTRATE-25.3)
  :realization (:VERB "redecorate"))

(define-category TAG23500
  :mixins (ILLUSTRATE-25.3)
  :realization (:VERB "tag"))

(define-category APPLIQUE23600
  :mixins (IMAGE_IMPRESSION-25.1)
  :realization (:VERB "applique"))

(define-category EMBOSS23500
  :mixins (IMAGE_IMPRESSION-25.1)
  :realization (:VERB "emboss"))

(define-category EMBROIDER23600
  :mixins (IMAGE_IMPRESSION-25.1)
  :realization (:VERB "embroider"))

(define-category ENGRAVE23600
  :mixins (IMAGE_IMPRESSION-25.1)
  :realization (:VERB "engrave"))

(define-category ENGRAVE23500
  :mixins (IMAGE_IMPRESSION-25.1)
  :realization (:VERB "engrave"))

(define-category ETCH23600
  :mixins (IMAGE_IMPRESSION-25.1)
  :realization (:VERB "etch"))

(define-category IMPRINT23500
  :mixins (IMAGE_IMPRESSION-25.1)
  :realization (:VERB "imprint"))

(define-category INCISE23500
  :mixins (IMAGE_IMPRESSION-25.1)
  :realization (:VERB "incise"))

(define-category INGRAIN23500
  :mixins (IMAGE_IMPRESSION-25.1)
  :realization (:VERB "ingrain"))

(define-category INSCRIBE23203
  :mixins (IMAGE_IMPRESSION-25.1)
  :realization (:VERB "inscribe"))

(define-category INSCRIBE23500
  :mixins (IMAGE_IMPRESSION-25.1)
  :realization (:VERB "inscribe"))

(define-category MARK23501
  :mixins (IMAGE_IMPRESSION-25.1)
  :realization (:VERB "mark"))

(define-category MARK23509
  :mixins (IMAGE_IMPRESSION-25.1)
  :realization (:VERB "mark"))

(define-category SIGN24100
  :mixins (IMAGE_IMPRESSION-25.1)
  :realization (:VERB "sign"))

(define-category SIGN23202
  :mixins (IMAGE_IMPRESSION-25.1)
  :realization (:VERB "sign"))

(define-category STAMP23502
  :mixins (IMAGE_IMPRESSION-25.1)
  :realization (:VERB "stamp"))

(define-category STIPPLE23600
  :mixins (IMAGE_IMPRESSION-25.1)
  :realization (:VERB "stipple"))

(define-category TATTOO23600
  :mixins (IMAGE_IMPRESSION-25.1)
  :realization (:VERB "tattoo"))

(define-category TOOL23600
  :mixins (IMAGE_IMPRESSION-25.1)
  :realization (:VERB "tool"))

(define-category IMPLY24202
  :mixins (INDICATE-78)
  :realization (:VERB "imply"))

(define-category IMPLY23201
  :mixins (INDICATE-78)
  :realization (:VERB "imply"))

(define-category IMPLY23200
  :mixins (INDICATE-78)
  :realization (:VERB "imply"))

(define-category PREDICT23201
  :mixins (INDICATE-78)
  :realization (:VERB "predict"))

(define-category PROGNOSTICATE23201
  :mixins (INDICATE-78)
  :realization (:VERB "prognosticate"))

(define-category FOREBODE23200
  :mixins (INDICATE-78)
  :realization (:VERB "forebode"))

(define-category ANTICIPATE23200
  :mixins (INDICATE-78)
  :realization (:VERB "anticipate"))

(define-category EXPLAIN23201
  :mixins (INDICATE-78-1)
  :realization (:VERB "explain"))

(define-category INDICATE23203
  :mixins (INDICATE-78-1)
  :realization (:VERB "indicate"))

(define-category SAY23209
  :mixins (INDICATE-78-1)
  :realization (:VERB "say"))

(define-category DEMONSTRATE23100
  :mixins (INDICATE-78-1-1)
  :realization (:VERB "demonstrate"))

(define-category ESTABLISH23100
  :mixins (INDICATE-78-1-1)
  :realization (:VERB "establish"))

(define-category PROVE23100
  :mixins (INDICATE-78-1-1)
  :realization (:VERB "prove"))

(define-category SHOW23100
  :mixins (INDICATE-78-1-1)
  :realization (:VERB "show"))

(define-category SUGGEST23201
  :mixins (INDICATE-78-1-1)
  :realization (:VERB "suggest"))

(define-category SUGGEST23202
  :mixins (INDICATE-78-1-1)
  :realization (:VERB "suggest"))

(define-category BUZZ23200
  :mixins (INITIATE_COMMUNICATION-37.4.2)
  :realization (:VERB "buzz"))

(define-category GET23203
  :mixins (INITIATE_COMMUNICATION-37.4.2)
  :realization (:VERB "get"))

(define-category GET23203
  :mixins (INITIATE_COMMUNICATION-37.4.2)
  :realization (:VERB "get"))

(define-category GET23203
  :mixins (INITIATE_COMMUNICATION-37.4.2)
  :realization (:VERB "get"))

(define-category PING23201
  :mixins (INITIATE_COMMUNICATION-37.4.2)
  :realization (:VERB "ping"))

(define-category REACH23200
  :mixins (INITIATE_COMMUNICATION-37.4.2)
  :realization (:VERB "reach"))

(define-category ASK23204
  :mixins (INQUIRE-37.1.2)
  :realization (:VERB "ask"))

(define-category ASK23202
  :mixins (INQUIRE-37.1.2)
  :realization (:VERB "ask"))

(define-category ASK23200
  :mixins (INQUIRE-37.1.2)
  :realization (:VERB "ask"))

(define-category ENQUIRE23200
  :mixins (INQUIRE-37.1.2)
  :realization (:VERB "enquire"))

(define-category INQUIRE23100
  :mixins (INQUIRE-37.1.2)
  :realization (:VERB "inquire"))

(define-category INQUIRE23201
  :mixins (INQUIRE-37.1.2)
  :realization (:VERB "inquire"))

(define-category CONSULT23201
  :mixins (INQUIRE-37.1.2)
  :realization (:VERB "consult"))

(define-category CONSULT23202
  :mixins (INQUIRE-37.1.2)
  :realization (:VERB "consult"))

(define-category PRY23900
  :mixins (INQUIRE-37.1.2)
  :realization (:VERB "pry"))

(define-category CABLE23200
  :mixins (INSTR_COMMUNICATION-37.4.1)
  :realization (:VERB "cable"))

(define-category E-MAIL23200
  :mixins (INSTR_COMMUNICATION-37.4.1)
  :realization (:VERB "e-mail"))

(define-category FAX23200
  :mixins (INSTR_COMMUNICATION-37.4.1)
  :realization (:VERB "fax"))

(define-category NETMAIL23200
  :mixins (INSTR_COMMUNICATION-37.4.1)
  :realization (:VERB "netmail"))

(define-category PHONE23200
  :mixins (INSTR_COMMUNICATION-37.4.1)
  :realization (:VERB "phone"))

(define-category RADIO23200
  :mixins (INSTR_COMMUNICATION-37.4.1)
  :realization (:VERB "radio"))

(define-category RELAY23200
  :mixins (INSTR_COMMUNICATION-37.4.1)
  :realization (:VERB "relay"))

(define-category SATELLITE23200
  :mixins (INSTR_COMMUNICATION-37.4.1)
  :realization (:VERB "satellite"))

(define-category SEMAPHORE23200
  :mixins (INSTR_COMMUNICATION-37.4.1)
  :realization (:VERB "semaphore"))

(define-category SEMAPHORE23201
  :mixins (INSTR_COMMUNICATION-37.4.1)
  :realization (:VERB "semaphore"))

(define-category SIGN23204
  :mixins (INSTR_COMMUNICATION-37.4.1)
  :realization (:VERB "sign"))

(define-category SIGN23201
  :mixins (INSTR_COMMUNICATION-37.4.1)
  :realization (:VERB "sign"))

(define-category SIGNAL23200
  :mixins (INSTR_COMMUNICATION-37.4.1)
  :realization (:VERB "signal"))

(define-category TELECAST23200
  :mixins (INSTR_COMMUNICATION-37.4.1)
  :realization (:VERB "telecast"))

(define-category TELEGRAPH23200
  :mixins (INSTR_COMMUNICATION-37.4.1)
  :realization (:VERB "telegraph"))

(define-category TELEPHONE23200
  :mixins (INSTR_COMMUNICATION-37.4.1)
  :realization (:VERB "telephone"))

(define-category TELEX23200
  :mixins (INSTR_COMMUNICATION-37.4.1)
  :realization (:VERB "telex"))

(define-category WIRE23200
  :mixins (INSTR_COMMUNICATION-37.4.1)
  :realization (:VERB "wire"))

(define-category INTEND23100
  :mixins (INTEND-61.2-1-1)
  :realization (:VERB "intend"))

(define-category GO_STEADY24100
  :mixins (INTERACT-36.6)
  :realization (:VERB "go_steady"))

(define-category GO_OUT24100
  :mixins (INTERACT-36.6)
  :realization (:VERB "go_out"))

(define-category INTERACT24100
  :mixins (INTERACT-36.6)
  :realization (:VERB "interact"))

(define-category SPLIT_UP24101
  :mixins (INTERACT-36.6)
  :realization (:VERB "split_up"))

(define-category CROSS_EXAMINE23200
  :mixins (INTERROGATE-37.1.3)
  :realization (:VERB "cross_examine"))

(define-category QUESTION23200
  :mixins (INTERROGATE-37.1.3)
  :realization (:VERB "question"))

(define-category QUESTION23203
  :mixins (INTERROGATE-37.1.3)
  :realization (:VERB "question"))

(define-category INTERVIEW23200
  :mixins (INTERROGATE-37.1.3)
  :realization (:VERB "interview"))

(define-category INTERROGATE23200
  :mixins (INTERROGATE-37.1.3)
  :realization (:VERB "interrogate"))

(define-category CANVASS24100
  :mixins (INVESTIGATE-35.4)
  :realization (:VERB "canvass"))

(define-category CANVASS24101
  :mixins (INVESTIGATE-35.4)
  :realization (:VERB "canvass"))

(define-category EXPLORE23102
  :mixins (INVESTIGATE-35.4)
  :realization (:VERB "explore"))

(define-category EXAMINE23201
  :mixins (INVESTIGATE-35.4)
  :realization (:VERB "examine"))

(define-category EXAMINE23900
  :mixins (INVESTIGATE-35.4)
  :realization (:VERB "examine"))

(define-category EXAMINE23100
  :mixins (INVESTIGATE-35.4)
  :realization (:VERB "examine"))

(define-category FRISK23500
  :mixins (INVESTIGATE-35.4)
  :realization (:VERB "frisk"))

(define-category INSPECT23800
  :mixins (INVESTIGATE-35.4)
  :realization (:VERB "inspect"))

(define-category INSPECT23900
  :mixins (INVESTIGATE-35.4)
  :realization (:VERB "inspect"))

(define-category INVESTIGATE23201
  :mixins (INVESTIGATE-35.4)
  :realization (:VERB "investigate"))

(define-category INVESTIGATE23200
  :mixins (INVESTIGATE-35.4)
  :realization (:VERB "investigate"))

(define-category MONITOR23900
  :mixins (INVESTIGATE-35.4)
  :realization (:VERB "monitor"))

(define-category OBSERVE24100
  :mixins (INVESTIGATE-35.4)
  :realization (:VERB "observe"))

(define-category PICKET24100
  :mixins (INVESTIGATE-35.4)
  :realization (:VERB "picket"))

(define-category QUIZ23200
  :mixins (INVESTIGATE-35.4)
  :realization (:VERB "quiz"))

(define-category RAID24100
  :mixins (INVESTIGATE-35.4)
  :realization (:VERB "raid"))

(define-category RANSACK23502
  :mixins (INVESTIGATE-35.4)
  :realization (:VERB "ransack"))

(define-category RANSACK24000
  :mixins (INVESTIGATE-35.4)
  :realization (:VERB "ransack"))

(define-category RIFFLE23910
  :mixins (INVESTIGATE-35.4)
  :realization (:VERB "riffle"))

(define-category SCAN23500
  :mixins (INVESTIGATE-35.4)
  :realization (:VERB "scan"))

(define-category SCAN23900
  :mixins (INVESTIGATE-35.4)
  :realization (:VERB "scan"))

(define-category SCAN23901
  :mixins (INVESTIGATE-35.4)
  :realization (:VERB "scan"))

(define-category SCRUTINIZE23100
  :mixins (INVESTIGATE-35.4)
  :realization (:VERB "scrutinize"))

(define-category SCRUTINIZE23900
  :mixins (INVESTIGATE-35.4)
  :realization (:VERB "scrutinize"))

(define-category SURVEIL23900
  :mixins (INVESTIGATE-35.4)
  :realization (:VERB "surveil"))

(define-category SURVEY23913
  :mixins (INVESTIGATE-35.4)
  :realization (:VERB "survey"))

(define-category SURVEY23900
  :mixins (INVESTIGATE-35.4)
  :realization (:VERB "survey"))

(define-category SURVEY23100
  :mixins (INVESTIGATE-35.4)
  :realization (:VERB "survey"))

(define-category TAP23900
  :mixins (INVESTIGATE-35.4)
  :realization (:VERB "tap"))

(define-category TEST24101
  :mixins (INVESTIGATE-35.4)
  :realization (:VERB "test"))

(define-category INVOLVE24204
  :mixins (INVOLVE-107.1)
  :realization (:VERB "involve"))

(define-category ENGAGE24001
  :mixins (INVOLVE-107.1)
  :realization (:VERB "engage"))

(define-category INCLUDE23000
  :mixins (INVOLVE-107.1)
  :realization (:VERB "include"))

(define-category INCLUDE24103
  :mixins (INVOLVE-107.1)
  :realization (:VERB "include"))

(define-category ENROLL24100
  :mixins (INVOLVE-107.1)
  :realization (:VERB "enroll"))

(define-category ABUSE23200
  :mixins (JUDGMENT-33.1)
  :realization (:VERB "abuse"))

(define-category ABUSE23000
  :mixins (JUDGMENT-33.1)
  :realization (:VERB "abuse"))

(define-category ABUSE24100
  :mixins (JUDGMENT-33.1)
  :realization (:VERB "abuse"))

(define-category BACKBITE23200
  :mixins (JUDGMENT-33.1)
  :realization (:VERB "backbite"))

(define-category SLANG23200
  :mixins (JUDGMENT-33.1)
  :realization (:VERB "slang"))

(define-category APPLAUD23200
  :mixins (JUDGMENT-33.1-1)
  :realization (:VERB "applaud"))

(define-category APPROVE23100
  :mixins (JUDGMENT-33.1-1)
  :realization (:VERB "approve"))

(define-category APPROVE23200
  :mixins (JUDGMENT-33.1-1)
  :realization (:VERB "approve"))

(define-category BERATE23200
  :mixins (JUDGMENT-33.1-1)
  :realization (:VERB "berate"))

(define-category BLESS24000
  :mixins (JUDGMENT-33.1-1)
  :realization (:VERB "bless"))

(define-category BLESS23200
  :mixins (JUDGMENT-33.1-1)
  :realization (:VERB "bless"))

(define-category CALUMNIATE23200
  :mixins (JUDGMENT-33.1-1)
  :realization (:VERB "calumniate"))

(define-category CASTIGATE23200
  :mixins (JUDGMENT-33.1-1)
  :realization (:VERB "castigate"))

(define-category CELEBRATE24102
  :mixins (JUDGMENT-33.1-1)
  :realization (:VERB "celebrate"))

(define-category CENSURE23200
  :mixins (JUDGMENT-33.1-1)
  :realization (:VERB "censure"))

(define-category CHASTEN23200
  :mixins (JUDGMENT-33.1-1)
  :realization (:VERB "chasten"))

(define-category CHASTISE23200
  :mixins (JUDGMENT-33.1-1)
  :realization (:VERB "chastise"))

(define-category CHIDE23200
  :mixins (JUDGMENT-33.1-1)
  :realization (:VERB "chide"))

(define-category CITE23201
  :mixins (JUDGMENT-33.1-1)
  :realization (:VERB "cite"))

(define-category COMMEND23202
  :mixins (JUDGMENT-33.1-1)
  :realization (:VERB "commend"))

(define-category COMMEND23200
  :mixins (JUDGMENT-33.1-1)
  :realization (:VERB "commend"))

(define-category COMPLIMENT23201
  :mixins (JUDGMENT-33.1-1)
  :realization (:VERB "compliment"))

(define-category COMPLIMENT23200
  :mixins (JUDGMENT-33.1-1)
  :realization (:VERB "compliment"))

(define-category CONDEMN23200
  :mixins (JUDGMENT-33.1-1)
  :realization (:VERB "condemn"))

(define-category CONGRATULATE23211
  :mixins (JUDGMENT-33.1-1)
  :realization (:VERB "congratulate"))

(define-category CONGRATULATE23700
  :mixins (JUDGMENT-33.1-1)
  :realization (:VERB "congratulate"))

(define-category CONGRATULATE23201
  :mixins (JUDGMENT-33.1-1)
  :realization (:VERB "congratulate"))

(define-category CONGRATULATE23200
  :mixins (JUDGMENT-33.1-1)
  :realization (:VERB "congratulate"))

(define-category CRITICIZE23300
  :mixins (JUDGMENT-33.1-1)
  :realization (:VERB "criticize"))

(define-category CRITICIZE23200
  :mixins (JUDGMENT-33.1-1)
  :realization (:VERB "criticize"))

(define-category DECRY23200
  :mixins (JUDGMENT-33.1-1)
  :realization (:VERB "decry"))

(define-category DEFAME23200
  :mixins (JUDGMENT-33.1-1)
  :realization (:VERB "defame"))

(define-category DENIGRATE23201
  :mixins (JUDGMENT-33.1-1)
  :realization (:VERB "denigrate"))

(define-category DENIGRATE23200
  :mixins (JUDGMENT-33.1-1)
  :realization (:VERB "denigrate"))

(define-category DENOUNCE24100
  :mixins (JUDGMENT-33.1-1)
  :realization (:VERB "denounce"))

(define-category DENOUNCE23200
  :mixins (JUDGMENT-33.1-1)
  :realization (:VERB "denounce"))

(define-category DEPRECATE23200
  :mixins (JUDGMENT-33.1-1)
  :realization (:VERB "deprecate"))

(define-category DEPRECATE23201
  :mixins (JUDGMENT-33.1-1)
  :realization (:VERB "deprecate"))

(define-category DERIDE23200
  :mixins (JUDGMENT-33.1-1)
  :realization (:VERB "deride"))

(define-category DISPARAGE23200
  :mixins (JUDGMENT-33.1-1)
  :realization (:VERB "disparage"))

(define-category EULOGIZE23200
  :mixins (JUDGMENT-33.1-1)
  :realization (:VERB "eulogize"))

(define-category EXCUSE23202
  :mixins (JUDGMENT-33.1-1)
  :realization (:VERB "excuse"))

(define-category EXCUSE23201
  :mixins (JUDGMENT-33.1-1)
  :realization (:VERB "excuse"))

(define-category EXTOL23200
  :mixins (JUDGMENT-33.1-1)
  :realization (:VERB "extol"))

(define-category FAULT23200
  :mixins (JUDGMENT-33.1-1)
  :realization (:VERB "fault"))

(define-category FELICITATE23200
  :mixins (JUDGMENT-33.1-1)
  :realization (:VERB "felicitate"))

(define-category FORGIVE23200
  :mixins (JUDGMENT-33.1-1)
  :realization (:VERB "forgive"))

(define-category GREET23100
  :mixins (JUDGMENT-33.1-1)
  :realization (:VERB "greet"))

(define-category GREET23200
  :mixins (JUDGMENT-33.1-1)
  :realization (:VERB "greet"))

(define-category HONOR24101
  :mixins (JUDGMENT-33.1-1)
  :realization (:VERB "honor"))

(define-category HONOR24100
  :mixins (JUDGMENT-33.1-1)
  :realization (:VERB "honor"))

(define-category INSULT23200
  :mixins (JUDGMENT-33.1-1)
  :realization (:VERB "insult"))

(define-category LAMBASTE23200
  :mixins (JUDGMENT-33.1-1)
  :realization (:VERB "lambaste"))

(define-category LAMPOON23200
  :mixins (JUDGMENT-33.1-1)
  :realization (:VERB "lampoon"))

(define-category MALIGN23200
  :mixins (JUDGMENT-33.1-1)
  :realization (:VERB "malign"))

(define-category MOCK23200
  :mixins (JUDGMENT-33.1-1)
  :realization (:VERB "mock"))

(define-category PARDON23200
  :mixins (JUDGMENT-33.1-1)
  :realization (:VERB "pardon"))

(define-category PARDON23201
  :mixins (JUDGMENT-33.1-1)
  :realization (:VERB "pardon"))

(define-category REBUKE23200
  :mixins (JUDGMENT-33.1-1)
  :realization (:VERB "rebuke"))

(define-category RECOMMEND23200
  :mixins (JUDGMENT-33.1-1)
  :realization (:VERB "recommend"))

(define-category REPROACH23200
  :mixins (JUDGMENT-33.1-1)
  :realization (:VERB "reproach"))

(define-category REPROVE23200
  :mixins (JUDGMENT-33.1-1)
  :realization (:VERB "reprove"))

(define-category REPUDIATE23200
  :mixins (JUDGMENT-33.1-1)
  :realization (:VERB "repudiate"))

(define-category REVILE23200
  :mixins (JUDGMENT-33.1-1)
  :realization (:VERB "revile"))

(define-category REWARD24101
  :mixins (JUDGMENT-33.1-1)
  :realization (:VERB "reward"))

(define-category RIDICULE23200
  :mixins (JUDGMENT-33.1-1)
  :realization (:VERB "ridicule"))

(define-category SALUTE23400
  :mixins (JUDGMENT-33.1-1)
  :realization (:VERB "salute"))

(define-category SALUTE23203
  :mixins (JUDGMENT-33.1-1)
  :realization (:VERB "salute"))

(define-category SATIRIZE23200
  :mixins (JUDGMENT-33.1-1)
  :realization (:VERB "satirize"))

(define-category SCOLD23200
  :mixins (JUDGMENT-33.1-1)
  :realization (:VERB "scold"))

(define-category SCORN23700
  :mixins (JUDGMENT-33.1-1)
  :realization (:VERB "scorn"))

(define-category SHAME23700
  :mixins (JUDGMENT-33.1-1)
  :realization (:VERB "shame"))

(define-category SHAME24100
  :mixins (JUDGMENT-33.1-1)
  :realization (:VERB "shame"))

(define-category SNUB23200
  :mixins (JUDGMENT-33.1-1)
  :realization (:VERB "snub"))

(define-category SNUB23201
  :mixins (JUDGMENT-33.1-1)
  :realization (:VERB "snub"))

(define-category STIGMATIZE24100
  :mixins (JUDGMENT-33.1-1)
  :realization (:VERB "stigmatize"))

(define-category THANK23200
  :mixins (JUDGMENT-33.1-1)
  :realization (:VERB "thank"))

(define-category TOAST23400
  :mixins (JUDGMENT-33.1-1)
  :realization (:VERB "toast"))

(define-category UPBRAID23200
  :mixins (JUDGMENT-33.1-1)
  :realization (:VERB "upbraid"))

(define-category VILIFY23200
  :mixins (JUDGMENT-33.1-1)
  :realization (:VERB "vilify"))

(define-category WELCOME24000
  :mixins (JUDGMENT-33.1-1)
  :realization (:VERB "welcome"))

(define-category WRITE_UP23202
  :mixins (JUDGMENT-33.1-1)
  :realization (:VERB "write_up"))

(define-category ACCLAIM23200
  :mixins (JUDGMENT-33.1-1-1)
  :realization (:VERB "acclaim"))

(define-category HAIL23202
  :mixins (JUDGMENT-33.1-1-1)
  :realization (:VERB "hail"))

(define-category HERALD23201
  :mixins (JUDGMENT-33.1-1-1)
  :realization (:VERB "herald"))

(define-category JUDGE23200
  :mixins (JUDGMENT-33.1-1-1)
  :realization (:VERB "judge"))

(define-category LAUD23200
  :mixins (JUDGMENT-33.1-1-1)
  :realization (:VERB "laud"))

(define-category PRAISE23200
  :mixins (JUDGMENT-33.1-1-1)
  :realization (:VERB "praise"))

(define-category HOARD24001
  :mixins (KEEP-15.2)
  :realization (:VERB "hoard"))

(define-category HOLD24002
  :mixins (KEEP-15.2)
  :realization (:VERB "hold"))

(define-category HOLD24200
  :mixins (KEEP-15.2)
  :realization (:VERB "hold"))

(define-category KEEP24010
  :mixins (KEEP-15.2)
  :realization (:VERB "keep"))

(define-category KEEP24012
  :mixins (KEEP-15.2)
  :realization (:VERB "keep"))

(define-category KEEP24013
  :mixins (KEEP-15.2)
  :realization (:VERB "keep"))

(define-category LEAVE23102
  :mixins (KEEP-15.2)
  :realization (:VERB "leave"))

(define-category LEAVE24006
  :mixins (KEEP-15.2)
  :realization (:VERB "leave"))

(define-category STORE24002
  :mixins (KEEP-15.2)
  :realization (:VERB "store"))

(define-category STORE24000
  :mixins (KEEP-15.2)
  :realization (:VERB "store"))

(define-category STOCK24000
  :mixins (KEEP-15.2)
  :realization (:VERB "stock"))

(define-category STOCKPILE24000
  :mixins (KEEP-15.2)
  :realization (:VERB "stockpile"))

(define-category BALL23500
  :mixins (KNEAD-26.5)
  :realization (:VERB "ball"))

(define-category BEAT23600
  :mixins (KNEAD-26.5)
  :realization (:VERB "beat"))

(define-category BEND23500
  :mixins (KNEAD-26.5)
  :realization (:VERB "bend"))

(define-category COIL23500
  :mixins (KNEAD-26.5)
  :realization (:VERB "coil"))

(define-category COLLECT23500
  :mixins (KNEAD-26.5)
  :realization (:VERB "collect"))

(define-category COMPRESS23500
  :mixins (KNEAD-26.5)
  :realization (:VERB "compress"))

(define-category COMPRESS23501
  :mixins (KNEAD-26.5)
  :realization (:VERB "compress"))

(define-category FOLD23010
  :mixins (KNEAD-26.5)
  :realization (:VERB "fold"))

(define-category FOLD23500
  :mixins (KNEAD-26.5)
  :realization (:VERB "fold"))

(define-category FLEX23502
  :mixins (KNEAD-26.5)
  :realization (:VERB "flex"))

(define-category FLUX23001
  :mixins (KNEAD-26.5)
  :realization (:VERB "flux"))

(define-category KNEAD23500
  :mixins (KNEAD-26.5)
  :realization (:VERB "knead"))

(define-category MELT23000
  :mixins (KNEAD-26.5)
  :realization (:VERB "melt"))

(define-category MELT23001
  :mixins (KNEAD-26.5)
  :realization (:VERB "melt"))

(define-category SHAKE23800
  :mixins (KNEAD-26.5)
  :realization (:VERB "shake"))

(define-category SQUASH23500
  :mixins (KNEAD-26.5)
  :realization (:VERB "squash"))

(define-category SQUEEZE23505
  :mixins (KNEAD-26.5)
  :realization (:VERB "squeeze"))

(define-category TWIRL23801
  :mixins (KNEAD-26.5)
  :realization (:VERB "twirl"))

(define-category TWIST23501
  :mixins (KNEAD-26.5)
  :realization (:VERB "twist"))

(define-category TWIST23502
  :mixins (KNEAD-26.5)
  :realization (:VERB "twist"))

(define-category WAD23501
  :mixins (KNEAD-26.5)
  :realization (:VERB "wad"))

(define-category WHIP23501
  :mixins (KNEAD-26.5)
  :realization (:VERB "whip"))

(define-category WIND23502
  :mixins (KNEAD-26.5)
  :realization (:VERB "wind"))

(define-category WORK23500
  :mixins (KNEAD-26.5)
  :realization (:VERB "work"))

(define-category WORK23612
  :mixins (KNEAD-26.5)
  :realization (:VERB "work"))

(define-category CRAM23000
  :mixins (LEARN-14-1)
  :realization (:VERB "cram"))

(define-category CRAM23100
  :mixins (LEARN-14-1)
  :realization (:VERB "cram"))

(define-category READ23104
  :mixins (LEARN-14-1)
  :realization (:VERB "read"))

(define-category READ23100
  :mixins (LEARN-14-1)
  :realization (:VERB "read"))

(define-category RELEARN23100
  :mixins (LEARN-14-1)
  :realization (:VERB "relearn"))

(define-category STUDY23101
  :mixins (LEARN-14-1)
  :realization (:VERB "study"))

(define-category STUDY23100
  :mixins (LEARN-14-1)
  :realization (:VERB "study"))

(define-category STUDY23102
  :mixins (LEARN-14-1)
  :realization (:VERB "study"))

(define-category LEARN23103
  :mixins (LEARN-14-1)
  :realization (:VERB "learn"))

(define-category LEARN23101
  :mixins (LEARN-14-1)
  :realization (:VERB "learn"))

(define-category LEARN23100
  :mixins (LEARN-14-1)
  :realization (:VERB "learn"))

(define-category ASSIMILATE23100
  :mixins (LEARN-14-2)
  :realization (:VERB "assimilate"))

(define-category MEMORIZE23100
  :mixins (LEARN-14-2)
  :realization (:VERB "memorize"))

(define-category LEARN23103
  :mixins (LEARN-14-2-1)
  :realization (:VERB "learn"))

(define-category LEARN23101
  :mixins (LEARN-14-2-1)
  :realization (:VERB "learn"))

(define-category LEARN23100
  :mixins (LEARN-14-2-1)
  :realization (:VERB "learn"))

(define-category READ23104
  :mixins (LEARN-14-2-1)
  :realization (:VERB "read"))

(define-category READ23100
  :mixins (LEARN-14-2-1)
  :realization (:VERB "read"))

(define-category ABANDON23800
  :mixins (LEAVE-51.2)
  :realization (:VERB "abandon"))

(define-category ABANDON24000
  :mixins (LEAVE-51.2)
  :realization (:VERB "abandon"))

(define-category DESERT23100
  :mixins (LEAVE-51.2-1)
  :realization (:VERB "desert"))

(define-category LEAVE23800
  :mixins (LEAVE-51.2-1)
  :realization (:VERB "leave"))

(define-category GUSH23200
  :mixins (LECTURE-37.11-1)
  :realization (:VERB "gush"))

(define-category LECTURE23201
  :mixins (LECTURE-37.11-1)
  :realization (:VERB "lecture"))

(define-category MORALIZE23200
  :mixins (LECTURE-37.11-1)
  :realization (:VERB "moralize"))

(define-category PREACH23200
  :mixins (LECTURE-37.11-1)
  :realization (:VERB "preach"))

(define-category PREACH23202
  :mixins (LECTURE-37.11-1)
  :realization (:VERB "preach"))

(define-category RAVE23200
  :mixins (LECTURE-37.11-1)
  :realization (:VERB "rave"))

(define-category REMARK23201
  :mixins (LECTURE-37.11-1)
  :realization (:VERB "remark"))

(define-category REMARK23200
  :mixins (LECTURE-37.11-1)
  :realization (:VERB "remark"))

(define-category RHAPSODIZE23200
  :mixins (LECTURE-37.11-1)
  :realization (:VERB "rhapsodize"))

(define-category SPEAK23200
  :mixins (LECTURE-37.11-1)
  :realization (:VERB "speak"))

(define-category SPEAK_OUT23200
  :mixins (LECTURE-37.11-1)
  :realization (:VERB "speak_out"))

(define-category SPEAK_UP23200
  :mixins (LECTURE-37.11-1)
  :realization (:VERB "speak_up"))

(define-category TALK23201
  :mixins (LECTURE-37.11-1)
  :realization (:VERB "talk"))

(define-category TESTIFY23202
  :mixins (LECTURE-37.11-1)
  :realization (:VERB "testify"))

(define-category TESTIFY23201
  :mixins (LECTURE-37.11-1)
  :realization (:VERB "testify"))

(define-category THEORIZE23101
  :mixins (LECTURE-37.11-1)
  :realization (:VERB "theorize"))

(define-category THEORIZE23102
  :mixins (LECTURE-37.11-1)
  :realization (:VERB "theorize"))

(define-category WRITE23200
  :mixins (LECTURE-37.11-1)
  :realization (:VERB "write"))

(define-category WRITE23600
  :mixins (LECTURE-37.11-1)
  :realization (:VERB "write"))

(define-category PONTIFICATE23200
  :mixins (LECTURE-37.11-1)
  :realization (:VERB "pontificate"))

(define-category ELABORATE23200
  :mixins (LECTURE-37.11-1-1)
  :realization (:VERB "elaborate"))

(define-category COMMENT23201
  :mixins (LECTURE-37.11-1-1)
  :realization (:VERB "comment"))

(define-category COMMENT23210
  :mixins (LECTURE-37.11-1-1)
  :realization (:VERB "comment"))

(define-category COMMENT23200
  :mixins (LECTURE-37.11-1-1)
  :realization (:VERB "comment"))

(define-category DWELL23100
  :mixins (LECTURE-37.11-2)
  :realization (:VERB "dwell"))

(define-category LET23202
  :mixins (LET-64.2)
  :realization (:VERB "let"))

(define-category LET24100
  :mixins (LET-64.2)
  :realization (:VERB "let"))

(define-category BEAM24303
  :mixins (LIGHT_EMISSION-43.1)
  :realization (:VERB "beam"))

(define-category BLINK23900
  :mixins (LIGHT_EMISSION-43.1)
  :realization (:VERB "blink"))

(define-category BURN24301
  :mixins (LIGHT_EMISSION-43.1)
  :realization (:VERB "burn"))

(define-category FLAME24300
  :mixins (LIGHT_EMISSION-43.1)
  :realization (:VERB "flame"))

(define-category FLARE24301
  :mixins (LIGHT_EMISSION-43.1)
  :realization (:VERB "flare"))

(define-category FLARE24300
  :mixins (LIGHT_EMISSION-43.1)
  :realization (:VERB "flare"))

(define-category FLASH23004
  :mixins (LIGHT_EMISSION-43.1)
  :realization (:VERB "flash"))

(define-category FLASH23900
  :mixins (LIGHT_EMISSION-43.1)
  :realization (:VERB "flash"))

(define-category FLICKER23900
  :mixins (LIGHT_EMISSION-43.1)
  :realization (:VERB "flicker"))

(define-category FLICKER24300
  :mixins (LIGHT_EMISSION-43.1)
  :realization (:VERB "flicker"))

(define-category FLICKER23800
  :mixins (LIGHT_EMISSION-43.1)
  :realization (:VERB "flicker"))

(define-category GLARE23901
  :mixins (LIGHT_EMISSION-43.1)
  :realization (:VERB "glare"))

(define-category GLARE24301
  :mixins (LIGHT_EMISSION-43.1)
  :realization (:VERB "glare"))

(define-category GLEAM23900
  :mixins (LIGHT_EMISSION-43.1)
  :realization (:VERB "gleam"))

(define-category GLEAM23901
  :mixins (LIGHT_EMISSION-43.1)
  :realization (:VERB "gleam"))

(define-category GLIMMER23900
  :mixins (LIGHT_EMISSION-43.1)
  :realization (:VERB "glimmer"))

(define-category GLINT23900
  :mixins (LIGHT_EMISSION-43.1)
  :realization (:VERB "glint"))

(define-category GLISTEN23900
  :mixins (LIGHT_EMISSION-43.1)
  :realization (:VERB "glisten"))

(define-category GLITTER23900
  :mixins (LIGHT_EMISSION-43.1)
  :realization (:VERB "glitter"))

(define-category GLOW24300
  :mixins (LIGHT_EMISSION-43.1)
  :realization (:VERB "glow"))

(define-category GLOW23900
  :mixins (LIGHT_EMISSION-43.1)
  :realization (:VERB "glow"))

(define-category INCANDESCE23000
  :mixins (LIGHT_EMISSION-43.1)
  :realization (:VERB "incandesce"))

(define-category INCANDESCE23001
  :mixins (LIGHT_EMISSION-43.1)
  :realization (:VERB "incandesce"))

(define-category SCINTILLATE24300
  :mixins (LIGHT_EMISSION-43.1)
  :realization (:VERB "scintillate"))

(define-category SHIMMER24300
  :mixins (LIGHT_EMISSION-43.1)
  :realization (:VERB "shimmer"))

(define-category SHINE24200
  :mixins (LIGHT_EMISSION-43.1)
  :realization (:VERB "shine"))

(define-category SHINE23901
  :mixins (LIGHT_EMISSION-43.1)
  :realization (:VERB "shine"))

(define-category SHINE24300
  :mixins (LIGHT_EMISSION-43.1)
  :realization (:VERB "shine"))

(define-category SHINE24301
  :mixins (LIGHT_EMISSION-43.1)
  :realization (:VERB "shine"))

(define-category SPARKLE24300
  :mixins (LIGHT_EMISSION-43.1)
  :realization (:VERB "sparkle"))

(define-category TWINKLE24300
  :mixins (LIGHT_EMISSION-43.1)
  :realization (:VERB "twinkle"))

(define-category TWINKLE23900
  :mixins (LIGHT_EMISSION-43.1)
  :realization (:VERB "twinkle"))

(define-category CONFINE23000
  :mixins (LIMIT-76)
  :realization (:VERB "confine"))

(define-category LIMIT23001
  :mixins (LIMIT-76)
  :realization (:VERB "limit"))

(define-category REDUCE23000
  :mixins (LIMIT-76)
  :realization (:VERB "reduce"))

(define-category RESTRICT23000
  :mixins (LIMIT-76)
  :realization (:VERB "restrict"))

(define-category RESTRAIN23000
  :mixins (LIMIT-76)
  :realization (:VERB "restrain"))

(define-category DALLY23800
  :mixins (LINGER-53.1)
  :realization (:VERB "dally"))

(define-category DAWDLE23804
  :mixins (LINGER-53.1)
  :realization (:VERB "dawdle"))

(define-category DAWDLE23800
  :mixins (LINGER-53.1)
  :realization (:VERB "dawdle"))

(define-category DITHER23701
  :mixins (LINGER-53.1)
  :realization (:VERB "dither"))

(define-category HESITATE24201
  :mixins (LINGER-53.1)
  :realization (:VERB "hesitate"))

(define-category HESITATE24200
  :mixins (LINGER-53.1)
  :realization (:VERB "hesitate"))

(define-category LINGER23800
  :mixins (LINGER-53.1)
  :realization (:VERB "linger"))

(define-category LINGER23801
  :mixins (LINGER-53.1)
  :realization (:VERB "linger"))

(define-category LINGER24200
  :mixins (LINGER-53.1)
  :realization (:VERB "linger"))

(define-category LOAF24201
  :mixins (LINGER-53.1)
  :realization (:VERB "loaf"))

(define-category LOITER24200
  :mixins (LINGER-53.1)
  :realization (:VERB "loiter"))

(define-category PAUSE23201
  :mixins (LINGER-53.1)
  :realization (:VERB "pause"))

(define-category PAUSE24200
  :mixins (LINGER-53.1)
  :realization (:VERB "pause"))

(define-category POTTER23501
  :mixins (LINGER-53.1)
  :realization (:VERB "potter"))

(define-category PROCRASTINATE24201
  :mixins (LINGER-53.1)
  :realization (:VERB "procrastinate"))

(define-category PROCRASTINATE24200
  :mixins (LINGER-53.1)
  :realization (:VERB "procrastinate"))

(define-category PUTTER23500
  :mixins (LINGER-53.1)
  :realization (:VERB "putter"))

(define-category TARRY23800
  :mixins (LINGER-53.1)
  :realization (:VERB "tarry"))

(define-category TARRY24200
  :mixins (LINGER-53.1)
  :realization (:VERB "tarry"))

(define-category DELAY24200
  :mixins (LINGER-53.1-1)
  :realization (:VERB "delay"))

(define-category SCRUPLE23700
  :mixins (LINGER-53.1-1)
  :realization (:VERB "scruple"))

(define-category SCRUPLE24200
  :mixins (LINGER-53.1-1)
  :realization (:VERB "scruple"))

(define-category STALL23000
  :mixins (LINGER-53.1-1)
  :realization (:VERB "stall"))

(define-category STALL24200
  :mixins (LINGER-53.1-1)
  :realization (:VERB "stall"))

(define-category BARRACK24200
  :mixins (LODGE-46)
  :realization (:VERB "barrack"))

(define-category BIVOUAC24200
  :mixins (LODGE-46)
  :realization (:VERB "bivouac"))

(define-category BOARD23401
  :mixins (LODGE-46)
  :realization (:VERB "board"))

(define-category BOARD24200
  :mixins (LODGE-46)
  :realization (:VERB "board"))

(define-category BUNK24000
  :mixins (LODGE-46)
  :realization (:VERB "bunk"))

(define-category CAMP24200
  :mixins (LODGE-46)
  :realization (:VERB "camp"))

(define-category DWELL24200
  :mixins (LODGE-46)
  :realization (:VERB "dwell"))

(define-category LIVE24208
  :mixins (LODGE-46)
  :realization (:VERB "live"))

(define-category LODGE24202
  :mixins (LODGE-46)
  :realization (:VERB "lodge"))

(define-category RESIDE24201
  :mixins (LODGE-46)
  :realization (:VERB "reside"))

(define-category RESIDE24200
  :mixins (LODGE-46)
  :realization (:VERB "reside"))

(define-category SETTLE23001
  :mixins (LODGE-46)
  :realization (:VERB "settle"))

(define-category SETTLE23003
  :mixins (LODGE-46)
  :realization (:VERB "settle"))

(define-category SETTLE23000
  :mixins (LODGE-46)
  :realization (:VERB "settle"))

(define-category STOP23802
  :mixins (LODGE-46)
  :realization (:VERB "stop"))

(define-category STAY24201
  :mixins (LODGE-46)
  :realization (:VERB "stay"))

(define-category ACHE23706
  :mixins (LONG-32.2-1)
  :realization (:VERB "ache"))

(define-category CRAVE23400
  :mixins (LONG-32.2-1)
  :realization (:VERB "crave"))

(define-category DIE23701
  :mixins (LONG-32.2-1)
  :realization (:VERB "die"))

(define-category DIE23700
  :mixins (LONG-32.2-1)
  :realization (:VERB "die"))

(define-category HANKER23700
  :mixins (LONG-32.2-1)
  :realization (:VERB "hanker"))

(define-category HOPE23701
  :mixins (LONG-32.2-1)
  :realization (:VERB "hope"))

(define-category HUNGER23401
  :mixins (LONG-32.2-1)
  :realization (:VERB "hunger"))

(define-category ITCH23700
  :mixins (LONG-32.2-1)
  :realization (:VERB "itch"))

(define-category LONG23702
  :mixins (LONG-32.2-1)
  :realization (:VERB "long"))

(define-category LUST23400
  :mixins (LONG-32.2-1)
  :realization (:VERB "lust"))

(define-category PINE23700
  :mixins (LONG-32.2-1)
  :realization (:VERB "pine"))

(define-category PRAY23200
  :mixins (LONG-32.2-1)
  :realization (:VERB "pray"))

(define-category THIRST23400
  :mixins (LONG-32.2-1)
  :realization (:VERB "thirst"))

(define-category WISH23201
  :mixins (LONG-32.2-1)
  :realization (:VERB "wish"))

(define-category WISH23700
  :mixins (LONG-32.2-1)
  :realization (:VERB "wish"))

(define-category YEARN23701
  :mixins (LONG-32.2-1)
  :realization (:VERB "yearn"))

(define-category YEARN23700
  :mixins (LONG-32.2-1)
  :realization (:VERB "yearn"))

(define-category HANKER23700
  :mixins (LONG-32.2-2)
  :realization (:VERB "hanker"))

(define-category LUST23400
  :mixins (LONG-32.2-2)
  :realization (:VERB "lust"))

(define-category THIRST23400
  :mixins (LONG-32.2-2)
  :realization (:VERB "thirst"))

(define-category YEARN23701
  :mixins (LONG-32.2-2)
  :realization (:VERB "yearn"))

(define-category YEARN23700
  :mixins (LONG-32.2-2)
  :realization (:VERB "yearn"))

(define-category ALLURE23200
  :mixins (LURE-59.3)
  :realization (:VERB "allure"))

(define-category CAJOLE23200
  :mixins (LURE-59.3)
  :realization (:VERB "cajole"))

(define-category COAX23200
  :mixins (LURE-59.3)
  :realization (:VERB "coax"))

(define-category COERCE24100
  :mixins (LURE-59.3)
  :realization (:VERB "coerce"))

(define-category DRAW23503
  :mixins (LURE-59.3)
  :realization (:VERB "draw"))

(define-category ENTICE23200
  :mixins (LURE-59.3)
  :realization (:VERB "entice"))

(define-category FLATTER23200
  :mixins (LURE-59.3)
  :realization (:VERB "flatter"))

(define-category INVEIGLE23200
  :mixins (LURE-59.3)
  :realization (:VERB "inveigle"))

(define-category LURE23200
  :mixins (LURE-59.3)
  :realization (:VERB "lure"))

(define-category SEDUCE23200
  :mixins (LURE-59.3)
  :realization (:VERB "seduce"))

(define-category SOOTHE23700
  :mixins (LURE-59.3)
  :realization (:VERB "soothe"))

(define-category SWEET-TALK23200
  :mixins (LURE-59.3)
  :realization (:VERB "sweet-talk"))

(define-category WIN_OVER23200
  :mixins (LURE-59.3)
  :realization (:VERB "win_over"))

(define-category BABBLE23200
  :mixins (MANNER_SPEAKING-37.3)
  :realization (:VERB "babble"))

(define-category BABBLE23202
  :mixins (MANNER_SPEAKING-37.3)
  :realization (:VERB "babble"))

(define-category BARK23201
  :mixins (MANNER_SPEAKING-37.3)
  :realization (:VERB "bark"))

(define-category BAWL23200
  :mixins (MANNER_SPEAKING-37.3)
  :realization (:VERB "bawl"))

(define-category BELLOW23200
  :mixins (MANNER_SPEAKING-37.3)
  :realization (:VERB "bellow"))

(define-category BLEAT23201
  :mixins (MANNER_SPEAKING-37.3)
  :realization (:VERB "bleat"))

(define-category BLUBBER23200
  :mixins (MANNER_SPEAKING-37.3)
  :realization (:VERB "blubber"))

(define-category BOOM23901
  :mixins (MANNER_SPEAKING-37.3)
  :realization (:VERB "boom"))

(define-category BOOM23900
  :mixins (MANNER_SPEAKING-37.3)
  :realization (:VERB "boom"))

(define-category BRAY22900
  :mixins (MANNER_SPEAKING-37.3)
  :realization (:VERB "bray"))

(define-category CACKLE23201
  :mixins (MANNER_SPEAKING-37.3)
  :realization (:VERB "cackle"))

(define-category CALL23113
  :mixins (MANNER_SPEAKING-37.3)
  :realization (:VERB "call"))

(define-category CAROL23600
  :mixins (MANNER_SPEAKING-37.3)
  :realization (:VERB "carol"))

(define-category CHANT23201
  :mixins (MANNER_SPEAKING-37.3)
  :realization (:VERB "chant"))

(define-category CHANT23200
  :mixins (MANNER_SPEAKING-37.3)
  :realization (:VERB "chant"))

(define-category CHATTER23200
  :mixins (MANNER_SPEAKING-37.3)
  :realization (:VERB "chatter"))

(define-category CHATTER23201
  :mixins (MANNER_SPEAKING-37.3)
  :realization (:VERB "chatter"))

(define-category CHORTLE22900
  :mixins (MANNER_SPEAKING-37.3)
  :realization (:VERB "chortle"))

(define-category COO23201
  :mixins (MANNER_SPEAKING-37.3)
  :realization (:VERB "coo"))

(define-category CROAK23200
  :mixins (MANNER_SPEAKING-37.3)
  :realization (:VERB "croak"))

(define-category CROON23200
  :mixins (MANNER_SPEAKING-37.3)
  :realization (:VERB "croon"))

(define-category CROW23201
  :mixins (MANNER_SPEAKING-37.3)
  :realization (:VERB "crow"))

(define-category CRY23207
  :mixins (MANNER_SPEAKING-37.3)
  :realization (:VERB "cry"))

(define-category DRAWL23200
  :mixins (MANNER_SPEAKING-37.3)
  :realization (:VERB "drawl"))

(define-category DRONE23200
  :mixins (MANNER_SPEAKING-37.3)
  :realization (:VERB "drone"))

(define-category GABBLE23200
  :mixins (MANNER_SPEAKING-37.3)
  :realization (:VERB "gabble"))

(define-category GIBBER23200
  :mixins (MANNER_SPEAKING-37.3)
  :realization (:VERB "gibber"))

(define-category GROWL23200
  :mixins (MANNER_SPEAKING-37.3)
  :realization (:VERB "growl"))

(define-category GRUMBLE23202
  :mixins (MANNER_SPEAKING-37.3)
  :realization (:VERB "grumble"))

(define-category GRUMBLE23200
  :mixins (MANNER_SPEAKING-37.3)
  :realization (:VERB "grumble"))

(define-category GRUNT23200
  :mixins (MANNER_SPEAKING-37.3)
  :realization (:VERB "grunt"))

(define-category HISS23201
  :mixins (MANNER_SPEAKING-37.3)
  :realization (:VERB "hiss"))

(define-category HOLLER23200
  :mixins (MANNER_SPEAKING-37.3)
  :realization (:VERB "holler"))

(define-category HOLLER23206
  :mixins (MANNER_SPEAKING-37.3)
  :realization (:VERB "holler"))

(define-category HOOT23200
  :mixins (MANNER_SPEAKING-37.3)
  :realization (:VERB "hoot"))

(define-category HOWL23202
  :mixins (MANNER_SPEAKING-37.3)
  :realization (:VERB "howl"))

(define-category JABBER23200
  :mixins (MANNER_SPEAKING-37.3)
  :realization (:VERB "jabber"))

(define-category KEEN23700
  :mixins (MANNER_SPEAKING-37.3)
  :realization (:VERB "keen"))

(define-category LILT23200
  :mixins (MANNER_SPEAKING-37.3)
  :realization (:VERB "lilt"))

(define-category LISP23200
  :mixins (MANNER_SPEAKING-37.3)
  :realization (:VERB "lisp"))

(define-category MEWL22900
  :mixins (MANNER_SPEAKING-37.3)
  :realization (:VERB "mewl"))

(define-category MOAN23200
  :mixins (MANNER_SPEAKING-37.3)
  :realization (:VERB "moan"))

(define-category MUMBLE23200
  :mixins (MANNER_SPEAKING-37.3)
  :realization (:VERB "mumble"))

(define-category MURMUR23201
  :mixins (MANNER_SPEAKING-37.3)
  :realization (:VERB "murmur"))

(define-category MURMUR23200
  :mixins (MANNER_SPEAKING-37.3)
  :realization (:VERB "murmur"))

(define-category MUTTER23200
  :mixins (MANNER_SPEAKING-37.3)
  :realization (:VERB "mutter"))

(define-category MUTTER23201
  :mixins (MANNER_SPEAKING-37.3)
  :realization (:VERB "mutter"))

(define-category PANT23200
  :mixins (MANNER_SPEAKING-37.3)
  :realization (:VERB "pant"))

(define-category PURR23200
  :mixins (MANNER_SPEAKING-37.3)
  :realization (:VERB "purr"))

(define-category RASP23200
  :mixins (MANNER_SPEAKING-37.3)
  :realization (:VERB "rasp"))

(define-category ROAR23203
  :mixins (MANNER_SPEAKING-37.3)
  :realization (:VERB "roar"))

(define-category RUMBLE23200
  :mixins (MANNER_SPEAKING-37.3)
  :realization (:VERB "rumble"))

(define-category SCREAM23208
  :mixins (MANNER_SPEAKING-37.3)
  :realization (:VERB "scream"))

(define-category SCREECH23201
  :mixins (MANNER_SPEAKING-37.3)
  :realization (:VERB "screech"))

(define-category SCREECH23900
  :mixins (MANNER_SPEAKING-37.3)
  :realization (:VERB "screech"))

(define-category SHOUT23208
  :mixins (MANNER_SPEAKING-37.3)
  :realization (:VERB "shout"))

(define-category SHRIEK23200
  :mixins (MANNER_SPEAKING-37.3)
  :realization (:VERB "shriek"))

(define-category SIBILATE23200
  :mixins (MANNER_SPEAKING-37.3)
  :realization (:VERB "sibilate"))

(define-category SIBILATE23201
  :mixins (MANNER_SPEAKING-37.3)
  :realization (:VERB "sibilate"))

(define-category SIBILATE23202
  :mixins (MANNER_SPEAKING-37.3)
  :realization (:VERB "sibilate"))

(define-category SIBILATE23203
  :mixins (MANNER_SPEAKING-37.3)
  :realization (:VERB "sibilate"))

(define-category SIGH23201
  :mixins (MANNER_SPEAKING-37.3)
  :realization (:VERB "sigh"))

(define-category SING23601
  :mixins (MANNER_SPEAKING-37.3)
  :realization (:VERB "sing"))

(define-category SMATTER23201
  :mixins (MANNER_SPEAKING-37.3)
  :realization (:VERB "smatter"))

(define-category SMILE23200
  :mixins (MANNER_SPEAKING-37.3)
  :realization (:VERB "smile"))

(define-category SNAP23200
  :mixins (MANNER_SPEAKING-37.3)
  :realization (:VERB "snap"))

(define-category SNARL23200
  :mixins (MANNER_SPEAKING-37.3)
  :realization (:VERB "snarl"))

(define-category SNIVEL23200
  :mixins (MANNER_SPEAKING-37.3)
  :realization (:VERB "snivel"))

(define-category SNUFFLE22901
  :mixins (MANNER_SPEAKING-37.3)
  :realization (:VERB "snuffle"))

(define-category SPLUTTER23200
  :mixins (MANNER_SPEAKING-37.3)
  :realization (:VERB "splutter"))

(define-category SQUALL23201
  :mixins (MANNER_SPEAKING-37.3)
  :realization (:VERB "squall"))

(define-category SQUAWK23200
  :mixins (MANNER_SPEAKING-37.3)
  :realization (:VERB "squawk"))

(define-category SQUEAK23900
  :mixins (MANNER_SPEAKING-37.3)
  :realization (:VERB "squeak"))

(define-category SQUEAL23201
  :mixins (MANNER_SPEAKING-37.3)
  :realization (:VERB "squeal"))

(define-category STAMMER23200
  :mixins (MANNER_SPEAKING-37.3)
  :realization (:VERB "stammer"))

(define-category STUTTER23200
  :mixins (MANNER_SPEAKING-37.3)
  :realization (:VERB "stutter"))

(define-category THUNDER23200
  :mixins (MANNER_SPEAKING-37.3)
  :realization (:VERB "thunder"))

(define-category TRILL23200
  :mixins (MANNER_SPEAKING-37.3)
  :realization (:VERB "trill"))

(define-category TRILL23201
  :mixins (MANNER_SPEAKING-37.3)
  :realization (:VERB "trill"))

(define-category TRUMPET23200
  :mixins (MANNER_SPEAKING-37.3)
  :realization (:VERB "trumpet"))

(define-category TWANG23200
  :mixins (MANNER_SPEAKING-37.3)
  :realization (:VERB "twang"))

(define-category WAIL23200
  :mixins (MANNER_SPEAKING-37.3)
  :realization (:VERB "wail"))

(define-category WARBLE23201
  :mixins (MANNER_SPEAKING-37.3)
  :realization (:VERB "warble"))

(define-category WARBLE23200
  :mixins (MANNER_SPEAKING-37.3)
  :realization (:VERB "warble"))

(define-category WHIMPER22900
  :mixins (MANNER_SPEAKING-37.3)
  :realization (:VERB "whimper"))

(define-category WHINE23200
  :mixins (MANNER_SPEAKING-37.3)
  :realization (:VERB "whine"))

(define-category WHINE23201
  :mixins (MANNER_SPEAKING-37.3)
  :realization (:VERB "whine"))

(define-category WHISPER23200
  :mixins (MANNER_SPEAKING-37.3)
  :realization (:VERB "whisper"))

(define-category WHISTLE23200
  :mixins (MANNER_SPEAKING-37.3)
  :realization (:VERB "whistle"))

(define-category WHOOP23200
  :mixins (MANNER_SPEAKING-37.3)
  :realization (:VERB "whoop"))

(define-category YAMMER23200
  :mixins (MANNER_SPEAKING-37.3)
  :realization (:VERB "yammer"))

(define-category YELL23200
  :mixins (MANNER_SPEAKING-37.3)
  :realization (:VERB "yell"))

(define-category YODEL23200
  :mixins (MANNER_SPEAKING-37.3)
  :realization (:VERB "yodel"))

(define-category COURT24110
  :mixins (MARRY-36.2)
  :realization (:VERB "court"))

(define-category COURT24100
  :mixins (MARRY-36.2)
  :realization (:VERB "court"))

(define-category CUDDLE23501
  :mixins (MARRY-36.2)
  :realization (:VERB "cuddle"))

(define-category CUDDLE23500
  :mixins (MARRY-36.2)
  :realization (:VERB "cuddle"))

(define-category DATE24101
  :mixins (MARRY-36.2)
  :realization (:VERB "date"))

(define-category DATE24100
  :mixins (MARRY-36.2)
  :realization (:VERB "date"))

(define-category DIVORCE24100
  :mixins (MARRY-36.2)
  :realization (:VERB "divorce"))

(define-category DIVORCE24101
  :mixins (MARRY-36.2)
  :realization (:VERB "divorce"))

(define-category EMBRACE23500
  :mixins (MARRY-36.2)
  :realization (:VERB "embrace"))

(define-category HUG23501
  :mixins (MARRY-36.2)
  :realization (:VERB "hug"))

(define-category KISS23500
  :mixins (MARRY-36.2)
  :realization (:VERB "kiss"))

(define-category MARRY24100
  :mixins (MARRY-36.2)
  :realization (:VERB "marry"))

(define-category NECK23500
  :mixins (MARRY-36.2)
  :realization (:VERB "neck"))

(define-category NUZZLE23500
  :mixins (MARRY-36.2)
  :realization (:VERB "nuzzle"))

(define-category NUZZLE23502
  :mixins (MARRY-36.2)
  :realization (:VERB "nuzzle"))

(define-category PET23501
  :mixins (MARRY-36.2)
  :realization (:VERB "pet"))

(define-category PET23500
  :mixins (MARRY-36.2)
  :realization (:VERB "pet"))

(define-category CHEER23200
  :mixins (MARVEL-31.3)
  :realization (:VERB "cheer"))

(define-category CRINGE23800
  :mixins (MARVEL-31.3)
  :realization (:VERB "cringe"))

(define-category CRINGE23801
  :mixins (MARVEL-31.3)
  :realization (:VERB "cringe"))

(define-category ENTHUSE23200
  :mixins (MARVEL-31.3)
  :realization (:VERB "enthuse"))

(define-category FUME23700
  :mixins (MARVEL-31.3)
  :realization (:VERB "fume"))

(define-category GLADDEN23700
  :mixins (MARVEL-31.3)
  :realization (:VERB "gladden"))

(define-category MADDEN23701
  :mixins (MARVEL-31.3)
  :realization (:VERB "madden"))

(define-category MARVEL23200
  :mixins (MARVEL-31.3)
  :realization (:VERB "marvel"))

(define-category MARVEL23212
  :mixins (MARVEL-31.3)
  :realization (:VERB "marvel"))

(define-category RAGE23700
  :mixins (MARVEL-31.3)
  :realization (:VERB "rage"))

(define-category RAGE24201
  :mixins (MARVEL-31.3)
  :realization (:VERB "rage"))

(define-category SADDEN23700
  :mixins (MARVEL-31.3)
  :realization (:VERB "sadden"))

(define-category SICKEN23700
  :mixins (MARVEL-31.3)
  :realization (:VERB "sicken"))

(define-category START23804
  :mixins (MARVEL-31.3)
  :realization (:VERB "start"))

(define-category SWOON22900
  :mixins (MARVEL-31.3)
  :realization (:VERB "swoon"))

(define-category THRILL23702
  :mixins (MARVEL-31.3)
  :realization (:VERB "thrill"))

(define-category WONDER23212
  :mixins (MARVEL-31.3)
  :realization (:VERB "wonder"))

(define-category CHAFE23701
  :mixins (MARVEL-31.3)
  :realization (:VERB "chafe"))

(define-category CHAFE23900
  :mixins (MARVEL-31.3)
  :realization (:VERB "chafe"))

(define-category BOTHER24100
  :mixins (MARVEL-31.3)
  :realization (:VERB "bother"))

(define-category FRET23700
  :mixins (MARVEL-31.3)
  :realization (:VERB "fret"))

(define-category FRET23703
  :mixins (MARVEL-31.3)
  :realization (:VERB "fret"))

(define-category MIND23102
  :mixins (MARVEL-31.3)
  :realization (:VERB "mind"))

(define-category MOON24101
  :mixins (MARVEL-31.3)
  :realization (:VERB "moon"))

(define-category STEW23700
  :mixins (MARVEL-31.3)
  :realization (:VERB "stew"))

(define-category STEW23701
  :mixins (MARVEL-31.3)
  :realization (:VERB "stew"))

(define-category SULK24200
  :mixins (MARVEL-31.3)
  :realization (:VERB "sulk"))

(define-category WORRY23712
  :mixins (MARVEL-31.3)
  :realization (:VERB "worry"))

(define-category WORRY23700
  :mixins (MARVEL-31.3)
  :realization (:VERB "worry"))

(define-category FLIP_OUT23000
  :mixins (MARVEL-31.3)
  :realization (:VERB "flip_out"))

(define-category FLIP_OUT23100
  :mixins (MARVEL-31.3)
  :realization (:VERB "flip_out"))

(define-category FREAK_OUT23700
  :mixins (MARVEL-31.3)
  :realization (:VERB "freak_out"))

(define-category GO_BALLISTIC23700
  :mixins (MARVEL-31.3)
  :realization (:VERB "go_ballistic"))

(define-category LOSE_IT23700
  :mixins (MARVEL-31.3)
  :realization (:VERB "lose_it"))

(define-category CARE23712
  :mixins (MARVEL-31.3)
  :realization (:VERB "care"))

(define-category CARE23702
  :mixins (MARVEL-31.3)
  :realization (:VERB "care"))

(define-category CRY22900
  :mixins (MARVEL-31.3)
  :realization (:VERB "cry"))

(define-category FEAR23703
  :mixins (MARVEL-31.3)
  :realization (:VERB "fear"))

(define-category GRIEVE23700
  :mixins (MARVEL-31.3)
  :realization (:VERB "grieve"))

(define-category MOURN23700
  :mixins (MARVEL-31.3)
  :realization (:VERB "mourn"))

(define-category WEEP22900
  :mixins (MARVEL-31.3)
  :realization (:VERB "weep"))

(define-category ACHE23706
  :mixins (MARVEL-31.3)
  :realization (:VERB "ache"))

(define-category HURT22902
  :mixins (MARVEL-31.3)
  :realization (:VERB "hurt"))

(define-category SUFFER22903
  :mixins (MARVEL-31.3)
  :realization (:VERB "suffer"))

(define-category SUFFER22900
  :mixins (MARVEL-31.3)
  :realization (:VERB "suffer"))

(define-category SUFFER23700
  :mixins (MARVEL-31.3)
  :realization (:VERB "suffer"))

(define-category BASK23713
  :mixins (MARVEL-31.3)
  :realization (:VERB "bask"))

(define-category EXULT23200
  :mixins (MARVEL-31.3)
  :realization (:VERB "exult"))

(define-category EXULT23700
  :mixins (MARVEL-31.3)
  :realization (:VERB "exult"))

(define-category GLORY23200
  :mixins (MARVEL-31.3)
  :realization (:VERB "glory"))

(define-category LUXURIATE23414
  :mixins (MARVEL-31.3)
  :realization (:VERB "luxuriate"))

(define-category REJOICE23702
  :mixins (MARVEL-31.3)
  :realization (:VERB "rejoice"))

(define-category REJOICE23700
  :mixins (MARVEL-31.3)
  :realization (:VERB "rejoice"))

(define-category REVEL23400
  :mixins (MARVEL-31.3)
  :realization (:VERB "revel"))

(define-category WALLOW23400
  :mixins (MARVEL-31.3)
  :realization (:VERB "wallow"))

(define-category WALLOW23700
  :mixins (MARVEL-31.3)
  :realization (:VERB "wallow"))

(define-category WALLOW23401
  :mixins (MARVEL-31.3)
  :realization (:VERB "wallow"))

(define-category APPROVE23100
  :mixins (MARVEL-31.3)
  :realization (:VERB "approve"))

(define-category APPROVE23200
  :mixins (MARVEL-31.3)
  :realization (:VERB "approve"))

(define-category BEWARE23100
  :mixins (MARVEL-31.3)
  :realization (:VERB "beware"))

(define-category DESPAIR23700
  :mixins (MARVEL-31.3)
  :realization (:VERB "despair"))

(define-category DISAPPROVE23200
  :mixins (MARVEL-31.3)
  :realization (:VERB "disapprove"))

(define-category DISAPPROVE23100
  :mixins (MARVEL-31.3)
  :realization (:VERB "disapprove"))

(define-category TIRE22900
  :mixins (MARVEL-31.3)
  :realization (:VERB "tire"))

(define-category WEARY22901
  :mixins (MARVEL-31.3)
  :realization (:VERB "weary"))

(define-category ANGER23701
  :mixins (MARVEL-31.3)
  :realization (:VERB "anger"))

(define-category ANGUISH23702
  :mixins (MARVEL-31.3)
  :realization (:VERB "anguish"))

(define-category DELIGHT23400
  :mixins (MARVEL-31.3)
  :realization (:VERB "delight"))

(define-category GLOAT23900
  :mixins (MARVEL-31.3)
  :realization (:VERB "gloat"))

(define-category GLOAT23200
  :mixins (MARVEL-31.3)
  :realization (:VERB "gloat"))

(define-category HUNGER23401
  :mixins (MARVEL-31.3)
  :realization (:VERB "hunger"))

(define-category MOPE23700
  :mixins (MARVEL-31.3)
  :realization (:VERB "mope"))

(define-category OBSESS23703
  :mixins (MARVEL-31.3)
  :realization (:VERB "obsess"))

(define-category PUZZLE23703
  :mixins (MARVEL-31.3)
  :realization (:VERB "puzzle"))

(define-category SALIVATE23700
  :mixins (MARVEL-31.3)
  :realization (:VERB "salivate"))

(define-category SEETHE23700
  :mixins (MARVEL-31.3)
  :realization (:VERB "seethe"))

(define-category SORROW23700
  :mixins (MARVEL-31.3)
  :realization (:VERB "sorrow"))

(define-category REACT23100
  :mixins (MARVEL-31.3)
  :realization (:VERB "react"))

(define-category BEHAVE22900
  :mixins (MASQUERADE-29.6)
  :realization (:VERB "behave"))

(define-category FUNCTION24212
  :mixins (MASQUERADE-29.6)
  :realization (:VERB "function"))

(define-category MASQUERADE23200
  :mixins (MASQUERADE-29.6)
  :realization (:VERB "masquerade"))

(define-category OFFICIATE23300
  :mixins (MASQUERADE-29.6)
  :realization (:VERB "officiate"))

(define-category QUALIFY24200
  :mixins (MASQUERADE-29.6)
  :realization (:VERB "qualify"))

(define-category RANK23113
  :mixins (MASQUERADE-29.6)
  :realization (:VERB "rank"))

(define-category ACT23300
  :mixins (MASQUERADE-29.6-1)
  :realization (:VERB "act"))

(define-category ACT22900
  :mixins (MASQUERADE-29.6-1)
  :realization (:VERB "act"))

(define-category BEHAVE22900
  :mixins (MASQUERADE-29.6-1)
  :realization (:VERB "behave"))

(define-category SERVE23300
  :mixins (MASQUERADE-29.6-2)
  :realization (:VERB "serve"))

(define-category SERVE24203
  :mixins (MASQUERADE-29.6-2)
  :realization (:VERB "serve"))

(define-category POSE23213
  :mixins (MASQUERADE-29.6-2)
  :realization (:VERB "pose"))

(define-category COUNT24200
  :mixins (MATTER-91)
  :realization (:VERB "count"))

(define-category MATTER24200
  :mixins (MATTER-91)
  :realization (:VERB "matter"))

(define-category CASCADE23800
  :mixins (MEANDER-47.7)
  :realization (:VERB "cascade"))

(define-category FALL23500
  :mixins (MEANDER-47.7)
  :realization (:VERB "fall"))

(define-category FALL23811
  :mixins (MEANDER-47.7)
  :realization (:VERB "fall"))

(define-category GO24200
  :mixins (MEANDER-47.7)
  :realization (:VERB "go"))

(define-category LANCE23800
  :mixins (MEANDER-47.7)
  :realization (:VERB "lance"))

(define-category PASS24208
  :mixins (MEANDER-47.7)
  :realization (:VERB "pass"))

(define-category ROUND23800
  :mixins (MEANDER-47.7)
  :realization (:VERB "round"))

(define-category STRAGGLE23801
  :mixins (MEANDER-47.7)
  :realization (:VERB "straggle"))

(define-category STRETCH24200
  :mixins (MEANDER-47.7)
  :realization (:VERB "stretch"))

(define-category SWEEP24203
  :mixins (MEANDER-47.7)
  :realization (:VERB "sweep"))

(define-category WANDER23801
  :mixins (MEANDER-47.7)
  :realization (:VERB "wander"))

(define-category WEAVE23800
  :mixins (MEANDER-47.7)
  :realization (:VERB "weave"))

(define-category WIND24200
  :mixins (MEANDER-47.7)
  :realization (:VERB "wind"))

(define-category WIND23800
  :mixins (MEANDER-47.7)
  :realization (:VERB "wind"))

(define-category CLIMB23806
  :mixins (MEANDER-47.7-1)
  :realization (:VERB "climb"))

(define-category CONVERGE24200
  :mixins (MEANDER-47.7-1)
  :realization (:VERB "converge"))

(define-category MEANDER23800
  :mixins (MEANDER-47.7-1)
  :realization (:VERB "meander"))

(define-category RUN24200
  :mixins (MEANDER-47.7-1)
  :realization (:VERB "run"))

(define-category CONSULT23205
  :mixins (MEET-36.3-1)
  :realization (:VERB "consult"))

(define-category CONSULT23202
  :mixins (MEET-36.3-1)
  :realization (:VERB "consult"))

(define-category CONSULT23201
  :mixins (MEET-36.3-1)
  :realization (:VERB "consult"))

(define-category MEET24100
  :mixins (MEET-36.3-1)
  :realization (:VERB "meet"))

(define-category MEET24103
  :mixins (MEET-36.3-1)
  :realization (:VERB "meet"))

(define-category MEET24101
  :mixins (MEET-36.3-1)
  :realization (:VERB "meet"))

(define-category MEET23801
  :mixins (MEET-36.3-1)
  :realization (:VERB "meet"))

(define-category PLAY23302
  :mixins (MEET-36.3-1)
  :realization (:VERB "play"))

(define-category PLAY24103
  :mixins (MEET-36.3-1)
  :realization (:VERB "play"))

(define-category VISIT23200
  :mixins (MEET-36.3-1)
  :realization (:VERB "visit"))

(define-category VISIT23801
  :mixins (MEET-36.3-1)
  :realization (:VERB "visit"))

(define-category VISIT24100
  :mixins (MEET-36.3-1)
  :realization (:VERB "visit"))

(define-category BATTLE23300
  :mixins (MEET-36.3-2)
  :realization (:VERB "battle"))

(define-category BOX23501
  :mixins (MEET-36.3-2)
  :realization (:VERB "box"))

(define-category DEBATE23201
  :mixins (MEET-36.3-2)
  :realization (:VERB "debate"))

(define-category DEBATE23100
  :mixins (MEET-36.3-2)
  :realization (:VERB "debate"))

(define-category FIGHT23300
  :mixins (MEET-36.3-2)
  :realization (:VERB "fight"))

(define-category MINE23400
  :mixins (MINE-10.9)
  :realization (:VERB "mine"))

(define-category QUARRY23400
  :mixins (MINE-10.9)
  :realization (:VERB "quarry"))

(define-category ADMIX23000
  :mixins (MIX-22.1-1)
  :realization (:VERB "admix"))

(define-category CONSOLIDATE23003
  :mixins (MIX-22.1-1)
  :realization (:VERB "consolidate"))

(define-category CONSOLIDATE23004
  :mixins (MIX-22.1-1)
  :realization (:VERB "consolidate"))

(define-category CONSOLIDATE23001
  :mixins (MIX-22.1-1)
  :realization (:VERB "consolidate"))

(define-category CONSOLIDATE23000
  :mixins (MIX-22.1-1)
  :realization (:VERB "consolidate"))

(define-category INTERMIX23500
  :mixins (MIX-22.1-1)
  :realization (:VERB "intermix"))

(define-category SCRAMBLE23502
  :mixins (MIX-22.1-1)
  :realization (:VERB "scramble"))

(define-category SCRAMBLE23500
  :mixins (MIX-22.1-1)
  :realization (:VERB "scramble"))

(define-category TUMBLE23500
  :mixins (MIX-22.1-1)
  :realization (:VERB "tumble"))

(define-category CREAM23500
  :mixins (MIX-22.1-1)
  :realization (:VERB "cream"))

(define-category AMALGAMATE23500
  :mixins (MIX-22.1-1-1)
  :realization (:VERB "amalgamate"))

(define-category BLEND23500
  :mixins (MIX-22.1-1-1)
  :realization (:VERB "blend"))

(define-category COALESCE23500
  :mixins (MIX-22.1-1-1)
  :realization (:VERB "coalesce"))

(define-category COALESCE23000
  :mixins (MIX-22.1-1-1)
  :realization (:VERB "coalesce"))

(define-category COMBINE23501
  :mixins (MIX-22.1-1-1)
  :realization (:VERB "combine"))

(define-category COMPOUND23500
  :mixins (MIX-22.1-1-1)
  :realization (:VERB "compound"))

(define-category COMPOUND23600
  :mixins (MIX-22.1-1-1)
  :realization (:VERB "compound"))

(define-category COMPOUND23000
  :mixins (MIX-22.1-1-1)
  :realization (:VERB "compound"))

(define-category COMMINGLE23500
  :mixins (MIX-22.1-1-1)
  :realization (:VERB "commingle"))

(define-category DECOCT23001
  :mixins (MIX-22.1-1-1)
  :realization (:VERB "decoct"))

(define-category DECOCT23002
  :mixins (MIX-22.1-1-1)
  :realization (:VERB "decoct"))

(define-category DECOCT23002
  :mixins (MIX-22.1-1-1)
  :realization (:VERB "decoct"))

(define-category DECOCT23000
  :mixins (MIX-22.1-1-1)
  :realization (:VERB "decoct"))

(define-category FUSE23000
  :mixins (MIX-22.1-1-1)
  :realization (:VERB "fuse"))

(define-category MELD23000
  :mixins (MIX-22.1-1-1)
  :realization (:VERB "meld"))

(define-category MERGE23001
  :mixins (MIX-22.1-1-1)
  :realization (:VERB "merge"))

(define-category MINGLE23500
  :mixins (MIX-22.1-1-1)
  :realization (:VERB "mingle"))

(define-category MIX23001
  :mixins (MIX-22.1-1-1)
  :realization (:VERB "mix"))

(define-category MIX23000
  :mixins (MIX-22.1-1-1)
  :realization (:VERB "mix"))

(define-category RECOMBINE23003
  :mixins (MIX-22.1-1-1)
  :realization (:VERB "recombine"))

(define-category RECOMBINE23001
  :mixins (MIX-22.1-1-1)
  :realization (:VERB "recombine"))

(define-category RECOMBINE23000
  :mixins (MIX-22.1-1-1)
  :realization (:VERB "recombine"))

(define-category ADD23000
  :mixins (MIX-22.1-2)
  :realization (:VERB "add"))

(define-category TIE23600
  :mixins (MIX-22.1-2)
  :realization (:VERB "tie"))

(define-category TIE23501
  :mixins (MIX-22.1-2)
  :realization (:VERB "tie"))

(define-category CONNECT23500
  :mixins (MIX-22.1-2-1)
  :realization (:VERB "connect"))

(define-category JOIN24201
  :mixins (MIX-22.1-2-1)
  :realization (:VERB "join"))

(define-category JOIN23500
  :mixins (MIX-22.1-2-1)
  :realization (:VERB "join"))

(define-category JOIN23501
  :mixins (MIX-22.1-2-1)
  :realization (:VERB "join"))

(define-category LINK23502
  :mixins (MIX-22.1-2-1)
  :realization (:VERB "link"))

(define-category LINK24201
  :mixins (MIX-22.1-2-1)
  :realization (:VERB "link"))

(define-category LINK23500
  :mixins (MIX-22.1-2-1)
  :realization (:VERB "link"))

(define-category PAIR23503
  :mixins (MIX-22.1-2-1)
  :realization (:VERB "pair"))

(define-category PAIR23501
  :mixins (MIX-22.1-2-1)
  :realization (:VERB "pair"))

(define-category POOL24000
  :mixins (MIX-22.1-2-1)
  :realization (:VERB "pool"))

(define-category NETWORK23200
  :mixins (MIX-22.1-2-1)
  :realization (:VERB "network"))

(define-category REJOIN24100
  :mixins (MIX-22.1-2-1)
  :realization (:VERB "rejoin"))

(define-category UNITE23002
  :mixins (MIX-22.1-2-1)
  :realization (:VERB "unite"))

(define-category UNITE24202
  :mixins (MIX-22.1-2-1)
  :realization (:VERB "unite"))

(define-category UNITE24201
  :mixins (MIX-22.1-2-1)
  :realization (:VERB "unite"))

(define-category UNITE23000
  :mixins (MIX-22.1-2-1)
  :realization (:VERB "unite"))

(define-category BOB23800
  :mixins (MODES_OF_BEING_WITH_MOTION-47.3)
  :realization (:VERB "bob"))

(define-category CIRCULATE23804
  :mixins (MODES_OF_BEING_WITH_MOTION-47.3)
  :realization (:VERB "circulate"))

(define-category CIRCULATE23803
  :mixins (MODES_OF_BEING_WITH_MOTION-47.3)
  :realization (:VERB "circulate"))

(define-category CREEP23806
  :mixins (MODES_OF_BEING_WITH_MOTION-47.3)
  :realization (:VERB "creep"))

(define-category DANCE23802
  :mixins (MODES_OF_BEING_WITH_MOTION-47.3)
  :realization (:VERB "dance"))

(define-category DRIFT23000
  :mixins (MODES_OF_BEING_WITH_MOTION-47.3)
  :realization (:VERB "drift"))

(define-category DRIFT23806
  :mixins (MODES_OF_BEING_WITH_MOTION-47.3)
  :realization (:VERB "drift"))

(define-category DRIFT23802
  :mixins (MODES_OF_BEING_WITH_MOTION-47.3)
  :realization (:VERB "drift"))

(define-category EDDY23800
  :mixins (MODES_OF_BEING_WITH_MOTION-47.3)
  :realization (:VERB "eddy"))

(define-category FLAP23800
  :mixins (MODES_OF_BEING_WITH_MOTION-47.3)
  :realization (:VERB "flap"))

(define-category FLAP23801
  :mixins (MODES_OF_BEING_WITH_MOTION-47.3)
  :realization (:VERB "flap"))

(define-category FLOAT23802
  :mixins (MODES_OF_BEING_WITH_MOTION-47.3)
  :realization (:VERB "float"))

(define-category FLOAT23800
  :mixins (MODES_OF_BEING_WITH_MOTION-47.3)
  :realization (:VERB "float"))

(define-category FLUTTER22900
  :mixins (MODES_OF_BEING_WITH_MOTION-47.3)
  :realization (:VERB "flutter"))

(define-category FLUTTER23800
  :mixins (MODES_OF_BEING_WITH_MOTION-47.3)
  :realization (:VERB "flutter"))

(define-category FLUTTER23801
  :mixins (MODES_OF_BEING_WITH_MOTION-47.3)
  :realization (:VERB "flutter"))

(define-category HOVER23801
  :mixins (MODES_OF_BEING_WITH_MOTION-47.3)
  :realization (:VERB "hover"))

(define-category HOVER23800
  :mixins (MODES_OF_BEING_WITH_MOTION-47.3)
  :realization (:VERB "hover"))

(define-category JIGGLE23800
  :mixins (MODES_OF_BEING_WITH_MOTION-47.3)
  :realization (:VERB "jiggle"))

(define-category JOGGLE23800
  :mixins (MODES_OF_BEING_WITH_MOTION-47.3)
  :realization (:VERB "joggle"))

(define-category OSCILLATE23800
  :mixins (MODES_OF_BEING_WITH_MOTION-47.3)
  :realization (:VERB "oscillate"))

(define-category PULSATE23800
  :mixins (MODES_OF_BEING_WITH_MOTION-47.3)
  :realization (:VERB "pulsate"))

(define-category PULSE23800
  :mixins (MODES_OF_BEING_WITH_MOTION-47.3)
  :realization (:VERB "pulse"))

(define-category QUAKE23802
  :mixins (MODES_OF_BEING_WITH_MOTION-47.3)
  :realization (:VERB "quake"))

(define-category QUAKE23801
  :mixins (MODES_OF_BEING_WITH_MOTION-47.3)
  :realization (:VERB "quake"))

(define-category QUIVER23804
  :mixins (MODES_OF_BEING_WITH_MOTION-47.3)
  :realization (:VERB "quiver"))

(define-category QUIVER23800
  :mixins (MODES_OF_BEING_WITH_MOTION-47.3)
  :realization (:VERB "quiver"))

(define-category REVOLVE23802
  :mixins (MODES_OF_BEING_WITH_MOTION-47.3)
  :realization (:VERB "revolve"))

(define-category REVOLVE23801
  :mixins (MODES_OF_BEING_WITH_MOTION-47.3)
  :realization (:VERB "revolve"))

(define-category REVOLVE23800
  :mixins (MODES_OF_BEING_WITH_MOTION-47.3)
  :realization (:VERB "revolve"))

(define-category ROCK23800
  :mixins (MODES_OF_BEING_WITH_MOTION-47.3)
  :realization (:VERB "rock"))

(define-category ROTATE23800
  :mixins (MODES_OF_BEING_WITH_MOTION-47.3)
  :realization (:VERB "rotate"))

(define-category ROTATE23801
  :mixins (MODES_OF_BEING_WITH_MOTION-47.3)
  :realization (:VERB "rotate"))

(define-category SHAKE23802
  :mixins (MODES_OF_BEING_WITH_MOTION-47.3)
  :realization (:VERB "shake"))

(define-category SHAKE22900
  :mixins (MODES_OF_BEING_WITH_MOTION-47.3)
  :realization (:VERB "shake"))

(define-category SHAKE23800
  :mixins (MODES_OF_BEING_WITH_MOTION-47.3)
  :realization (:VERB "shake"))

(define-category STIR23804
  :mixins (MODES_OF_BEING_WITH_MOTION-47.3)
  :realization (:VERB "stir"))

(define-category STIR23800
  :mixins (MODES_OF_BEING_WITH_MOTION-47.3)
  :realization (:VERB "stir"))

(define-category STIR23801
  :mixins (MODES_OF_BEING_WITH_MOTION-47.3)
  :realization (:VERB "stir"))

(define-category SWAG23800
  :mixins (MODES_OF_BEING_WITH_MOTION-47.3)
  :realization (:VERB "swag"))

(define-category SWAY23806
  :mixins (MODES_OF_BEING_WITH_MOTION-47.3)
  :realization (:VERB "sway"))

(define-category SWAY23800
  :mixins (MODES_OF_BEING_WITH_MOTION-47.3)
  :realization (:VERB "sway"))

(define-category SWIRL23800
  :mixins (MODES_OF_BEING_WITH_MOTION-47.3)
  :realization (:VERB "swirl"))

(define-category SWIRL23801
  :mixins (MODES_OF_BEING_WITH_MOTION-47.3)
  :realization (:VERB "swirl"))

(define-category TEETER23800
  :mixins (MODES_OF_BEING_WITH_MOTION-47.3)
  :realization (:VERB "teeter"))

(define-category THROB23800
  :mixins (MODES_OF_BEING_WITH_MOTION-47.3)
  :realization (:VERB "throb"))

(define-category THROB23900
  :mixins (MODES_OF_BEING_WITH_MOTION-47.3)
  :realization (:VERB "throb"))

(define-category TOTTER23800
  :mixins (MODES_OF_BEING_WITH_MOTION-47.3)
  :realization (:VERB "totter"))

(define-category TOTTER23802
  :mixins (MODES_OF_BEING_WITH_MOTION-47.3)
  :realization (:VERB "totter"))

(define-category TREMBLE23800
  :mixins (MODES_OF_BEING_WITH_MOTION-47.3)
  :realization (:VERB "tremble"))

(define-category UNDULATE23800
  :mixins (MODES_OF_BEING_WITH_MOTION-47.3)
  :realization (:VERB "undulate"))

(define-category UNDULATE23801
  :mixins (MODES_OF_BEING_WITH_MOTION-47.3)
  :realization (:VERB "undulate"))

(define-category VIBRATE23801
  :mixins (MODES_OF_BEING_WITH_MOTION-47.3)
  :realization (:VERB "vibrate"))

(define-category VIBRATE23800
  :mixins (MODES_OF_BEING_WITH_MOTION-47.3)
  :realization (:VERB "vibrate"))

(define-category WAFT24300
  :mixins (MODES_OF_BEING_WITH_MOTION-47.3)
  :realization (:VERB "waft"))

(define-category WAVE23800
  :mixins (MODES_OF_BEING_WITH_MOTION-47.3)
  :realization (:VERB "wave"))

(define-category WAVE23500
  :mixins (MODES_OF_BEING_WITH_MOTION-47.3)
  :realization (:VERB "wave"))

(define-category WAVER23800
  :mixins (MODES_OF_BEING_WITH_MOTION-47.3)
  :realization (:VERB "waver"))

(define-category WAVER23802
  :mixins (MODES_OF_BEING_WITH_MOTION-47.3)
  :realization (:VERB "waver"))

(define-category WAVER23801
  :mixins (MODES_OF_BEING_WITH_MOTION-47.3)
  :realization (:VERB "waver"))

(define-category WIGGLE23800
  :mixins (MODES_OF_BEING_WITH_MOTION-47.3)
  :realization (:VERB "wiggle"))

(define-category WOBBLE23801
  :mixins (MODES_OF_BEING_WITH_MOTION-47.3)
  :realization (:VERB "wobble"))

(define-category WOBBLE23800
  :mixins (MODES_OF_BEING_WITH_MOTION-47.3)
  :realization (:VERB "wobble"))

(define-category WORM23800
  :mixins (MODES_OF_BEING_WITH_MOTION-47.3)
  :realization (:VERB "worm"))

(define-category WRITHE23800
  :mixins (MODES_OF_BEING_WITH_MOTION-47.3)
  :realization (:VERB "writhe"))

(define-category ROIL23800
  :mixins (MODES_OF_BEING_WITH_MOTION-47.3)
  :realization (:VERB "roil"))

(define-category SUM23200
  :mixins (MULTIPLY-108)
  :realization (:VERB "sum"))

(define-category ADD23100
  :mixins (MULTIPLY-108)
  :realization (:VERB "add"))

(define-category ADD23200
  :mixins (MULTIPLY-108)
  :realization (:VERB "add"))

(define-category TALLY23200
  :mixins (MULTIPLY-108)
  :realization (:VERB "tally"))

(define-category COUNT23100
  :mixins (MULTIPLY-108)
  :realization (:VERB "count"))

(define-category COUNT23200
  :mixins (MULTIPLY-108)
  :realization (:VERB "count"))

(define-category ASSASSINATE24100
  :mixins (MURDER-42.1)
  :realization (:VERB "assassinate"))

(define-category BUSHWHACK23300
  :mixins (MURDER-42.1)
  :realization (:VERB "bushwhack"))

(define-category BUTCHER23500
  :mixins (MURDER-42.1)
  :realization (:VERB "butcher"))

(define-category DISPATCH24101
  :mixins (MURDER-42.1)
  :realization (:VERB "dispatch"))

(define-category ELIMINATE23000
  :mixins (MURDER-42.1)
  :realization (:VERB "eliminate"))

(define-category EXECUTE24101
  :mixins (MURDER-42.1)
  :realization (:VERB "execute"))

(define-category EXECUTE24100
  :mixins (MURDER-42.1)
  :realization (:VERB "execute"))

(define-category IMMOLATE24000
  :mixins (MURDER-42.1)
  :realization (:VERB "immolate"))

(define-category LIQUIDATE23500
  :mixins (MURDER-42.1)
  :realization (:VERB "liquidate"))

(define-category MASSACRE23000
  :mixins (MURDER-42.1)
  :realization (:VERB "massacre"))

(define-category MURDER24100
  :mixins (MURDER-42.1)
  :realization (:VERB "murder"))

(define-category SLAUGHTER23000
  :mixins (MURDER-42.1)
  :realization (:VERB "slaughter"))

(define-category SLAUGHTER23500
  :mixins (MURDER-42.1)
  :realization (:VERB "slaughter"))

(define-category SLAY24100
  :mixins (MURDER-42.1)
  :realization (:VERB "slay"))

(define-category KILL23502
  :mixins (MURDER-42.1-1)
  :realization (:VERB "kill"))

(define-category KILL24200
  :mixins (MURDER-42.1-1)
  :realization (:VERB "kill"))

(define-category KILL23501
  :mixins (MURDER-42.1-1)
  :realization (:VERB "kill"))

(define-category KILL23500
  :mixins (MURDER-42.1-1)
  :realization (:VERB "kill"))

(define-category KILL_OFF23500
  :mixins (MURDER-42.1-1)
  :realization (:VERB "kill_off"))

(define-category DISREGARD23100
  :mixins (NEGLECT-75.1)
  :realization (:VERB "disregard"))

(define-category FORGO24100
  :mixins (NEGLECT-75.1)
  :realization (:VERB "forgo"))

(define-category FOREGO24100
  :mixins (NEGLECT-75.1)
  :realization (:VERB "forego"))

(define-category IGNORE23103
  :mixins (NEGLECT-75.1)
  :realization (:VERB "ignore"))

(define-category LEAVE_OUT23100
  :mixins (NEGLECT-75.1)
  :realization (:VERB "leave_out"))

(define-category OVERLEAP23100
  :mixins (NEGLECT-75.1)
  :realization (:VERB "overleap"))

(define-category OVERLOOK23100
  :mixins (NEGLECT-75.1)
  :realization (:VERB "overlook"))

(define-category FAIL24102
  :mixins (NEGLECT-75.1-1)
  :realization (:VERB "fail"))

(define-category NEGLECT23101
  :mixins (NEGLECT-75.1-1)
  :realization (:VERB "neglect"))

(define-category NEGLECT23105
  :mixins (NEGLECT-75.1-1)
  :realization (:VERB "neglect"))

(define-category NEGLECT24100
  :mixins (NEGLECT-75.1-1)
  :realization (:VERB "neglect"))

(define-category NEGLECT23100
  :mixins (NEGLECT-75.1-1)
  :realization (:VERB "neglect"))

(define-category OMIT23100
  :mixins (NEGLECT-75.1-1)
  :realization (:VERB "omit"))

(define-category PADDLE23800
  :mixins (NONVEHICLE-51.4.2)
  :realization (:VERB "paddle"))

(define-category PEDAL23800
  :mixins (NONVEHICLE-51.4.2)
  :realization (:VERB "pedal"))

(define-category RIDE23807
  :mixins (NONVEHICLE-51.4.2)
  :realization (:VERB "ride"))

(define-category RIDE23804
  :mixins (NONVEHICLE-51.4.2)
  :realization (:VERB "ride"))

(define-category RIDE23800
  :mixins (NONVEHICLE-51.4.2)
  :realization (:VERB "ride"))

(define-category RIDE23801
  :mixins (NONVEHICLE-51.4.2)
  :realization (:VERB "ride"))

(define-category ROW23800
  :mixins (NONVEHICLE-51.4.2)
  :realization (:VERB "row"))

(define-category CRUISE23801
  :mixins (NONVEHICLE-51.4.2-1)
  :realization (:VERB "cruise"))

(define-category CRUISE23803
  :mixins (NONVEHICLE-51.4.2-1)
  :realization (:VERB "cruise"))

(define-category DRIVE23811
  :mixins (NONVEHICLE-51.4.2-1)
  :realization (:VERB "drive"))

(define-category DRIVE23802
  :mixins (NONVEHICLE-51.4.2-1)
  :realization (:VERB "drive"))

(define-category DRIVE23800
  :mixins (NONVEHICLE-51.4.2-1)
  :realization (:VERB "drive"))

(define-category FLY23804
  :mixins (NONVEHICLE-51.4.2-1)
  :realization (:VERB "fly"))

(define-category FLY23805
  :mixins (NONVEHICLE-51.4.2-1)
  :realization (:VERB "fly"))

(define-category FLY23500
  :mixins (NONVEHICLE-51.4.2-1)
  :realization (:VERB "fly"))

(define-category NAVIGATE23803
  :mixins (NONVEHICLE-51.4.2-1)
  :realization (:VERB "navigate"))

(define-category NAVIGATE23800
  :mixins (NONVEHICLE-51.4.2-1)
  :realization (:VERB "navigate"))

(define-category SAIL23802
  :mixins (NONVEHICLE-51.4.2-1)
  :realization (:VERB "sail"))

(define-category SAIL23800
  :mixins (NONVEHICLE-51.4.2-1)
  :realization (:VERB "sail"))

(define-category SAIL23803
  :mixins (NONVEHICLE-51.4.2-1)
  :realization (:VERB "sail"))

(define-category TACK23800
  :mixins (NONVEHICLE-51.4.2-1)
  :realization (:VERB "tack"))

(define-category WING23800
  :mixins (NONVEHICLE-51.4.2-1)
  :realization (:VERB "wing"))

(define-category BEAM23201
  :mixins (NONVERBAL_EXPRESSION-40.2)
  :realization (:VERB "beam"))

(define-category BEAM22900
  :mixins (NONVERBAL_EXPRESSION-40.2)
  :realization (:VERB "beam"))

(define-category BLUBBER22900
  :mixins (NONVERBAL_EXPRESSION-40.2)
  :realization (:VERB "blubber"))

(define-category CACKLE22900
  :mixins (NONVERBAL_EXPRESSION-40.2)
  :realization (:VERB "cackle"))

(define-category CHORTLE22900
  :mixins (NONVERBAL_EXPRESSION-40.2)
  :realization (:VERB "chortle"))

(define-category CHUCKLE22900
  :mixins (NONVERBAL_EXPRESSION-40.2)
  :realization (:VERB "chuckle"))

(define-category COUGH22900
  :mixins (NONVERBAL_EXPRESSION-40.2)
  :realization (:VERB "cough"))

(define-category CRY22902
  :mixins (NONVERBAL_EXPRESSION-40.2)
  :realization (:VERB "cry"))

(define-category CRY22900
  :mixins (NONVERBAL_EXPRESSION-40.2)
  :realization (:VERB "cry"))

(define-category CRY23201
  :mixins (NONVERBAL_EXPRESSION-40.2)
  :realization (:VERB "cry"))

(define-category FROWN22900
  :mixins (NONVERBAL_EXPRESSION-40.2)
  :realization (:VERB "frown"))

(define-category GAPE23900
  :mixins (NONVERBAL_EXPRESSION-40.2)
  :realization (:VERB "gape"))

(define-category GASP22900
  :mixins (NONVERBAL_EXPRESSION-40.2)
  :realization (:VERB "gasp"))

(define-category GAWK23900
  :mixins (NONVERBAL_EXPRESSION-40.2)
  :realization (:VERB "gawk"))

(define-category GIGGLE22900
  :mixins (NONVERBAL_EXPRESSION-40.2)
  :realization (:VERB "giggle"))

(define-category GLARE22900
  :mixins (NONVERBAL_EXPRESSION-40.2)
  :realization (:VERB "glare"))

(define-category GLOWER22900
  :mixins (NONVERBAL_EXPRESSION-40.2)
  :realization (:VERB "glower"))

(define-category GLOWER22901
  :mixins (NONVERBAL_EXPRESSION-40.2)
  :realization (:VERB "glower"))

(define-category GOGGLE23900
  :mixins (NONVERBAL_EXPRESSION-40.2)
  :realization (:VERB "goggle"))

(define-category GRIMACE22900
  :mixins (NONVERBAL_EXPRESSION-40.2)
  :realization (:VERB "grimace"))

(define-category GRIN22900
  :mixins (NONVERBAL_EXPRESSION-40.2)
  :realization (:VERB "grin"))

(define-category GROAN23200
  :mixins (NONVERBAL_EXPRESSION-40.2)
  :realization (:VERB "groan"))

(define-category GROWL23200
  :mixins (NONVERBAL_EXPRESSION-40.2)
  :realization (:VERB "growl"))

(define-category GUFFAW22900
  :mixins (NONVERBAL_EXPRESSION-40.2)
  :realization (:VERB "guffaw"))

(define-category HOWL22900
  :mixins (NONVERBAL_EXPRESSION-40.2)
  :realization (:VERB "howl"))

(define-category HOWL23202
  :mixins (NONVERBAL_EXPRESSION-40.2)
  :realization (:VERB "howl"))

(define-category JEER23200
  :mixins (NONVERBAL_EXPRESSION-40.2)
  :realization (:VERB "jeer"))

(define-category LAUGH22900
  :mixins (NONVERBAL_EXPRESSION-40.2)
  :realization (:VERB "laugh"))

(define-category LOUR22900
  :mixins (NONVERBAL_EXPRESSION-40.2)
  :realization (:VERB "lour"))

(define-category MOAN23200
  :mixins (NONVERBAL_EXPRESSION-40.2)
  :realization (:VERB "moan"))

(define-category POUT22900
  :mixins (NONVERBAL_EXPRESSION-40.2)
  :realization (:VERB "pout"))

(define-category POUT24200
  :mixins (NONVERBAL_EXPRESSION-40.2)
  :realization (:VERB "pout"))

(define-category SCOWL22900
  :mixins (NONVERBAL_EXPRESSION-40.2)
  :realization (:VERB "scowl"))

(define-category SIGH22900
  :mixins (NONVERBAL_EXPRESSION-40.2)
  :realization (:VERB "sigh"))

(define-category SIMPER22900
  :mixins (NONVERBAL_EXPRESSION-40.2)
  :realization (:VERB "simper"))

(define-category SMILE22900
  :mixins (NONVERBAL_EXPRESSION-40.2)
  :realization (:VERB "smile"))

(define-category SMIRK22900
  :mixins (NONVERBAL_EXPRESSION-40.2)
  :realization (:VERB "smirk"))

(define-category SNEEZE22900
  :mixins (NONVERBAL_EXPRESSION-40.2)
  :realization (:VERB "sneeze"))

(define-category SNICKER22900
  :mixins (NONVERBAL_EXPRESSION-40.2)
  :realization (:VERB "snicker"))

(define-category SNIFF22900
  :mixins (NONVERBAL_EXPRESSION-40.2)
  :realization (:VERB "sniff"))

(define-category SNIGGER22900
  :mixins (NONVERBAL_EXPRESSION-40.2)
  :realization (:VERB "snigger"))

(define-category SNIVEL22901
  :mixins (NONVERBAL_EXPRESSION-40.2)
  :realization (:VERB "snivel"))

(define-category SNORE22900
  :mixins (NONVERBAL_EXPRESSION-40.2)
  :realization (:VERB "snore"))

(define-category SNORT23200
  :mixins (NONVERBAL_EXPRESSION-40.2)
  :realization (:VERB "snort"))

(define-category SOB22900
  :mixins (NONVERBAL_EXPRESSION-40.2)
  :realization (:VERB "sob"))

(define-category TITTER22900
  :mixins (NONVERBAL_EXPRESSION-40.2)
  :realization (:VERB "titter"))

(define-category WEEP22900
  :mixins (NONVERBAL_EXPRESSION-40.2)
  :realization (:VERB "weep"))

(define-category WHISTLE23200
  :mixins (NONVERBAL_EXPRESSION-40.2)
  :realization (:VERB "whistle"))

(define-category YAWN22900
  :mixins (NONVERBAL_EXPRESSION-40.2)
  :realization (:VERB "yawn"))

(define-category HEM23200
  :mixins (NONVERBAL_EXPRESSION-40.2)
  :realization (:VERB "hem"))

(define-category ACCEPT24000
  :mixins (OBTAIN-13.5.2)
  :realization (:VERB "accept"))

(define-category ACCRUE24010
  :mixins (OBTAIN-13.5.2)
  :realization (:VERB "accrue"))

(define-category ACCRUE23000
  :mixins (OBTAIN-13.5.2)
  :realization (:VERB "accrue"))

(define-category ACCUMULATE24000
  :mixins (OBTAIN-13.5.2)
  :realization (:VERB "accumulate"))

(define-category APPROPRIATE24000
  :mixins (OBTAIN-13.5.2)
  :realization (:VERB "appropriate"))

(define-category BORROW24000
  :mixins (OBTAIN-13.5.2)
  :realization (:VERB "borrow"))

(define-category CADGE24001
  :mixins (OBTAIN-13.5.2)
  :realization (:VERB "cadge"))

(define-category CADGE24000
  :mixins (OBTAIN-13.5.2)
  :realization (:VERB "cadge"))

(define-category COMMANDEER23500
  :mixins (OBTAIN-13.5.2)
  :realization (:VERB "commandeer"))

(define-category COLLECT24003
  :mixins (OBTAIN-13.5.2)
  :realization (:VERB "collect"))

(define-category COLLECT23501
  :mixins (OBTAIN-13.5.2)
  :realization (:VERB "collect"))

(define-category COLLECT23500
  :mixins (OBTAIN-13.5.2)
  :realization (:VERB "collect"))

(define-category COLLECT24001
  :mixins (OBTAIN-13.5.2)
  :realization (:VERB "collect"))

(define-category COLLECT24000
  :mixins (OBTAIN-13.5.2)
  :realization (:VERB "collect"))

(define-category EXACT23200
  :mixins (OBTAIN-13.5.2)
  :realization (:VERB "exact"))

(define-category GRAB24000
  :mixins (OBTAIN-13.5.2)
  :realization (:VERB "grab"))

(define-category GRAB23500
  :mixins (OBTAIN-13.5.2)
  :realization (:VERB "grab"))

(define-category INHERIT24000
  :mixins (OBTAIN-13.5.2)
  :realization (:VERB "inherit"))

(define-category MAKE24001
  :mixins (OBTAIN-13.5.2)
  :realization (:VERB "make"))

(define-category RECEIVE24000
  :mixins (OBTAIN-13.5.2)
  :realization (:VERB "receive"))

(define-category RECOUP24000
  :mixins (OBTAIN-13.5.2)
  :realization (:VERB "recoup"))

(define-category RECOUP24002
  :mixins (OBTAIN-13.5.2)
  :realization (:VERB "recoup"))

(define-category RECOVER24000
  :mixins (OBTAIN-13.5.2)
  :realization (:VERB "recover"))

(define-category REGAIN24001
  :mixins (OBTAIN-13.5.2)
  :realization (:VERB "regain"))

(define-category REGAIN24000
  :mixins (OBTAIN-13.5.2)
  :realization (:VERB "regain"))

(define-category RETRIEVE23500
  :mixins (OBTAIN-13.5.2)
  :realization (:VERB "retrieve"))

(define-category RETRIEVE24000
  :mixins (OBTAIN-13.5.2)
  :realization (:VERB "retrieve"))

(define-category SEIZE24002
  :mixins (OBTAIN-13.5.2)
  :realization (:VERB "seize"))

(define-category SEIZE24001
  :mixins (OBTAIN-13.5.2)
  :realization (:VERB "seize"))

(define-category SEIZE23501
  :mixins (OBTAIN-13.5.2)
  :realization (:VERB "seize"))

(define-category SEIZE23500
  :mixins (OBTAIN-13.5.2)
  :realization (:VERB "seize"))

(define-category SELECT23100
  :mixins (OBTAIN-13.5.2)
  :realization (:VERB "select"))

(define-category SNATCH23500
  :mixins (OBTAIN-13.5.2)
  :realization (:VERB "snatch"))

(define-category SOURCE24000
  :mixins (OBTAIN-13.5.2)
  :realization (:VERB "source"))

(define-category ARROGATE24000
  :mixins (OBTAIN-13.5.2)
  :realization (:VERB "arrogate"))

(define-category HIJACK24000
  :mixins (OBTAIN-13.5.2)
  :realization (:VERB "hijack"))

(define-category HIJACK23500
  :mixins (OBTAIN-13.5.2)
  :realization (:VERB "hijack"))

(define-category ACQUIRE24000
  :mixins (OBTAIN-13.5.2-1)
  :realization (:VERB "acquire"))

(define-category OBTAIN24000
  :mixins (OBTAIN-13.5.2-1)
  :realization (:VERB "obtain"))

(define-category PURCHASE24000
  :mixins (OBTAIN-13.5.2-1)
  :realization (:VERB "purchase"))

(define-category FALL24003
  :mixins (OCCUR-48.3)
  :realization (:VERB "fall"))

(define-category TAKE_PLACE23000
  :mixins (OCCUR-48.3)
  :realization (:VERB "take_place"))

(define-category ENSUE24200
  :mixins (OCCUR-48.3-1)
  :realization (:VERB "ensue"))

(define-category EVENTUATE24200
  :mixins (OCCUR-48.3-1)
  :realization (:VERB "eventuate"))

(define-category HAPPEN23001
  :mixins (OCCUR-48.3-1)
  :realization (:VERB "happen"))

(define-category HAPPEN23000
  :mixins (OCCUR-48.3-1)
  :realization (:VERB "happen"))

(define-category OCCUR23000
  :mixins (OCCUR-48.3-1)
  :realization (:VERB "occur"))

(define-category TRANSPIRE23009
  :mixins (OCCUR-48.3-1)
  :realization (:VERB "transpire"))

(define-category ORBIT23800
  :mixins (ORBIT-51.9.2)
  :realization (:VERB "orbit"))

(define-category REVOLVE23801
  :mixins (ORBIT-51.9.2)
  :realization (:VERB "revolve"))

(define-category ROTATE23801
  :mixins (ORBIT-51.9.2)
  :realization (:VERB "rotate"))

(define-category TWIRL23801
  :mixins (ORBIT-51.9.2)
  :realization (:VERB "twirl"))

(define-category ANNOUNCE23202
  :mixins (ORDER-58.3)
  :realization (:VERB "announce"))

(define-category DECLARE23205
  :mixins (ORDER-58.3)
  :realization (:VERB "declare"))

(define-category DEMAND23200
  :mixins (ORDER-58.3)
  :realization (:VERB "demand"))

(define-category DEMAND23202
  :mixins (ORDER-58.3)
  :realization (:VERB "demand"))

(define-category MANDATE23202
  :mixins (ORDER-58.3)
  :realization (:VERB "mandate"))

(define-category AUTHORIZE24100
  :mixins (ORDER-58.3-1)
  :realization (:VERB "authorize"))

(define-category AUTHORIZE23200
  :mixins (ORDER-58.3-1)
  :realization (:VERB "authorize"))

(define-category COMMAND23200
  :mixins (ORDER-58.3-1)
  :realization (:VERB "command"))

(define-category COMMISSION24100
  :mixins (ORDER-58.3-1)
  :realization (:VERB "commission"))

(define-category ORDER23201
  :mixins (ORDER-58.3-1)
  :realization (:VERB "order"))

(define-category REQUIRE23400
  :mixins (ORDER-58.3-1)
  :realization (:VERB "require"))

(define-category REQUIRE23200
  :mixins (ORDER-58.3-1)
  :realization (:VERB "require"))

(define-category REQUIRE23201
  :mixins (ORDER-58.3-1)
  :realization (:VERB "require"))

(define-category BEGGAR24000
  :mixins (ORPHAN-29.7)
  :realization (:VERB "beggar"))

(define-category CRIPPLE22900
  :mixins (ORPHAN-29.7)
  :realization (:VERB "cripple"))

(define-category CUCKOLD24100
  :mixins (ORPHAN-29.7)
  :realization (:VERB "cuckold"))

(define-category KNIGHT24101
  :mixins (ORPHAN-29.7)
  :realization (:VERB "knight"))

(define-category MARTYR22900
  :mixins (ORPHAN-29.7)
  :realization (:VERB "martyr"))

(define-category MARTYR23500
  :mixins (ORPHAN-29.7)
  :realization (:VERB "martyr"))

(define-category ORPHAN24000
  :mixins (ORPHAN-29.7)
  :realization (:VERB "orphan"))

(define-category OUTLAW24100
  :mixins (ORPHAN-29.7)
  :realization (:VERB "outlaw"))

(define-category RECRUIT23300
  :mixins (ORPHAN-29.7)
  :realization (:VERB "recruit"))

(define-category RECRUIT24000
  :mixins (ORPHAN-29.7)
  :realization (:VERB "recruit"))

(define-category WHORE23201
  :mixins (ORPHAN-29.7)
  :realization (:VERB "whore"))

(define-category WIDOW23000
  :mixins (ORPHAN-29.7)
  :realization (:VERB "widow"))

(define-category ABATE23000
  :mixins (OTHER_COS-45.4)
  :realization (:VERB "abate"))

(define-category ABATE23001
  :mixins (OTHER_COS-45.4)
  :realization (:VERB "abate"))

(define-category ACCELERATE23001
  :mixins (OTHER_COS-45.4)
  :realization (:VERB "accelerate"))

(define-category ACCELERATE23000
  :mixins (OTHER_COS-45.4)
  :realization (:VERB "accelerate"))

(define-category ACETIFY23000
  :mixins (OTHER_COS-45.4)
  :realization (:VERB "acetify"))

(define-category ACETIFY23900
  :mixins (OTHER_COS-45.4)
  :realization (:VERB "acetify"))

(define-category ACIDIFY23000
  :mixins (OTHER_COS-45.4)
  :realization (:VERB "acidify"))

(define-category ACIDIFY23900
  :mixins (OTHER_COS-45.4)
  :realization (:VERB "acidify"))

(define-category ADVANCE23001
  :mixins (OTHER_COS-45.4)
  :realization (:VERB "advance"))

(define-category ADVANCE23009
  :mixins (OTHER_COS-45.4)
  :realization (:VERB "advance"))

(define-category ADVANCE23000
  :mixins (OTHER_COS-45.4)
  :realization (:VERB "advance"))

(define-category ADVANCE23008
  :mixins (OTHER_COS-45.4)
  :realization (:VERB "advance"))

(define-category AGE23002
  :mixins (OTHER_COS-45.4)
  :realization (:VERB "age"))

(define-category AGE23000
  :mixins (OTHER_COS-45.4)
  :realization (:VERB "age"))

(define-category AGE23001
  :mixins (OTHER_COS-45.4)
  :realization (:VERB "age"))

(define-category AGGLOMERATE23500
  :mixins (OTHER_COS-45.4)
  :realization (:VERB "agglomerate"))

(define-category AIR23000
  :mixins (OTHER_COS-45.4)
  :realization (:VERB "air"))

(define-category AIR23001
  :mixins (OTHER_COS-45.4)
  :realization (:VERB "air"))

(define-category AIR23900
  :mixins (OTHER_COS-45.4)
  :realization (:VERB "air"))

(define-category ALKALIFY23000
  :mixins (OTHER_COS-45.4)
  :realization (:VERB "alkalify"))

(define-category ALTER23600
  :mixins (OTHER_COS-45.4)
  :realization (:VERB "alter"))

(define-category ALTER23000
  :mixins (OTHER_COS-45.4)
  :realization (:VERB "alter"))

(define-category ALTER23001
  :mixins (OTHER_COS-45.4)
  :realization (:VERB "alter"))

(define-category AMELIORATE23000
  :mixins (OTHER_COS-45.4)
  :realization (:VERB "ameliorate"))

(define-category AMELIORATE23001
  :mixins (OTHER_COS-45.4)
  :realization (:VERB "ameliorate"))

(define-category AMERICANIZE23000
  :mixins (OTHER_COS-45.4)
  :realization (:VERB "americanize"))

(define-category AMERICANIZE23001
  :mixins (OTHER_COS-45.4)
  :realization (:VERB "americanize"))

(define-category ATTENUATE23000
  :mixins (OTHER_COS-45.4)
  :realization (:VERB "attenuate"))

(define-category ATTENUATE23001
  :mixins (OTHER_COS-45.4)
  :realization (:VERB "attenuate"))

(define-category BALANCE24201
  :mixins (OTHER_COS-45.4)
  :realization (:VERB "balance"))

(define-category BALANCE24200
  :mixins (OTHER_COS-45.4)
  :realization (:VERB "balance"))

(define-category BLACKEN23001
  :mixins (OTHER_COS-45.4)
  :realization (:VERB "blacken"))

(define-category BLACKEN23000
  :mixins (OTHER_COS-45.4)
  :realization (:VERB "blacken"))

(define-category BLUNT23000
  :mixins (OTHER_COS-45.4)
  :realization (:VERB "blunt"))

(define-category BLUNT23500
  :mixins (OTHER_COS-45.4)
  :realization (:VERB "blunt"))

(define-category BLUR23000
  :mixins (OTHER_COS-45.4)
  :realization (:VERB "blur"))

(define-category BLUR23001
  :mixins (OTHER_COS-45.4)
  :realization (:VERB "blur"))

(define-category BLUR23900
  :mixins (OTHER_COS-45.4)
  :realization (:VERB "blur"))

(define-category BLUR23901
  :mixins (OTHER_COS-45.4)
  :realization (:VERB "blur"))

(define-category BRIGHTEN24300
  :mixins (OTHER_COS-45.4)
  :realization (:VERB "brighten"))

(define-category BRIGHTEN23001
  :mixins (OTHER_COS-45.4)
  :realization (:VERB "brighten"))

(define-category BROADEN23000
  :mixins (OTHER_COS-45.4)
  :realization (:VERB "broaden"))

(define-category BROADEN23001
  :mixins (OTHER_COS-45.4)
  :realization (:VERB "broaden"))

(define-category BURN23003
  :mixins (OTHER_COS-45.4)
  :realization (:VERB "burn"))

(define-category BURN22900
  :mixins (OTHER_COS-45.4)
  :realization (:VERB "burn"))

(define-category BURN24100
  :mixins (OTHER_COS-45.4)
  :realization (:VERB "burn"))

(define-category BURN23001
  :mixins (OTHER_COS-45.4)
  :realization (:VERB "burn"))

(define-category BURN23000
  :mixins (OTHER_COS-45.4)
  :realization (:VERB "burn"))

(define-category BURN24301
  :mixins (OTHER_COS-45.4)
  :realization (:VERB "burn"))

(define-category BURN23002
  :mixins (OTHER_COS-45.4)
  :realization (:VERB "burn"))

(define-category BURST23001
  :mixins (OTHER_COS-45.4)
  :realization (:VERB "burst"))

(define-category BURST23804
  :mixins (OTHER_COS-45.4)
  :realization (:VERB "burst"))

(define-category BURST23009
  :mixins (OTHER_COS-45.4)
  :realization (:VERB "burst"))

(define-category BURST23000
  :mixins (OTHER_COS-45.4)
  :realization (:VERB "burst"))

(define-category CALCIFY23001
  :mixins (OTHER_COS-45.4)
  :realization (:VERB "calcify"))

(define-category CALCIFY23000
  :mixins (OTHER_COS-45.4)
  :realization (:VERB "calcify"))

(define-category CALCIFY23002
  :mixins (OTHER_COS-45.4)
  :realization (:VERB "calcify"))

(define-category CAPSIZE23800
  :mixins (OTHER_COS-45.4)
  :realization (:VERB "capsize"))

(define-category CARAMELIZE23000
  :mixins (OTHER_COS-45.4)
  :realization (:VERB "caramelize"))

(define-category CARAMELIZE23001
  :mixins (OTHER_COS-45.4)
  :realization (:VERB "caramelize"))

(define-category CARBONIZE23000
  :mixins (OTHER_COS-45.4)
  :realization (:VERB "carbonize"))

(define-category CENTRALIZE23000
  :mixins (OTHER_COS-45.4)
  :realization (:VERB "centralize"))

(define-category CHANGE23008
  :mixins (OTHER_COS-45.4)
  :realization (:VERB "change"))

(define-category CHANGE23002
  :mixins (OTHER_COS-45.4)
  :realization (:VERB "change"))

(define-category CHANGE23001
  :mixins (OTHER_COS-45.4)
  :realization (:VERB "change"))

(define-category CHANGE23000
  :mixins (OTHER_COS-45.4)
  :realization (:VERB "change"))

(define-category CHAR23000
  :mixins (OTHER_COS-45.4)
  :realization (:VERB "char"))

(define-category CHAR24300
  :mixins (OTHER_COS-45.4)
  :realization (:VERB "char"))

(define-category CHEAPEN23000
  :mixins (OTHER_COS-45.4)
  :realization (:VERB "cheapen"))

(define-category CHILL23000
  :mixins (OTHER_COS-45.4)
  :realization (:VERB "chill"))

(define-category CHILL23001
  :mixins (OTHER_COS-45.4)
  :realization (:VERB "chill"))

(define-category CLARIFY23002
  :mixins (OTHER_COS-45.4)
  :realization (:VERB "clarify"))

(define-category CLARIFY23200
  :mixins (OTHER_COS-45.4)
  :realization (:VERB "clarify"))

(define-category CLEAN23002
  :mixins (OTHER_COS-45.4)
  :realization (:VERB "clean"))

(define-category CLEAN23502
  :mixins (OTHER_COS-45.4)
  :realization (:VERB "clean"))

(define-category CLEAN24200
  :mixins (OTHER_COS-45.4)
  :realization (:VERB "clean"))

(define-category CLEAN22900
  :mixins (OTHER_COS-45.4)
  :realization (:VERB "clean"))

(define-category CLEAN23001
  :mixins (OTHER_COS-45.4)
  :realization (:VERB "clean"))

(define-category CLEAN23500
  :mixins (OTHER_COS-45.4)
  :realization (:VERB "clean"))

(define-category CLEAR23003
  :mixins (OTHER_COS-45.4)
  :realization (:VERB "clear"))

(define-category CLEAR24012
  :mixins (OTHER_COS-45.4)
  :realization (:VERB "clear"))

(define-category CLEAR23905
  :mixins (OTHER_COS-45.4)
  :realization (:VERB "clear"))

(define-category CLEAR24300
  :mixins (OTHER_COS-45.4)
  :realization (:VERB "clear"))

(define-category CLOG23500
  :mixins (OTHER_COS-45.4)
  :realization (:VERB "clog"))

(define-category CLOSE23910
  :mixins (OTHER_COS-45.4)
  :realization (:VERB "close"))

(define-category CLOSE23506
  :mixins (OTHER_COS-45.4)
  :realization (:VERB "close"))

(define-category CLOSE23500
  :mixins (OTHER_COS-45.4)
  :realization (:VERB "close"))

(define-category CLOSE24100
  :mixins (OTHER_COS-45.4)
  :realization (:VERB "close"))

(define-category CLOUD23004
  :mixins (OTHER_COS-45.4)
  :realization (:VERB "cloud"))

(define-category CLOUD24300
  :mixins (OTHER_COS-45.4)
  :realization (:VERB "cloud"))

(define-category CLOUD23900
  :mixins (OTHER_COS-45.4)
  :realization (:VERB "cloud"))

(define-category COAGULATE23000
  :mixins (OTHER_COS-45.4)
  :realization (:VERB "coagulate"))

(define-category COARSEN23500
  :mixins (OTHER_COS-45.4)
  :realization (:VERB "coarsen"))

(define-category COLLAPSE23803
  :mixins (OTHER_COS-45.4)
  :realization (:VERB "collapse"))

(define-category COLLAPSE23802
  :mixins (OTHER_COS-45.4)
  :realization (:VERB "collapse"))

(define-category COLLAPSE23800
  :mixins (OTHER_COS-45.4)
  :realization (:VERB "collapse"))

(define-category COLLECT23501
  :mixins (OTHER_COS-45.4)
  :realization (:VERB "collect"))

(define-category COLLECT24000
  :mixins (OTHER_COS-45.4)
  :realization (:VERB "collect"))

(define-category COMBUST23700
  :mixins (OTHER_COS-45.4)
  :realization (:VERB "combust"))

(define-category COMBUST23000
  :mixins (OTHER_COS-45.4)
  :realization (:VERB "combust"))

(define-category COMBUST24300
  :mixins (OTHER_COS-45.4)
  :realization (:VERB "combust"))

(define-category COMBUST24302
  :mixins (OTHER_COS-45.4)
  :realization (:VERB "combust"))

(define-category COMPRESS23500
  :mixins (OTHER_COS-45.4)
  :realization (:VERB "compress"))

(define-category COMPRESS23501
  :mixins (OTHER_COS-45.4)
  :realization (:VERB "compress"))

(define-category CONDENSE23007
  :mixins (OTHER_COS-45.4)
  :realization (:VERB "condense"))

(define-category CONDENSE23003
  :mixins (OTHER_COS-45.4)
  :realization (:VERB "condense"))

(define-category CONDENSE23005
  :mixins (OTHER_COS-45.4)
  :realization (:VERB "condense"))

(define-category CONDENSE23001
  :mixins (OTHER_COS-45.4)
  :realization (:VERB "condense"))

(define-category CONGEAL23000
  :mixins (OTHER_COS-45.4)
  :realization (:VERB "congeal"))

(define-category CONTRACT23500
  :mixins (OTHER_COS-45.4)
  :realization (:VERB "contract"))

(define-category CONTRACT23004
  :mixins (OTHER_COS-45.4)
  :realization (:VERB "contract"))

(define-category CONTRACT23504
  :mixins (OTHER_COS-45.4)
  :realization (:VERB "contract"))

(define-category COOL23000
  :mixins (OTHER_COS-45.4)
  :realization (:VERB "cool"))

(define-category COOL23001
  :mixins (OTHER_COS-45.4)
  :realization (:VERB "cool"))

(define-category CORRODE23000
  :mixins (OTHER_COS-45.4)
  :realization (:VERB "corrode"))

(define-category CORRODE23001
  :mixins (OTHER_COS-45.4)
  :realization (:VERB "corrode"))

(define-category CRIMSON22900
  :mixins (OTHER_COS-45.4)
  :realization (:VERB "crimson"))

(define-category CRISP23000
  :mixins (OTHER_COS-45.4)
  :realization (:VERB "crisp"))

(define-category CRUMBLE23800
  :mixins (OTHER_COS-45.4)
  :realization (:VERB "crumble"))

(define-category CRUMBLE23000
  :mixins (OTHER_COS-45.4)
  :realization (:VERB "crumble"))

(define-category CRYSTALLIZE23000
  :mixins (OTHER_COS-45.4)
  :realization (:VERB "crystallize"))

(define-category CRYSTALLIZE23001
  :mixins (OTHER_COS-45.4)
  :realization (:VERB "crystallize"))

(define-category DAMPEN23001
  :mixins (OTHER_COS-45.4)
  :realization (:VERB "dampen"))

(define-category DARKEN23001
  :mixins (OTHER_COS-45.4)
  :realization (:VERB "darken"))

(define-category DARKEN23000
  :mixins (OTHER_COS-45.4)
  :realization (:VERB "darken"))

(define-category DE-ESCALATE23000
  :mixins (OTHER_COS-45.4)
  :realization (:VERB "de-escalate"))

(define-category DECELERATE23001
  :mixins (OTHER_COS-45.4)
  :realization (:VERB "decelerate"))

(define-category DECELERATE23000
  :mixins (OTHER_COS-45.4)
  :realization (:VERB "decelerate"))

(define-category DECENTRALIZE23000
  :mixins (OTHER_COS-45.4)
  :realization (:VERB "decentralize"))

(define-category DECOMPRESS23000
  :mixins (OTHER_COS-45.4)
  :realization (:VERB "decompress"))

(define-category DECOMPRESS23500
  :mixins (OTHER_COS-45.4)
  :realization (:VERB "decompress"))

(define-category DECREASE23001
  :mixins (OTHER_COS-45.4)
  :realization (:VERB "decrease"))

(define-category DECREASE23000
  :mixins (OTHER_COS-45.4)
  :realization (:VERB "decrease"))

(define-category DEEPEN23002
  :mixins (OTHER_COS-45.4)
  :realization (:VERB "deepen"))

(define-category DEEPEN23003
  :mixins (OTHER_COS-45.4)
  :realization (:VERB "deepen"))

(define-category DEFLATE23000
  :mixins (OTHER_COS-45.4)
  :realization (:VERB "deflate"))

(define-category DEFLATE23500
  :mixins (OTHER_COS-45.4)
  :realization (:VERB "deflate"))

(define-category DEFLATE23501
  :mixins (OTHER_COS-45.4)
  :realization (:VERB "deflate"))

(define-category DEFROST23000
  :mixins (OTHER_COS-45.4)
  :realization (:VERB "defrost"))

(define-category DEGENERATE22900
  :mixins (OTHER_COS-45.4)
  :realization (:VERB "degenerate"))

(define-category DEGRADE23000
  :mixins (OTHER_COS-45.4)
  :realization (:VERB "degrade"))

(define-category DEMAGNETIZE23000
  :mixins (OTHER_COS-45.4)
  :realization (:VERB "demagnetize"))

(define-category DEMOCRATIZE24101
  :mixins (OTHER_COS-45.4)
  :realization (:VERB "democratize"))

(define-category DEMOCRATIZE24100
  :mixins (OTHER_COS-45.4)
  :realization (:VERB "democratize"))

(define-category DEPRESSURIZE23000
  :mixins (OTHER_COS-45.4)
  :realization (:VERB "depressurize"))

(define-category DERAIL23801
  :mixins (OTHER_COS-45.4)
  :realization (:VERB "derail"))

(define-category DESICCATE23000
  :mixins (OTHER_COS-45.4)
  :realization (:VERB "desiccate"))

(define-category DESTABILIZE23000
  :mixins (OTHER_COS-45.4)
  :realization (:VERB "destabilize"))

(define-category DESTABILIZE23001
  :mixins (OTHER_COS-45.4)
  :realization (:VERB "destabilize"))

(define-category DETONATE23000
  :mixins (OTHER_COS-45.4)
  :realization (:VERB "detonate"))

(define-category DIM23001
  :mixins (OTHER_COS-45.4)
  :realization (:VERB "dim"))

(define-category DIM23901
  :mixins (OTHER_COS-45.4)
  :realization (:VERB "dim"))

(define-category DIMINISH23000
  :mixins (OTHER_COS-45.4)
  :realization (:VERB "diminish"))

(define-category DIRTY23500
  :mixins (OTHER_COS-45.4)
  :realization (:VERB "dirty"))

(define-category DISINTEGRATE23000
  :mixins (OTHER_COS-45.4)
  :realization (:VERB "disintegrate"))

(define-category DISSIPATE23800
  :mixins (OTHER_COS-45.4)
  :realization (:VERB "dissipate"))

(define-category DISSIPATE23801
  :mixins (OTHER_COS-45.4)
  :realization (:VERB "dissipate"))

(define-category DISSOLVE23000
  :mixins (OTHER_COS-45.4)
  :realization (:VERB "dissolve"))

(define-category DISSOLVE23001
  :mixins (OTHER_COS-45.4)
  :realization (:VERB "dissolve"))

(define-category DIVIDE23500
  :mixins (OTHER_COS-45.4)
  :realization (:VERB "divide"))

(define-category DIVIDE24100
  :mixins (OTHER_COS-45.4)
  :realization (:VERB "divide"))

(define-category DOUBLE23000
  :mixins (OTHER_COS-45.4)
  :realization (:VERB "double"))

(define-category DRAIN23001
  :mixins (OTHER_COS-45.4)
  :realization (:VERB "drain"))

(define-category DRAIN23800
  :mixins (OTHER_COS-45.4)
  :realization (:VERB "drain"))

(define-category DULL23502
  :mixins (OTHER_COS-45.4)
  :realization (:VERB "dull"))

(define-category DULL23000
  :mixins (OTHER_COS-45.4)
  :realization (:VERB "dull"))

(define-category DULL23501
  :mixins (OTHER_COS-45.4)
  :realization (:VERB "dull"))

(define-category EASE23700
  :mixins (OTHER_COS-45.4)
  :realization (:VERB "ease"))

(define-category EASE23000
  :mixins (OTHER_COS-45.4)
  :realization (:VERB "ease"))

(define-category EMPTY23000
  :mixins (OTHER_COS-45.4)
  :realization (:VERB "empty"))

(define-category EMPTY23001
  :mixins (OTHER_COS-45.4)
  :realization (:VERB "empty"))

(define-category EMULSIFY23000
  :mixins (OTHER_COS-45.4)
  :realization (:VERB "emulsify"))

(define-category EMULSIFY23001
  :mixins (OTHER_COS-45.4)
  :realization (:VERB "emulsify"))

(define-category ENERGIZE22900
  :mixins (OTHER_COS-45.4)
  :realization (:VERB "energize"))

(define-category ENLARGE23000
  :mixins (OTHER_COS-45.4)
  :realization (:VERB "enlarge"))

(define-category ENLARGE23001
  :mixins (OTHER_COS-45.4)
  :realization (:VERB "enlarge"))

(define-category ENLARGE23003
  :mixins (OTHER_COS-45.4)
  :realization (:VERB "enlarge"))

(define-category EQUALIZE23000
  :mixins (OTHER_COS-45.4)
  :realization (:VERB "equalize"))

(define-category EVAPORATE23000
  :mixins (OTHER_COS-45.4)
  :realization (:VERB "evaporate"))

(define-category EVEN23001
  :mixins (OTHER_COS-45.4)
  :realization (:VERB "even"))

(define-category EVEN23000
  :mixins (OTHER_COS-45.4)
  :realization (:VERB "even"))

(define-category EVEN23500
  :mixins (OTHER_COS-45.4)
  :realization (:VERB "even"))

(define-category EXPAND23012
  :mixins (OTHER_COS-45.4)
  :realization (:VERB "expand"))

(define-category EXPAND23007
  :mixins (OTHER_COS-45.4)
  :realization (:VERB "expand"))

(define-category EXPAND23800
  :mixins (OTHER_COS-45.4)
  :realization (:VERB "expand"))

(define-category EXPLODE23500
  :mixins (OTHER_COS-45.4)
  :realization (:VERB "explode"))

(define-category EXPLODE23000
  :mixins (OTHER_COS-45.4)
  :realization (:VERB "explode"))

(define-category EXPLODE23001
  :mixins (OTHER_COS-45.4)
  :realization (:VERB "explode"))

(define-category FADE23001
  :mixins (OTHER_COS-45.4)
  :realization (:VERB "fade"))

(define-category FADE23002
  :mixins (OTHER_COS-45.4)
  :realization (:VERB "fade"))

(define-category FATTEN23400
  :mixins (OTHER_COS-45.4)
  :realization (:VERB "fatten"))

(define-category FEDERATE23000
  :mixins (OTHER_COS-45.4)
  :realization (:VERB "federate"))

(define-category FILL23000
  :mixins (OTHER_COS-45.4)
  :realization (:VERB "fill"))

(define-category FILL23001
  :mixins (OTHER_COS-45.4)
  :realization (:VERB "fill"))

(define-category FIRM23001
  :mixins (OTHER_COS-45.4)
  :realization (:VERB "firm"))

(define-category FIRM23000
  :mixins (OTHER_COS-45.4)
  :realization (:VERB "firm"))

(define-category FLATTEN23000
  :mixins (OTHER_COS-45.4)
  :realization (:VERB "flatten"))

(define-category FLATTEN23001
  :mixins (OTHER_COS-45.4)
  :realization (:VERB "flatten"))

(define-category FLOOD23001
  :mixins (OTHER_COS-45.4)
  :realization (:VERB "flood"))

(define-category FLOOD23000
  :mixins (OTHER_COS-45.4)
  :realization (:VERB "flood"))

(define-category FLOOD23500
  :mixins (OTHER_COS-45.4)
  :realization (:VERB "flood"))

(define-category FOSSILIZE23000
  :mixins (OTHER_COS-45.4)
  :realization (:VERB "fossilize"))

(define-category FRAY23500
  :mixins (OTHER_COS-45.4)
  :realization (:VERB "fray"))

(define-category FRESHEN22900
  :mixins (OTHER_COS-45.4)
  :realization (:VERB "freshen"))

(define-category FRESHEN22902
  :mixins (OTHER_COS-45.4)
  :realization (:VERB "freshen"))

(define-category FRESHEN23000
  :mixins (OTHER_COS-45.4)
  :realization (:VERB "freshen"))

(define-category FROST23500
  :mixins (OTHER_COS-45.4)
  :realization (:VERB "frost"))

(define-category FRUCTIFY22900
  :mixins (OTHER_COS-45.4)
  :realization (:VERB "fructify"))

(define-category FRUCTIFY23001
  :mixins (OTHER_COS-45.4)
  :realization (:VERB "fructify"))

(define-category FRUCTIFY23000
  :mixins (OTHER_COS-45.4)
  :realization (:VERB "fructify"))

(define-category FUSE23002
  :mixins (OTHER_COS-45.4)
  :realization (:VERB "fuse"))

(define-category FUSE23003
  :mixins (OTHER_COS-45.4)
  :realization (:VERB "fuse"))

(define-category GASIFY23000
  :mixins (OTHER_COS-45.4)
  :realization (:VERB "gasify"))

(define-category GELATINIZE23001
  :mixins (OTHER_COS-45.4)
  :realization (:VERB "gelatinize"))

(define-category GELATINIZE23000
  :mixins (OTHER_COS-45.4)
  :realization (:VERB "gelatinize"))

(define-category GLADDEN23700
  :mixins (OTHER_COS-45.4)
  :realization (:VERB "gladden"))

(define-category GLADDEN23701
  :mixins (OTHER_COS-45.4)
  :realization (:VERB "gladden"))

(define-category GRANULATE23001
  :mixins (OTHER_COS-45.4)
  :realization (:VERB "granulate"))

(define-category GRANULATE23000
  :mixins (OTHER_COS-45.4)
  :realization (:VERB "granulate"))

(define-category GRAY23000
  :mixins (OTHER_COS-45.4)
  :realization (:VERB "gray"))

(define-category GRAY23001
  :mixins (OTHER_COS-45.4)
  :realization (:VERB "gray"))

(define-category GROW23600
  :mixins (OTHER_COS-45.4)
  :realization (:VERB "grow"))

(define-category GROW23004
  :mixins (OTHER_COS-45.4)
  :realization (:VERB "grow"))

(define-category GROW23001
  :mixins (OTHER_COS-45.4)
  :realization (:VERB "grow"))

(define-category GROW23002
  :mixins (OTHER_COS-45.4)
  :realization (:VERB "grow"))

(define-category HALT23801
  :mixins (OTHER_COS-45.4)
  :realization (:VERB "halt"))

(define-category HALT23805
  :mixins (OTHER_COS-45.4)
  :realization (:VERB "halt"))

(define-category HARDEN23004
  :mixins (OTHER_COS-45.4)
  :realization (:VERB "harden"))

(define-category HARDEN23001
  :mixins (OTHER_COS-45.4)
  :realization (:VERB "harden"))

(define-category HARDEN23000
  :mixins (OTHER_COS-45.4)
  :realization (:VERB "harden"))

(define-category HARMONIZE23002
  :mixins (OTHER_COS-45.4)
  :realization (:VERB "harmonize"))

(define-category HARMONIZE23003
  :mixins (OTHER_COS-45.4)
  :realization (:VERB "harmonize"))

(define-category HARMONIZE24200
  :mixins (OTHER_COS-45.4)
  :realization (:VERB "harmonize"))

(define-category HASTEN23600
  :mixins (OTHER_COS-45.4)
  :realization (:VERB "hasten"))

(define-category HASTEN24100
  :mixins (OTHER_COS-45.4)
  :realization (:VERB "hasten"))

(define-category HASTEN23800
  :mixins (OTHER_COS-45.4)
  :realization (:VERB "hasten"))

(define-category HASTEN23000
  :mixins (OTHER_COS-45.4)
  :realization (:VERB "hasten"))

(define-category HEAL22901
  :mixins (OTHER_COS-45.4)
  :realization (:VERB "heal"))

(define-category HEAL22900
  :mixins (OTHER_COS-45.4)
  :realization (:VERB "heal"))

(define-category HEAL23000
  :mixins (OTHER_COS-45.4)
  :realization (:VERB "heal"))

(define-category HEAT23000
  :mixins (OTHER_COS-45.4)
  :realization (:VERB "heat"))

(define-category HEAT24000
  :mixins (OTHER_COS-45.4)
  :realization (:VERB "heat"))

(define-category HEAT23001
  :mixins (OTHER_COS-45.4)
  :realization (:VERB "heat"))

(define-category HEIGHTEN23004
  :mixins (OTHER_COS-45.4)
  :realization (:VERB "heighten"))

(define-category HEIGHTEN23005
  :mixins (OTHER_COS-45.4)
  :realization (:VERB "heighten"))

(define-category HEIGHTEN23000
  :mixins (OTHER_COS-45.4)
  :realization (:VERB "heighten"))

(define-category HEIGHTEN23002
  :mixins (OTHER_COS-45.4)
  :realization (:VERB "heighten"))

(define-category HEIGHTEN23001
  :mixins (OTHER_COS-45.4)
  :realization (:VERB "heighten"))

(define-category HUSH23900
  :mixins (OTHER_COS-45.4)
  :realization (:VERB "hush"))

(define-category HUSH23001
  :mixins (OTHER_COS-45.4)
  :realization (:VERB "hush"))

(define-category HUSH23000
  :mixins (OTHER_COS-45.4)
  :realization (:VERB "hush"))

(define-category HYBRIDIZE23500
  :mixins (OTHER_COS-45.4)
  :realization (:VERB "hybridize"))

(define-category HYDRATE23000
  :mixins (OTHER_COS-45.4)
  :realization (:VERB "hydrate"))

(define-category HYDRATE23002
  :mixins (OTHER_COS-45.4)
  :realization (:VERB "hydrate"))

(define-category HYDRATE23003
  :mixins (OTHER_COS-45.4)
  :realization (:VERB "hydrate"))

(define-category IGNITE24301
  :mixins (OTHER_COS-45.4)
  :realization (:VERB "ignite"))

(define-category IGNITE24300
  :mixins (OTHER_COS-45.4)
  :realization (:VERB "ignite"))

(define-category IMPROVE23000
  :mixins (OTHER_COS-45.4)
  :realization (:VERB "improve"))

(define-category IMPROVE23001
  :mixins (OTHER_COS-45.4)
  :realization (:VERB "improve"))

(define-category INCREASE23002
  :mixins (OTHER_COS-45.4)
  :realization (:VERB "increase"))

(define-category INCREASE23000
  :mixins (OTHER_COS-45.4)
  :realization (:VERB "increase"))

(define-category INCUBATE22900
  :mixins (OTHER_COS-45.4)
  :realization (:VERB "incubate"))

(define-category INCUBATE23002
  :mixins (OTHER_COS-45.4)
  :realization (:VERB "incubate"))

(define-category INDURATE23000
  :mixins (OTHER_COS-45.4)
  :realization (:VERB "indurate"))

(define-category INDURATE23001
  :mixins (OTHER_COS-45.4)
  :realization (:VERB "indurate"))

(define-category INFLATE23002
  :mixins (OTHER_COS-45.4)
  :realization (:VERB "inflate"))

(define-category INFLATE23000
  :mixins (OTHER_COS-45.4)
  :realization (:VERB "inflate"))

(define-category INTENSIFY23000
  :mixins (OTHER_COS-45.4)
  :realization (:VERB "intensify"))

(define-category INTENSIFY23001
  :mixins (OTHER_COS-45.4)
  :realization (:VERB "intensify"))

(define-category INTENSIFY23002
  :mixins (OTHER_COS-45.4)
  :realization (:VERB "intensify"))

(define-category IONIZE23000
  :mixins (OTHER_COS-45.4)
  :realization (:VERB "ionize"))

(define-category KINDLE24300
  :mixins (OTHER_COS-45.4)
  :realization (:VERB "kindle"))

(define-category KINDLE24301
  :mixins (OTHER_COS-45.4)
  :realization (:VERB "kindle"))

(define-category LENGTHEN23000
  :mixins (OTHER_COS-45.4)
  :realization (:VERB "lengthen"))

(define-category LENGTHEN23001
  :mixins (OTHER_COS-45.4)
  :realization (:VERB "lengthen"))

(define-category LESSEN23001
  :mixins (OTHER_COS-45.4)
  :realization (:VERB "lessen"))

(define-category LESSEN23002
  :mixins (OTHER_COS-45.4)
  :realization (:VERB "lessen"))

(define-category LESSEN23000
  :mixins (OTHER_COS-45.4)
  :realization (:VERB "lessen"))

(define-category LEVEL23000
  :mixins (OTHER_COS-45.4)
  :realization (:VERB "level"))

(define-category LEVEL23501
  :mixins (OTHER_COS-45.4)
  :realization (:VERB "level"))

(define-category LEVITATE23800
  :mixins (OTHER_COS-45.4)
  :realization (:VERB "levitate"))

(define-category LIQUEFY23000
  :mixins (OTHER_COS-45.4)
  :realization (:VERB "liquefy"))

(define-category LIQUEFY23001
  :mixins (OTHER_COS-45.4)
  :realization (:VERB "liquefy"))

(define-category LIQUEFY24300
  :mixins (OTHER_COS-45.4)
  :realization (:VERB "liquefy"))

(define-category LIQUIFY23000
  :mixins (OTHER_COS-45.4)
  :realization (:VERB "liquify"))

(define-category LIQUIFY23001
  :mixins (OTHER_COS-45.4)
  :realization (:VERB "liquify"))

(define-category LOOP23500
  :mixins (OTHER_COS-45.4)
  :realization (:VERB "loop"))

(define-category LOOP23800
  :mixins (OTHER_COS-45.4)
  :realization (:VERB "loop"))

(define-category LOOP23600
  :mixins (OTHER_COS-45.4)
  :realization (:VERB "loop"))

(define-category LOOP23801
  :mixins (OTHER_COS-45.4)
  :realization (:VERB "loop"))

(define-category LOOSE23002
  :mixins (OTHER_COS-45.4)
  :realization (:VERB "loose"))

(define-category LOOSE23001
  :mixins (OTHER_COS-45.4)
  :realization (:VERB "loose"))

(define-category LOOSEN23000
  :mixins (OTHER_COS-45.4)
  :realization (:VERB "loosen"))

(define-category LOOSEN23505
  :mixins (OTHER_COS-45.4)
  :realization (:VERB "loosen"))

(define-category LOOSEN23001
  :mixins (OTHER_COS-45.4)
  :realization (:VERB "loosen"))

(define-category MACERATE23001
  :mixins (OTHER_COS-45.4)
  :realization (:VERB "macerate"))

(define-category MACERATE23002
  :mixins (OTHER_COS-45.4)
  :realization (:VERB "macerate"))

(define-category MATURE23001
  :mixins (OTHER_COS-45.4)
  :realization (:VERB "mature"))

(define-category MATURE23000
  :mixins (OTHER_COS-45.4)
  :realization (:VERB "mature"))

(define-category MELLOW23000
  :mixins (OTHER_COS-45.4)
  :realization (:VERB "mellow"))

(define-category MELLOW23003
  :mixins (OTHER_COS-45.4)
  :realization (:VERB "mellow"))

(define-category MELLOW23001
  :mixins (OTHER_COS-45.4)
  :realization (:VERB "mellow"))

(define-category MOISTEN23000
  :mixins (OTHER_COS-45.4)
  :realization (:VERB "moisten"))

(define-category MULTIPLY22901
  :mixins (OTHER_COS-45.4)
  :realization (:VERB "multiply"))

(define-category MULTIPLY22900
  :mixins (OTHER_COS-45.4)
  :realization (:VERB "multiply"))

(define-category MULTIPLY23000
  :mixins (OTHER_COS-45.4)
  :realization (:VERB "multiply"))

(define-category NARROW23000
  :mixins (OTHER_COS-45.4)
  :realization (:VERB "narrow"))

(define-category NEUTRALIZE24102
  :mixins (OTHER_COS-45.4)
  :realization (:VERB "neutralize"))

(define-category NEUTRALIZE23001
  :mixins (OTHER_COS-45.4)
  :realization (:VERB "neutralize"))

(define-category OCCLUDE23500
  :mixins (OTHER_COS-45.4)
  :realization (:VERB "occlude"))

(define-category OPEN23508
  :mixins (OTHER_COS-45.4)
  :realization (:VERB "open"))

(define-category OPEN23506
  :mixins (OTHER_COS-45.4)
  :realization (:VERB "open"))

(define-category OPEN23500
  :mixins (OTHER_COS-45.4)
  :realization (:VERB "open"))

(define-category OPERATE23500
  :mixins (OTHER_COS-45.4)
  :realization (:VERB "operate"))

(define-category OPERATE23503
  :mixins (OTHER_COS-45.4)
  :realization (:VERB "operate"))

(define-category OSSIFY23000
  :mixins (OTHER_COS-45.4)
  :realization (:VERB "ossify"))

(define-category OVERTURN23801
  :mixins (OTHER_COS-45.4)
  :realization (:VERB "overturn"))

(define-category OVERTURN23800
  :mixins (OTHER_COS-45.4)
  :realization (:VERB "overturn"))

(define-category OXIDIZE23000
  :mixins (OTHER_COS-45.4)
  :realization (:VERB "oxidize"))

(define-category PALE22900
  :mixins (OTHER_COS-45.4)
  :realization (:VERB "pale"))

(define-category PETRIFY23000
  :mixins (OTHER_COS-45.4)
  :realization (:VERB "petrify"))

(define-category PETRIFY23001
  :mixins (OTHER_COS-45.4)
  :realization (:VERB "petrify"))

(define-category PLUMP23400
  :mixins (OTHER_COS-45.4)
  :realization (:VERB "plump"))

(define-category POLARIZE23000
  :mixins (OTHER_COS-45.4)
  :realization (:VERB "polarize"))

(define-category POLARIZE23001
  :mixins (OTHER_COS-45.4)
  :realization (:VERB "polarize"))

(define-category POLARIZE23002
  :mixins (OTHER_COS-45.4)
  :realization (:VERB "polarize"))

(define-category PROLIFERATE23001
  :mixins (OTHER_COS-45.4)
  :realization (:VERB "proliferate"))

(define-category PROLIFERATE23000
  :mixins (OTHER_COS-45.4)
  :realization (:VERB "proliferate"))

(define-category PROPAGATE22900
  :mixins (OTHER_COS-45.4)
  :realization (:VERB "propagate"))

(define-category PROPAGATE23501
  :mixins (OTHER_COS-45.4)
  :realization (:VERB "propagate"))

(define-category PROPAGATE23500
  :mixins (OTHER_COS-45.4)
  :realization (:VERB "propagate"))

(define-category PROPAGATE23801
  :mixins (OTHER_COS-45.4)
  :realization (:VERB "propagate"))

(define-category PROPAGATE24000
  :mixins (OTHER_COS-45.4)
  :realization (:VERB "propagate"))

(define-category PULVERIZE23000
  :mixins (OTHER_COS-45.4)
  :realization (:VERB "pulverize"))

(define-category PURIFY23000
  :mixins (OTHER_COS-45.4)
  :realization (:VERB "purify"))

(define-category PURPLE23000
  :mixins (OTHER_COS-45.4)
  :realization (:VERB "purple"))

(define-category PURPLE23001
  :mixins (OTHER_COS-45.4)
  :realization (:VERB "purple"))

(define-category PUTREFY23000
  :mixins (OTHER_COS-45.4)
  :realization (:VERB "putrefy"))

(define-category QUADRUPLE23000
  :mixins (OTHER_COS-45.4)
  :realization (:VERB "quadruple"))

(define-category QUICKEN22900
  :mixins (OTHER_COS-45.4)
  :realization (:VERB "quicken"))

(define-category QUICKEN23000
  :mixins (OTHER_COS-45.4)
  :realization (:VERB "quicken"))

(define-category QUICKEN23900
  :mixins (OTHER_COS-45.4)
  :realization (:VERB "quicken"))

(define-category QUICKEN23001
  :mixins (OTHER_COS-45.4)
  :realization (:VERB "quicken"))

(define-category QUIET23700
  :mixins (OTHER_COS-45.4)
  :realization (:VERB "quiet"))

(define-category QUIET23900
  :mixins (OTHER_COS-45.4)
  :realization (:VERB "quiet"))

(define-category QUIETEN23000
  :mixins (OTHER_COS-45.4)
  :realization (:VERB "quieten"))

(define-category QUIETEN23700
  :mixins (OTHER_COS-45.4)
  :realization (:VERB "quieten"))

(define-category QUIETEN23900
  :mixins (OTHER_COS-45.4)
  :realization (:VERB "quieten"))

(define-category REDDEN23000
  :mixins (OTHER_COS-45.4)
  :realization (:VERB "redden"))

(define-category REDDEN23001
  :mixins (OTHER_COS-45.4)
  :realization (:VERB "redden"))

(define-category REDDEN22900
  :mixins (OTHER_COS-45.4)
  :realization (:VERB "redden"))

(define-category REDOUBLE23002
  :mixins (OTHER_COS-45.4)
  :realization (:VERB "redouble"))

(define-category REDOUBLE23001
  :mixins (OTHER_COS-45.4)
  :realization (:VERB "redouble"))

(define-category REDOUBLE23000
  :mixins (OTHER_COS-45.4)
  :realization (:VERB "redouble"))

(define-category REKINDLE24300
  :mixins (OTHER_COS-45.4)
  :realization (:VERB "rekindle"))

(define-category REOPEN23500
  :mixins (OTHER_COS-45.4)
  :realization (:VERB "reopen"))

(define-category REPRODUCE22900
  :mixins (OTHER_COS-45.4)
  :realization (:VERB "reproduce"))

(define-category RIPEN23000
  :mixins (OTHER_COS-45.4)
  :realization (:VERB "ripen"))

(define-category RIPEN23001
  :mixins (OTHER_COS-45.4)
  :realization (:VERB "ripen"))

(define-category ROUGHEN23500
  :mixins (OTHER_COS-45.4)
  :realization (:VERB "roughen"))

(define-category RUPTURE23500
  :mixins (OTHER_COS-45.4)
  :realization (:VERB "rupture"))

(define-category SCORCH23002
  :mixins (OTHER_COS-45.4)
  :realization (:VERB "scorch"))

(define-category SEAR23002
  :mixins (OTHER_COS-45.4)
  :realization (:VERB "sear"))

(define-category SEAR23000
  :mixins (OTHER_COS-45.4)
  :realization (:VERB "sear"))

(define-category SHARPEN23008
  :mixins (OTHER_COS-45.4)
  :realization (:VERB "sharpen"))

(define-category SHARPEN23000
  :mixins (OTHER_COS-45.4)
  :realization (:VERB "sharpen"))

(define-category SHARPEN23500
  :mixins (OTHER_COS-45.4)
  :realization (:VERB "sharpen"))

(define-category SHORT23600
  :mixins (OTHER_COS-45.4)
  :realization (:VERB "short"))

(define-category SHORT-CIRCUIT23600
  :mixins (OTHER_COS-45.4)
  :realization (:VERB "short-circuit"))

(define-category SHORTEN23000
  :mixins (OTHER_COS-45.4)
  :realization (:VERB "shorten"))

(define-category SHORTEN23009
  :mixins (OTHER_COS-45.4)
  :realization (:VERB "shorten"))

(define-category SHRINK23000
  :mixins (OTHER_COS-45.4)
  :realization (:VERB "shrink"))

(define-category SHRINK23001
  :mixins (OTHER_COS-45.4)
  :realization (:VERB "shrink"))

(define-category SHRINK23002
  :mixins (OTHER_COS-45.4)
  :realization (:VERB "shrink"))

(define-category SHRIVEL23011
  :mixins (OTHER_COS-45.4)
  :realization (:VERB "shrivel"))

(define-category SHRIVEL23000
  :mixins (OTHER_COS-45.4)
  :realization (:VERB "shrivel"))

(define-category SHUT23506
  :mixins (OTHER_COS-45.4)
  :realization (:VERB "shut"))

(define-category SHUT23500
  :mixins (OTHER_COS-45.4)
  :realization (:VERB "shut"))

(define-category SICKEN22901
  :mixins (OTHER_COS-45.4)
  :realization (:VERB "sicken"))

(define-category SICKEN23900
  :mixins (OTHER_COS-45.4)
  :realization (:VERB "sicken"))

(define-category SICKEN22900
  :mixins (OTHER_COS-45.4)
  :realization (:VERB "sicken"))

(define-category SILVER23001
  :mixins (OTHER_COS-45.4)
  :realization (:VERB "silver"))

(define-category SILVER23000
  :mixins (OTHER_COS-45.4)
  :realization (:VERB "silver"))

(define-category SINK23800
  :mixins (OTHER_COS-45.4)
  :realization (:VERB "sink"))

(define-category SINK23802
  :mixins (OTHER_COS-45.4)
  :realization (:VERB "sink"))

(define-category SLACK23006
  :mixins (OTHER_COS-45.4)
  :realization (:VERB "slack"))

(define-category SLACK23007
  :mixins (OTHER_COS-45.4)
  :realization (:VERB "slack"))

(define-category SLACK23004
  :mixins (OTHER_COS-45.4)
  :realization (:VERB "slack"))

(define-category SLACK23005
  :mixins (OTHER_COS-45.4)
  :realization (:VERB "slack"))

(define-category SLACK23003
  :mixins (OTHER_COS-45.4)
  :realization (:VERB "slack"))

(define-category SLACK23000
  :mixins (OTHER_COS-45.4)
  :realization (:VERB "slack"))

(define-category SLACKEN23001
  :mixins (OTHER_COS-45.4)
  :realization (:VERB "slacken"))

(define-category SLACKEN23000
  :mixins (OTHER_COS-45.4)
  :realization (:VERB "slacken"))

(define-category SLACKEN23003
  :mixins (OTHER_COS-45.4)
  :realization (:VERB "slacken"))

(define-category SLACKEN23002
  :mixins (OTHER_COS-45.4)
  :realization (:VERB "slacken"))

(define-category SLIM22900
  :mixins (OTHER_COS-45.4)
  :realization (:VERB "slim"))

(define-category SLOW23005
  :mixins (OTHER_COS-45.4)
  :realization (:VERB "slow"))

(define-category SLOW23001
  :mixins (OTHER_COS-45.4)
  :realization (:VERB "slow"))

(define-category SLOW23000
  :mixins (OTHER_COS-45.4)
  :realization (:VERB "slow"))

(define-category SMOOTH23500
  :mixins (OTHER_COS-45.4)
  :realization (:VERB "smooth"))

(define-category SMOOTHEN23501
  :mixins (OTHER_COS-45.4)
  :realization (:VERB "smoothen"))

(define-category SMOOTHEN23500
  :mixins (OTHER_COS-45.4)
  :realization (:VERB "smoothen"))

(define-category SOAK23000
  :mixins (OTHER_COS-45.4)
  :realization (:VERB "soak"))

(define-category SOAK23001
  :mixins (OTHER_COS-45.4)
  :realization (:VERB "soak"))

(define-category SOAK23501
  :mixins (OTHER_COS-45.4)
  :realization (:VERB "soak"))

(define-category SOBER23001
  :mixins (OTHER_COS-45.4)
  :realization (:VERB "sober"))

(define-category SOBER23002
  :mixins (OTHER_COS-45.4)
  :realization (:VERB "sober"))

(define-category SOFTEN23000
  :mixins (OTHER_COS-45.4)
  :realization (:VERB "soften"))

(define-category SOFTEN23001
  :mixins (OTHER_COS-45.4)
  :realization (:VERB "soften"))

(define-category SOLIDIFY23000
  :mixins (OTHER_COS-45.4)
  :realization (:VERB "solidify"))

(define-category SOLIDIFY23001
  :mixins (OTHER_COS-45.4)
  :realization (:VERB "solidify"))

(define-category SOUR23900
  :mixins (OTHER_COS-45.4)
  :realization (:VERB "sour"))

(define-category SOUR23001
  :mixins (OTHER_COS-45.4)
  :realization (:VERB "sour"))

(define-category SOUSE23500
  :mixins (OTHER_COS-45.4)
  :realization (:VERB "souse"))

(define-category SOUSE23001
  :mixins (OTHER_COS-45.4)
  :realization (:VERB "souse"))

(define-category SPROUT22901
  :mixins (OTHER_COS-45.4)
  :realization (:VERB "sprout"))

(define-category SPROUT23000
  :mixins (OTHER_COS-45.4)
  :realization (:VERB "sprout"))

(define-category STABILIZE23000
  :mixins (OTHER_COS-45.4)
  :realization (:VERB "stabilize"))

(define-category STABILIZE23001
  :mixins (OTHER_COS-45.4)
  :realization (:VERB "stabilize"))

(define-category STEADY23500
  :mixins (OTHER_COS-45.4)
  :realization (:VERB "steady"))

(define-category STEADY23000
  :mixins (OTHER_COS-45.4)
  :realization (:VERB "steady"))

(define-category STEEP23000
  :mixins (OTHER_COS-45.4)
  :realization (:VERB "steep"))

(define-category STEEPEN23000
  :mixins (OTHER_COS-45.4)
  :realization (:VERB "steepen"))

(define-category STEEPEN23001
  :mixins (OTHER_COS-45.4)
  :realization (:VERB "steepen"))

(define-category STIFFEN23001
  :mixins (OTHER_COS-45.4)
  :realization (:VERB "stiffen"))

(define-category STIFFEN23000
  :mixins (OTHER_COS-45.4)
  :realization (:VERB "stiffen"))

(define-category STRATIFY23000
  :mixins (OTHER_COS-45.4)
  :realization (:VERB "stratify"))

(define-category STRANGULATE23000
  :mixins (OTHER_COS-45.4)
  :realization (:VERB "strangulate"))

(define-category STRANGULATE23501
  :mixins (OTHER_COS-45.4)
  :realization (:VERB "strangulate"))

(define-category STRENGTHEN23000
  :mixins (OTHER_COS-45.4)
  :realization (:VERB "strengthen"))

(define-category STRENGTHEN23001
  :mixins (OTHER_COS-45.4)
  :realization (:VERB "strengthen"))

(define-category SUBMERGE23002
  :mixins (OTHER_COS-45.4)
  :realization (:VERB "submerge"))

(define-category SUBMERGE23501
  :mixins (OTHER_COS-45.4)
  :realization (:VERB "submerge"))

(define-category SUBMERGE23800
  :mixins (OTHER_COS-45.4)
  :realization (:VERB "submerge"))

(define-category SWEETEN23900
  :mixins (OTHER_COS-45.4)
  :realization (:VERB "sweeten"))

(define-category TAME23002
  :mixins (OTHER_COS-45.4)
  :realization (:VERB "tame"))

(define-category TAME23004
  :mixins (OTHER_COS-45.4)
  :realization (:VERB "tame"))

(define-category TAME23001
  :mixins (OTHER_COS-45.4)
  :realization (:VERB "tame"))

(define-category TAN22900
  :mixins (OTHER_COS-45.4)
  :realization (:VERB "tan"))

(define-category TAN23000
  :mixins (OTHER_COS-45.4)
  :realization (:VERB "tan"))

(define-category TAPER23000
  :mixins (OTHER_COS-45.4)
  :realization (:VERB "taper"))

(define-category TAPER23002
  :mixins (OTHER_COS-45.4)
  :realization (:VERB "taper"))

(define-category TAUTEN23001
  :mixins (OTHER_COS-45.4)
  :realization (:VERB "tauten"))

(define-category TAUTEN23000
  :mixins (OTHER_COS-45.4)
  :realization (:VERB "tauten"))

(define-category TENSE22900
  :mixins (OTHER_COS-45.4)
  :realization (:VERB "tense"))

(define-category TENSE22901
  :mixins (OTHER_COS-45.4)
  :realization (:VERB "tense"))

(define-category TENSE23000
  :mixins (OTHER_COS-45.4)
  :realization (:VERB "tense"))

(define-category TENSE23500
  :mixins (OTHER_COS-45.4)
  :realization (:VERB "tense"))

(define-category THICKEN23002
  :mixins (OTHER_COS-45.4)
  :realization (:VERB "thicken"))

(define-category THICKEN23000
  :mixins (OTHER_COS-45.4)
  :realization (:VERB "thicken"))

(define-category THICKEN23001
  :mixins (OTHER_COS-45.4)
  :realization (:VERB "thicken"))

(define-category THIN22900
  :mixins (OTHER_COS-45.4)
  :realization (:VERB "thin"))

(define-category THIN23002
  :mixins (OTHER_COS-45.4)
  :realization (:VERB "thin"))

(define-category THIN23001
  :mixins (OTHER_COS-45.4)
  :realization (:VERB "thin"))

(define-category THIN23000
  :mixins (OTHER_COS-45.4)
  :realization (:VERB "thin"))

(define-category TIGHTEN23000
  :mixins (OTHER_COS-45.4)
  :realization (:VERB "tighten"))

(define-category TIGHTEN23001
  :mixins (OTHER_COS-45.4)
  :realization (:VERB "tighten"))

(define-category TILT23802
  :mixins (OTHER_COS-45.4)
  :realization (:VERB "tilt"))

(define-category TILT23801
  :mixins (OTHER_COS-45.4)
  :realization (:VERB "tilt"))

(define-category TILT23800
  :mixins (OTHER_COS-45.4)
  :realization (:VERB "tilt"))

(define-category TIRE22901
  :mixins (OTHER_COS-45.4)
  :realization (:VERB "tire"))

(define-category TOPPLE23801
  :mixins (OTHER_COS-45.4)
  :realization (:VERB "topple"))

(define-category TOPPLE23800
  :mixins (OTHER_COS-45.4)
  :realization (:VERB "topple"))

(define-category TOUGHEN23000
  :mixins (OTHER_COS-45.4)
  :realization (:VERB "toughen"))

(define-category TRIP23600
  :mixins (OTHER_COS-45.4)
  :realization (:VERB "trip"))

(define-category TRIPLE23000
  :mixins (OTHER_COS-45.4)
  :realization (:VERB "triple"))

(define-category ULCERATE22900
  :mixins (OTHER_COS-45.4)
  :realization (:VERB "ulcerate"))

(define-category ULCERATE23000
  :mixins (OTHER_COS-45.4)
  :realization (:VERB "ulcerate"))

(define-category UNIONIZE24100
  :mixins (OTHER_COS-45.4)
  :realization (:VERB "unionize"))

(define-category VAPORIZE23001
  :mixins (OTHER_COS-45.4)
  :realization (:VERB "vaporize"))

(define-category VAPORIZE23000
  :mixins (OTHER_COS-45.4)
  :realization (:VERB "vaporize"))

(define-category VARY23004
  :mixins (OTHER_COS-45.4)
  :realization (:VERB "vary"))

(define-category VARY23001
  :mixins (OTHER_COS-45.4)
  :realization (:VERB "vary"))

(define-category VIBRATE23801
  :mixins (OTHER_COS-45.4)
  :realization (:VERB "vibrate"))

(define-category VIBRATE23800
  :mixins (OTHER_COS-45.4)
  :realization (:VERB "vibrate"))

(define-category VITRIFY23000
  :mixins (OTHER_COS-45.4)
  :realization (:VERB "vitrify"))

(define-category VITRIFY23001
  :mixins (OTHER_COS-45.4)
  :realization (:VERB "vitrify"))

(define-category VOLATILIZE23000
  :mixins (OTHER_COS-45.4)
  :realization (:VERB "volatilize"))

(define-category WAKEN22900
  :mixins (OTHER_COS-45.4)
  :realization (:VERB "waken"))

(define-category WAKEN22901
  :mixins (OTHER_COS-45.4)
  :realization (:VERB "waken"))

(define-category WARM23001
  :mixins (OTHER_COS-45.4)
  :realization (:VERB "warm"))

(define-category WARM23000
  :mixins (OTHER_COS-45.4)
  :realization (:VERB "warm"))

(define-category WEAKEN23000
  :mixins (OTHER_COS-45.4)
  :realization (:VERB "weaken"))

(define-category WEAKEN23001
  :mixins (OTHER_COS-45.4)
  :realization (:VERB "weaken"))

(define-category WESTERNIZE23000
  :mixins (OTHER_COS-45.4)
  :realization (:VERB "westernize"))

(define-category WHITEN23000
  :mixins (OTHER_COS-45.4)
  :realization (:VERB "whiten"))

(define-category WIDEN23003
  :mixins (OTHER_COS-45.4)
  :realization (:VERB "widen"))

(define-category WIDEN23005
  :mixins (OTHER_COS-45.4)
  :realization (:VERB "widen"))

(define-category WIDEN23000
  :mixins (OTHER_COS-45.4)
  :realization (:VERB "widen"))

(define-category WORSEN23001
  :mixins (OTHER_COS-45.4)
  :realization (:VERB "worsen"))

(define-category WORSEN23000
  :mixins (OTHER_COS-45.4)
  :realization (:VERB "worsen"))

(define-category YELLOW23000
  :mixins (OTHER_COS-45.4)
  :realization (:VERB "yellow"))

(define-category AWAKE22900
  :mixins (OTHER_COS-45.4-1)
  :realization (:VERB "awake"))

(define-category AWAKEN22901
  :mixins (OTHER_COS-45.4-1)
  :realization (:VERB "awaken"))

(define-category AWAKEN22900
  :mixins (OTHER_COS-45.4-1)
  :realization (:VERB "awaken"))

(define-category DRY23000
  :mixins (OTHER_COS-45.4-1)
  :realization (:VERB "dry"))

(define-category DRY23001
  :mixins (OTHER_COS-45.4-1)
  :realization (:VERB "dry"))

(define-category FREEZE23004
  :mixins (OTHER_COS-45.4-1)
  :realization (:VERB "freeze"))

(define-category FREEZE23002
  :mixins (OTHER_COS-45.4-1)
  :realization (:VERB "freeze"))

(define-category FREEZE23000
  :mixins (OTHER_COS-45.4-1)
  :realization (:VERB "freeze"))

(define-category MELT23000
  :mixins (OTHER_COS-45.4-1)
  :realization (:VERB "melt"))

(define-category MELT23001
  :mixins (OTHER_COS-45.4-1)
  :realization (:VERB "melt"))

(define-category THAW23000
  :mixins (OTHER_COS-45.4-1)
  :realization (:VERB "thaw"))

(define-category OVERSTATE23200
  :mixins (OVERSTATE-37.12)
  :realization (:VERB "overstate"))

(define-category OVERDRAW23200
  :mixins (OVERSTATE-37.12)
  :realization (:VERB "overdraw"))

(define-category HYPERBOLIZE23200
  :mixins (OVERSTATE-37.12)
  :realization (:VERB "hyperbolize"))

(define-category MAGNIFY23200
  :mixins (OVERSTATE-37.12)
  :realization (:VERB "magnify"))

(define-category AMPLIFY23200
  :mixins (OVERSTATE-37.12)
  :realization (:VERB "amplify"))

(define-category OVEREMPHASIZE23200
  :mixins (OVERSTATE-37.12)
  :realization (:VERB "overemphasize"))

(define-category OVERRATE23100
  :mixins (OVERSTATE-37.12)
  :realization (:VERB "overrate"))

(define-category OVERSTRESS23200
  :mixins (OVERSTATE-37.12)
  :realization (:VERB "overstress"))

(define-category TOUT23200
  :mixins (OVERSTATE-37.12)
  :realization (:VERB "tout"))

(define-category GLORIFY23200
  :mixins (OVERSTATE-37.12)
  :realization (:VERB "glorify"))

(define-category HAVE24004
  :mixins (OWN-100.1)
  :realization (:VERB "have"))

(define-category OWN24000
  :mixins (OWN-100.1)
  :realization (:VERB "own"))

(define-category POSSESS24000
  :mixins (OWN-100.1)
  :realization (:VERB "possess"))

(define-category BOTHER23700
  :mixins (PAIN-40.8.1)
  :realization (:VERB "bother"))

(define-category HURT23900
  :mixins (PAIN-40.8.1)
  :realization (:VERB "hurt"))

(define-category ITCH23900
  :mixins (PAIN-40.8.1)
  :realization (:VERB "itch"))

(define-category KILL23004
  :mixins (PAIN-40.8.1)
  :realization (:VERB "kill"))

(define-category KILL23900
  :mixins (PAIN-40.8.1)
  :realization (:VERB "kill"))

(define-category PAIN22900
  :mixins (PAIN-40.8.1)
  :realization (:VERB "pain"))

(define-category COPYRIGHT24000
  :mixins (PATENT-101)
  :realization (:VERB "copyright"))

(define-category PATENT24000
  :mixins (PATENT-101)
  :realization (:VERB "patent"))

(define-category TRADEMARK23200
  :mixins (PATENT-101)
  :realization (:VERB "trademark"))

(define-category LICENCE24100
  :mixins (PATENT-101)
  :realization (:VERB "licence"))

(define-category REGISTER23203
  :mixins (PATENT-101)
  :realization (:VERB "register"))

(define-category CERTIFY24102
  :mixins (PATENT-101)
  :realization (:VERB "certify"))

(define-category ACCREDIT24100
  :mixins (PATENT-101)
  :realization (:VERB "accredit"))

(define-category VERIFY23204
  :mixins (PATENT-101)
  :realization (:VERB "verify"))

(define-category IMITATE23603
  :mixins (PATENT-101)
  :realization (:VERB "imitate"))

(define-category IMPERSONATE23200
  :mixins (PATENT-101)
  :realization (:VERB "impersonate"))

(define-category IMPERSONATE23201
  :mixins (PATENT-101)
  :realization (:VERB "impersonate"))

(define-category IMPERSONATE23600
  :mixins (PATENT-101)
  :realization (:VERB "impersonate"))

(define-category SPEND24001
  :mixins (PAY-68)
  :realization (:VERB "spend"))

(define-category SPEND24000
  :mixins (PAY-68)
  :realization (:VERB "spend"))

(define-category SQUANDER24001
  :mixins (PAY-68)
  :realization (:VERB "squander"))

(define-category WASTE24000
  :mixins (PAY-68)
  :realization (:VERB "waste"))

(define-category PAY24000
  :mixins (PAY-68-1)
  :realization (:VERB "pay"))

(define-category REPAY24001
  :mixins (PAY-68-1)
  :realization (:VERB "repay"))

(define-category TITHE24002
  :mixins (PAY-68-1)
  :realization (:VERB "tithe"))

(define-category TITHE24003
  :mixins (PAY-68-1)
  :realization (:VERB "tithe"))

(define-category CHECK23100
  :mixins (PEER-30.3)
  :realization (:VERB "check"))

(define-category GAPE23900
  :mixins (PEER-30.3)
  :realization (:VERB "gape"))

(define-category GAWK23900
  :mixins (PEER-30.3)
  :realization (:VERB "gawk"))

(define-category GAZE23900
  :mixins (PEER-30.3)
  :realization (:VERB "gaze"))

(define-category GLANCE23900
  :mixins (PEER-30.3)
  :realization (:VERB "glance"))

(define-category GLARE22900
  :mixins (PEER-30.3)
  :realization (:VERB "glare"))

(define-category GOGGLE23900
  :mixins (PEER-30.3)
  :realization (:VERB "goggle"))

(define-category LEER23900
  :mixins (PEER-30.3)
  :realization (:VERB "leer"))

(define-category LISTEN23901
  :mixins (PEER-30.3)
  :realization (:VERB "listen"))

(define-category LISTEN23900
  :mixins (PEER-30.3)
  :realization (:VERB "listen"))

(define-category LOOK23902
  :mixins (PEER-30.3)
  :realization (:VERB "look"))

(define-category LOOK23900
  :mixins (PEER-30.3)
  :realization (:VERB "look"))

(define-category OGLE23900
  :mixins (PEER-30.3)
  :realization (:VERB "ogle"))

(define-category PEEK23902
  :mixins (PEER-30.3)
  :realization (:VERB "peek"))

(define-category PEEP23900
  :mixins (PEER-30.3)
  :realization (:VERB "peep"))

(define-category PEER23900
  :mixins (PEER-30.3)
  :realization (:VERB "peer"))

(define-category SNIFF23900
  :mixins (PEER-30.3)
  :realization (:VERB "sniff"))

(define-category SNOOP23200
  :mixins (PEER-30.3)
  :realization (:VERB "snoop"))

(define-category SQUINT22900
  :mixins (PEER-30.3)
  :realization (:VERB "squint"))

(define-category STARE23900
  :mixins (PEER-30.3)
  :realization (:VERB "stare"))

(define-category BOMBARD23500
  :mixins (PELT-17.2)
  :realization (:VERB "bombard"))

(define-category BUFFET23501
  :mixins (PELT-17.2)
  :realization (:VERB "buffet"))

(define-category BUFFET23500
  :mixins (PELT-17.2)
  :realization (:VERB "buffet"))

(define-category PELT23500
  :mixins (PELT-17.2)
  :realization (:VERB "pelt"))

(define-category SHELL23300
  :mixins (PELT-17.2)
  :realization (:VERB "shell"))

(define-category SHOWER23500
  :mixins (PELT-17.2)
  :realization (:VERB "shower"))

(define-category STONE23500
  :mixins (PELT-17.2)
  :realization (:VERB "stone"))

(define-category BELT23600
  :mixins (PERFORMANCE-26.7)
  :realization (:VERB "belt"))

(define-category CHANT23200
  :mixins (PERFORMANCE-26.7)
  :realization (:VERB "chant"))

(define-category DIRECT23602
  :mixins (PERFORMANCE-26.7)
  :realization (:VERB "direct"))

(define-category DIRECT23600
  :mixins (PERFORMANCE-26.7)
  :realization (:VERB "direct"))

(define-category HEEL23600
  :mixins (PERFORMANCE-26.7)
  :realization (:VERB "heel"))

(define-category INTONE23200
  :mixins (PERFORMANCE-26.7)
  :realization (:VERB "intone"))

(define-category MODEL23901
  :mixins (PERFORMANCE-26.7)
  :realization (:VERB "model"))

(define-category PERFORM23601
  :mixins (PERFORMANCE-26.7)
  :realization (:VERB "perform"))

(define-category RAP23610
  :mixins (PERFORMANCE-26.7)
  :realization (:VERB "rap"))

(define-category VOCALIZE23600
  :mixins (PERFORMANCE-26.7)
  :realization (:VERB "vocalize"))

(define-category DANCE23600
  :mixins (PERFORMANCE-26.7-1)
  :realization (:VERB "dance"))

(define-category HUM23200
  :mixins (PERFORMANCE-26.7-1)
  :realization (:VERB "hum"))

(define-category PLAY23604
  :mixins (PERFORMANCE-26.7-1)
  :realization (:VERB "play"))

(define-category PLAY23610
  :mixins (PERFORMANCE-26.7-1)
  :realization (:VERB "play"))

(define-category PLAY23605
  :mixins (PERFORMANCE-26.7-1)
  :realization (:VERB "play"))

(define-category PLAY23611
  :mixins (PERFORMANCE-26.7-1)
  :realization (:VERB "play"))

(define-category PLAY23601
  :mixins (PERFORMANCE-26.7-1)
  :realization (:VERB "play"))

(define-category PLAY23600
  :mixins (PERFORMANCE-26.7-1)
  :realization (:VERB "play"))

(define-category PLAY23602
  :mixins (PERFORMANCE-26.7-1)
  :realization (:VERB "play"))

(define-category PLAY23612
  :mixins (PERFORMANCE-26.7-1)
  :realization (:VERB "play"))

(define-category RECITE23600
  :mixins (PERFORMANCE-26.7-1)
  :realization (:VERB "recite"))

(define-category RECITE23202
  :mixins (PERFORMANCE-26.7-1)
  :realization (:VERB "recite"))

(define-category REPLAY23600
  :mixins (PERFORMANCE-26.7-1)
  :realization (:VERB "replay"))

(define-category STAGE23600
  :mixins (PERFORMANCE-26.7-1)
  :realization (:VERB "stage"))

(define-category SING23600
  :mixins (PERFORMANCE-26.7-1)
  :realization (:VERB "sing"))

(define-category SING23601
  :mixins (PERFORMANCE-26.7-1)
  :realization (:VERB "sing"))

(define-category WHISTLE23200
  :mixins (PERFORMANCE-26.7-1)
  :realization (:VERB "whistle"))

(define-category BARK23500
  :mixins (PIT-10.7)
  :realization (:VERB "bark"))

(define-category BONE23000
  :mixins (PIT-10.7)
  :realization (:VERB "bone"))

(define-category BURL23000
  :mixins (PIT-10.7)
  :realization (:VERB "burl"))

(define-category CORE23500
  :mixins (PIT-10.7)
  :realization (:VERB "core"))

(define-category GUT23500
  :mixins (PIT-10.7)
  :realization (:VERB "gut"))

(define-category HEAD23500
  :mixins (PIT-10.7)
  :realization (:VERB "head"))

(define-category HULL23000
  :mixins (PIT-10.7)
  :realization (:VERB "hull"))

(define-category HUSK23000
  :mixins (PIT-10.7)
  :realization (:VERB "husk"))

(define-category MILK23000
  :mixins (PIT-10.7)
  :realization (:VERB "milk"))

(define-category PEEL23500
  :mixins (PIT-10.7)
  :realization (:VERB "peel"))

(define-category PINION23000
  :mixins (PIT-10.7)
  :realization (:VERB "pinion"))

(define-category PIT23000
  :mixins (PIT-10.7)
  :realization (:VERB "pit"))

(define-category PITH24000
  :mixins (PIT-10.7)
  :realization (:VERB "pith"))

(define-category POD23000
  :mixins (PIT-10.7)
  :realization (:VERB "pod"))

(define-category POLL23500
  :mixins (PIT-10.7)
  :realization (:VERB "poll"))

(define-category PULP23501
  :mixins (PIT-10.7)
  :realization (:VERB "pulp"))

(define-category SCALE23500
  :mixins (PIT-10.7)
  :realization (:VERB "scale"))

(define-category SCALP23000
  :mixins (PIT-10.7)
  :realization (:VERB "scalp"))

(define-category SEED23001
  :mixins (PIT-10.7)
  :realization (:VERB "seed"))

(define-category SHELL23000
  :mixins (PIT-10.7)
  :realization (:VERB "shell"))

(define-category SHUCK23000
  :mixins (PIT-10.7)
  :realization (:VERB "shuck"))

(define-category SKIN23500
  :mixins (PIT-10.7)
  :realization (:VERB "skin"))

(define-category SKIN23501
  :mixins (PIT-10.7)
  :realization (:VERB "skin"))

(define-category SNAIL23500
  :mixins (PIT-10.7)
  :realization (:VERB "snail"))

(define-category STEM23001
  :mixins (PIT-10.7)
  :realization (:VERB "stem"))

(define-category STONE23000
  :mixins (PIT-10.7)
  :realization (:VERB "stone"))

(define-category STRING23503
  :mixins (PIT-10.7)
  :realization (:VERB "string"))

(define-category TAIL23501
  :mixins (PIT-10.7)
  :realization (:VERB "tail"))

(define-category TAIL23500
  :mixins (PIT-10.7)
  :realization (:VERB "tail"))

(define-category WEED23000
  :mixins (PIT-10.7)
  :realization (:VERB "weed"))

(define-category WORM23800
  :mixins (PIT-10.7)
  :realization (:VERB "worm"))

(define-category FROLIC23800
  :mixins (PLAY-114.2)
  :realization (:VERB "frolic"))

(define-category RECREATE24100
  :mixins (PLAY-114.2)
  :realization (:VERB "recreate"))

(define-category PLAY23302
  :mixins (PLAY-114.2-1)
  :realization (:VERB "play"))

(define-category PLAY23606
  :mixins (PLAY-114.2-1)
  :realization (:VERB "play"))

(define-category PLAY24100
  :mixins (PLAY-114.2-1)
  :realization (:VERB "play"))

(define-category PLAY24103
  :mixins (PLAY-114.2-1)
  :realization (:VERB "play"))

(define-category PLAY23300
  :mixins (PLAY-114.2-1)
  :realization (:VERB "play"))

(define-category ARCHIVE23500
  :mixins (POCKET-9.10)
  :realization (:VERB "archive"))

(define-category BAG23500
  :mixins (POCKET-9.10)
  :realization (:VERB "bag"))

(define-category BANK24000
  :mixins (POCKET-9.10)
  :realization (:VERB "bank"))

(define-category BARRACK24200
  :mixins (POCKET-9.10)
  :realization (:VERB "barrack"))

(define-category BEACH23800
  :mixins (POCKET-9.10)
  :realization (:VERB "beach"))

(define-category BED23501
  :mixins (POCKET-9.10)
  :realization (:VERB "bed"))

(define-category BENCH24100
  :mixins (POCKET-9.10)
  :realization (:VERB "bench"))

(define-category BILLET24200
  :mixins (POCKET-9.10)
  :realization (:VERB "billet"))

(define-category BIN23500
  :mixins (POCKET-9.10)
  :realization (:VERB "bin"))

(define-category BOTTLE23500
  :mixins (POCKET-9.10)
  :realization (:VERB "bottle"))

(define-category BOTTLE24000
  :mixins (POCKET-9.10)
  :realization (:VERB "bottle"))

(define-category BOX23502
  :mixins (POCKET-9.10)
  :realization (:VERB "box"))

(define-category CAGE24100
  :mixins (POCKET-9.10)
  :realization (:VERB "cage"))

(define-category CAN23000
  :mixins (POCKET-9.10)
  :realization (:VERB "can"))

(define-category CASE23501
  :mixins (POCKET-9.10)
  :realization (:VERB "case"))

(define-category CLOISTER23000
  :mixins (POCKET-9.10)
  :realization (:VERB "cloister"))

(define-category CLOISTER24200
  :mixins (POCKET-9.10)
  :realization (:VERB "cloister"))

(define-category CORRAL23500
  :mixins (POCKET-9.10)
  :realization (:VERB "corral"))

(define-category CRATE23500
  :mixins (POCKET-9.10)
  :realization (:VERB "crate"))

(define-category CUP23001
  :mixins (POCKET-9.10)
  :realization (:VERB "cup"))

(define-category FILE23200
  :mixins (POCKET-9.10)
  :realization (:VERB "file"))

(define-category FORK23500
  :mixins (POCKET-9.10)
  :realization (:VERB "fork"))

(define-category GARAGE24000
  :mixins (POCKET-9.10)
  :realization (:VERB "garage"))

(define-category HOUSE24100
  :mixins (POCKET-9.10)
  :realization (:VERB "house"))

(define-category IMPRISON24100
  :mixins (POCKET-9.10)
  :realization (:VERB "imprison"))

(define-category JAIL24100
  :mixins (POCKET-9.10)
  :realization (:VERB "jail"))

(define-category JAR23510
  :mixins (POCKET-9.10)
  :realization (:VERB "jar"))

(define-category JUG23000
  :mixins (POCKET-9.10)
  :realization (:VERB "jug"))

(define-category KENNEL24100
  :mixins (POCKET-9.10)
  :realization (:VERB "kennel"))

(define-category PASTURE23510
  :mixins (POCKET-9.10)
  :realization (:VERB "pasture"))

(define-category PILLORY24100
  :mixins (POCKET-9.10)
  :realization (:VERB "pillory"))

(define-category POCKET24000
  :mixins (POCKET-9.10)
  :realization (:VERB "pocket"))

(define-category POT23500
  :mixins (POCKET-9.10)
  :realization (:VERB "pot"))

(define-category SHEATHE23500
  :mixins (POCKET-9.10)
  :realization (:VERB "sheathe"))

(define-category SHELVE23510
  :mixins (POCKET-9.10)
  :realization (:VERB "shelve"))

(define-category SHOULDER23502
  :mixins (POCKET-9.10)
  :realization (:VERB "shoulder"))

(define-category SKEWER23500
  :mixins (POCKET-9.10)
  :realization (:VERB "skewer"))

(define-category SNARE23500
  :mixins (POCKET-9.10)
  :realization (:VERB "snare"))

(define-category SPIT23500
  :mixins (POCKET-9.10)
  :realization (:VERB "spit"))

(define-category SPOOL23500
  :mixins (POCKET-9.10)
  :realization (:VERB "spool"))

(define-category STRING23502
  :mixins (POCKET-9.10)
  :realization (:VERB "string"))

(define-category TIN23000
  :mixins (POCKET-9.10)
  :realization (:VERB "tin"))

(define-category TRAP23500
  :mixins (POCKET-9.10)
  :realization (:VERB "trap"))

(define-category TREE23800
  :mixins (POCKET-9.10)
  :realization (:VERB "tree"))

(define-category WAREHOUSE24000
  :mixins (POCKET-9.10)
  :realization (:VERB "warehouse"))

(define-category WHARF24000
  :mixins (POCKET-9.10)
  :realization (:VERB "wharf"))

(define-category BERTH23500
  :mixins (POCKET-9.10-1)
  :realization (:VERB "berth"))

(define-category DOCK23500
  :mixins (POCKET-9.10-1)
  :realization (:VERB "dock"))

(define-category DRYDOCK23500
  :mixins (POCKET-9.10-1)
  :realization (:VERB "drydock"))

(define-category LAND23803
  :mixins (POCKET-9.10-1)
  :realization (:VERB "land"))

(define-category LAND23801
  :mixins (POCKET-9.10-1)
  :realization (:VERB "land"))

(define-category MOOR23503
  :mixins (POCKET-9.10-1)
  :realization (:VERB "moor"))

(define-category MOOR23501
  :mixins (POCKET-9.10-1)
  :realization (:VERB "moor"))

(define-category GROUND23500
  :mixins (POCKET-9.10-1)
  :realization (:VERB "ground"))

(define-category GROUND23508
  :mixins (POCKET-9.10-1)
  :realization (:VERB "ground"))

(define-category LODGE24200
  :mixins (POCKET-9.10-1)
  :realization (:VERB "lodge"))

(define-category STABLE24100
  :mixins (POCKET-9.10-1)
  :realization (:VERB "stable"))

(define-category ASPHYXIATE23500
  :mixins (POISON-42.2)
  :realization (:VERB "asphyxiate"))

(define-category CRUCIFY24100
  :mixins (POISON-42.2)
  :realization (:VERB "crucify"))

(define-category DROWN23001
  :mixins (POISON-42.2)
  :realization (:VERB "drown"))

(define-category ELECTROCUTE24100
  :mixins (POISON-42.2)
  :realization (:VERB "electrocute"))

(define-category FRY24100
  :mixins (POISON-42.2)
  :realization (:VERB "fry"))

(define-category GAS23300
  :mixins (POISON-42.2)
  :realization (:VERB "gas"))

(define-category GARROTTE23500
  :mixins (POISON-42.2)
  :realization (:VERB "garrotte"))

(define-category HANG24100
  :mixins (POISON-42.2)
  :realization (:VERB "hang"))

(define-category KNIFE23500
  :mixins (POISON-42.2)
  :realization (:VERB "knife"))

(define-category PIP23301
  :mixins (POISON-42.2)
  :realization (:VERB "pip"))

(define-category PIP24100
  :mixins (POISON-42.2)
  :realization (:VERB "pip"))

(define-category POISON23500
  :mixins (POISON-42.2)
  :realization (:VERB "poison"))

(define-category SHOOT24100
  :mixins (POISON-42.2)
  :realization (:VERB "shoot"))

(define-category SMOTHER23500
  :mixins (POISON-42.2)
  :realization (:VERB "smother"))

(define-category STAB23502
  :mixins (POISON-42.2)
  :realization (:VERB "stab"))

(define-category STRANGLE23500
  :mixins (POISON-42.2)
  :realization (:VERB "strangle"))

(define-category STRANGULATE23500
  :mixins (POISON-42.2)
  :realization (:VERB "strangulate"))

(define-category SUFFOCATE23500
  :mixins (POISON-42.2)
  :realization (:VERB "suffocate"))

(define-category DIG23503
  :mixins (POKE-19)
  :realization (:VERB "dig"))

(define-category JAB23502
  :mixins (POKE-19)
  :realization (:VERB "jab"))

(define-category JAB23500
  :mixins (POKE-19)
  :realization (:VERB "jab"))

(define-category PIERCE23500
  :mixins (POKE-19)
  :realization (:VERB "pierce"))

(define-category PIERCE23501
  :mixins (POKE-19)
  :realization (:VERB "pierce"))

(define-category PIERCE23502
  :mixins (POKE-19)
  :realization (:VERB "pierce"))

(define-category POKE23500
  :mixins (POKE-19)
  :realization (:VERB "poke"))

(define-category POKE23501
  :mixins (POKE-19)
  :realization (:VERB "poke"))

(define-category PRICK23503
  :mixins (POKE-19)
  :realization (:VERB "prick"))

(define-category PRICK23504
  :mixins (POKE-19)
  :realization (:VERB "prick"))

(define-category PRICK23500
  :mixins (POKE-19)
  :realization (:VERB "prick"))

(define-category STAB23501
  :mixins (POKE-19)
  :realization (:VERB "stab"))

(define-category STAB23500
  :mixins (POKE-19)
  :realization (:VERB "stab"))

(define-category STAB23502
  :mixins (POKE-19)
  :realization (:VERB "stab"))

(define-category STICK23503
  :mixins (POKE-19)
  :realization (:VERB "stick"))

(define-category DRIBBLE23510
  :mixins (POUR-9.5)
  :realization (:VERB "dribble"))

(define-category DRIBBLE23800
  :mixins (POUR-9.5)
  :realization (:VERB "dribble"))

(define-category DRIP23510
  :mixins (POUR-9.5)
  :realization (:VERB "drip"))

(define-category DRIP23800
  :mixins (POUR-9.5)
  :realization (:VERB "drip"))

(define-category POUR23802
  :mixins (POUR-9.5)
  :realization (:VERB "pour"))

(define-category POUR23804
  :mixins (POUR-9.5)
  :realization (:VERB "pour"))

(define-category POUR23803
  :mixins (POUR-9.5)
  :realization (:VERB "pour"))

(define-category SLOP23500
  :mixins (POUR-9.5)
  :realization (:VERB "slop"))

(define-category SLOSH23500
  :mixins (POUR-9.5)
  :realization (:VERB "slosh"))

(define-category SPEW22900
  :mixins (POUR-9.5)
  :realization (:VERB "spew"))

(define-category SPEW22902
  :mixins (POUR-9.5)
  :realization (:VERB "spew"))

(define-category SPEW22901
  :mixins (POUR-9.5)
  :realization (:VERB "spew"))

(define-category SPILL23500
  :mixins (POUR-9.5)
  :realization (:VERB "spill"))

(define-category SPILL23800
  :mixins (POUR-9.5)
  :realization (:VERB "spill"))

(define-category SPILL23504
  :mixins (POUR-9.5)
  :realization (:VERB "spill"))

(define-category TRICKLE23800
  :mixins (POUR-9.5)
  :realization (:VERB "trickle"))

(define-category BAKE23600
  :mixins (PREPARING-26.3-1)
  :realization (:VERB "bake"))

(define-category BAKE23000
  :mixins (PREPARING-26.3-1)
  :realization (:VERB "bake"))

(define-category BLEND23500
  :mixins (PREPARING-26.3-1)
  :realization (:VERB "blend"))

(define-category BREW23600
  :mixins (PREPARING-26.3-1)
  :realization (:VERB "brew"))

(define-category CLEAR23009
  :mixins (PREPARING-26.3-1)
  :realization (:VERB "clear"))

(define-category COOK23600
  :mixins (PREPARING-26.3-1)
  :realization (:VERB "cook"))

(define-category COOK_UP23601
  :mixins (PREPARING-26.3-1)
  :realization (:VERB "cook_up"))

(define-category FIX23600
  :mixins (PREPARING-26.3-1)
  :realization (:VERB "fix"))

(define-category INVENT23601
  :mixins (PREPARING-26.3-1)
  :realization (:VERB "invent"))

(define-category INVENT23600
  :mixins (PREPARING-26.3-1)
  :realization (:VERB "invent"))

(define-category KINDLE24300
  :mixins (PREPARING-26.3-1)
  :realization (:VERB "kindle"))

(define-category LIGHT24300
  :mixins (PREPARING-26.3-1)
  :realization (:VERB "light"))

(define-category MIX23000
  :mixins (PREPARING-26.3-1)
  :realization (:VERB "mix"))

(define-category PREPARE23601
  :mixins (PREPARING-26.3-1)
  :realization (:VERB "prepare"))

(define-category READY23000
  :mixins (PREPARING-26.3-1)
  :realization (:VERB "ready"))

(define-category READY23600
  :mixins (PREPARING-26.3-1)
  :realization (:VERB "ready"))

(define-category ROLL23010
  :mixins (PREPARING-26.3-1)
  :realization (:VERB "roll"))

(define-category RUN23600
  :mixins (PREPARING-26.3-1)
  :realization (:VERB "run"))

(define-category TOSS23500
  :mixins (PREPARING-26.3-1)
  :realization (:VERB "toss"))

(define-category CULTIVATE23601
  :mixins (PREPARING-26.3-1)
  :realization (:VERB "cultivate"))

(define-category BARBEQUE23000
  :mixins (PREPARING-26.3-2)
  :realization (:VERB "barbeque"))

(define-category BARBECUE23000
  :mixins (PREPARING-26.3-2)
  :realization (:VERB "barbecue"))

(define-category BOIL23000
  :mixins (PREPARING-26.3-2)
  :realization (:VERB "boil"))

(define-category BROIL23000
  :mixins (PREPARING-26.3-2)
  :realization (:VERB "broil"))

(define-category CLEAN23001
  :mixins (PREPARING-26.3-2)
  :realization (:VERB "clean"))

(define-category FRY23000
  :mixins (PREPARING-26.3-2)
  :realization (:VERB "fry"))

(define-category GRILL23000
  :mixins (PREPARING-26.3-2)
  :realization (:VERB "grill"))

(define-category IRON23500
  :mixins (PREPARING-26.3-2)
  :realization (:VERB "iron"))

(define-category MICROWAVE23000
  :mixins (PREPARING-26.3-2)
  :realization (:VERB "microwave"))

(define-category POACH23000
  :mixins (PREPARING-26.3-2)
  :realization (:VERB "poach"))

(define-category POUR23803
  :mixins (PREPARING-26.3-2)
  :realization (:VERB "pour"))

(define-category ROAST23000
  :mixins (PREPARING-26.3-2)
  :realization (:VERB "roast"))

(define-category SCRAMBLE23502
  :mixins (PREPARING-26.3-2)
  :realization (:VERB "scramble"))

(define-category SET23012
  :mixins (PREPARING-26.3-2)
  :realization (:VERB "set"))

(define-category TOAST23000
  :mixins (PREPARING-26.3-2)
  :realization (:VERB "toast"))

(define-category WASH23500
  :mixins (PREPARING-26.3-2)
  :realization (:VERB "wash"))

(define-category WASH23502
  :mixins (PREPARING-26.3-2)
  :realization (:VERB "wash"))

(define-category APPRAISE23101
  :mixins (PRICE-54.4)
  :realization (:VERB "appraise"))

(define-category APPROXIMATE23100
  :mixins (PRICE-54.4)
  :realization (:VERB "approximate"))

(define-category ASSESS24000
  :mixins (PRICE-54.4)
  :realization (:VERB "assess"))

(define-category ASSESS23100
  :mixins (PRICE-54.4)
  :realization (:VERB "assess"))

(define-category ESTIMATE23100
  :mixins (PRICE-54.4)
  :realization (:VERB "estimate"))

(define-category FIX23601
  :mixins (PRICE-54.4)
  :realization (:VERB "fix"))

(define-category GAUGE23100
  :mixins (PRICE-54.4)
  :realization (:VERB "gauge"))

(define-category METER23000
  :mixins (PRICE-54.4)
  :realization (:VERB "meter"))

(define-category OVERESTIMATE23102
  :mixins (PRICE-54.4)
  :realization (:VERB "overestimate"))

(define-category OVERESTIMATE23100
  :mixins (PRICE-54.4)
  :realization (:VERB "overestimate"))

(define-category PEG23003
  :mixins (PRICE-54.4)
  :realization (:VERB "peg"))

(define-category PRICE23100
  :mixins (PRICE-54.4)
  :realization (:VERB "price"))

(define-category PRICE24000
  :mixins (PRICE-54.4)
  :realization (:VERB "price"))

(define-category RATE23101
  :mixins (PRICE-54.4)
  :realization (:VERB "rate"))

(define-category REAPPRAISE23100
  :mixins (PRICE-54.4)
  :realization (:VERB "reappraise"))

(define-category VALUE23102
  :mixins (PRICE-54.4)
  :realization (:VERB "value"))

(define-category VALUE23100
  :mixins (PRICE-54.4)
  :realization (:VERB "value"))

(define-category VALUE23103
  :mixins (PRICE-54.4)
  :realization (:VERB "value"))

(define-category ASSURE23202
  :mixins (PROMISE-37.13)
  :realization (:VERB "assure"))

(define-category GUARANTEE23201
  :mixins (PROMISE-37.13)
  :realization (:VERB "guarantee"))

(define-category PROMISE23200
  :mixins (PROMISE-37.13)
  :realization (:VERB "promise"))

(define-category PROMOTE23200
  :mixins (PROMOTE-102)
  :realization (:VERB "promote"))

(define-category PROMOTE24101
  :mixins (PROMOTE-102)
  :realization (:VERB "promote"))

(define-category ADVANCE24100
  :mixins (PROMOTE-102)
  :realization (:VERB "advance"))

(define-category ADVANCE24101
  :mixins (PROMOTE-102)
  :realization (:VERB "advance"))

(define-category BOOST24100
  :mixins (PROMOTE-102)
  :realization (:VERB "boost"))

(define-category FURTHER24101
  :mixins (PROMOTE-102)
  :realization (:VERB "further"))

(define-category FURTHER24100
  :mixins (PROMOTE-102)
  :realization (:VERB "further"))

(define-category ENCOURAGE24100
  :mixins (PROMOTE-102)
  :realization (:VERB "encourage"))

(define-category INVITE23201
  :mixins (PROMOTE-102)
  :realization (:VERB "invite"))

(define-category EMPHASIZE23200
  :mixins (PROMOTE-102)
  :realization (:VERB "emphasize"))

(define-category UNDERSCORE23200
  :mixins (PROMOTE-102)
  :realization (:VERB "underscore"))

(define-category PRONOUNCE23201
  :mixins (PRONOUNCE-29.3.1)
  :realization (:VERB "pronounce"))

(define-category SAY23202
  :mixins (PRONOUNCE-29.3.1)
  :realization (:VERB "say"))

(define-category SPELL23200
  :mixins (PRONOUNCE-29.3.1)
  :realization (:VERB "spell"))

(define-category IMPEACH23203
  :mixins (PROSECUTE-33.2)
  :realization (:VERB "impeach"))

(define-category PENALIZE24100
  :mixins (PROSECUTE-33.2)
  :realization (:VERB "penalize"))

(define-category PERSECUTE24100
  :mixins (PROSECUTE-33.2-1)
  :realization (:VERB "persecute"))

(define-category PROSECUTE24101
  :mixins (PROSECUTE-33.2-1)
  :realization (:VERB "prosecute"))

(define-category PUNISH24100
  :mixins (PROSECUTE-33.2-1)
  :realization (:VERB "punish"))

(define-category HEAVE23501
  :mixins (PUSH-12)
  :realization (:VERB "heave"))

(define-category JERK23501
  :mixins (PUSH-12-1)
  :realization (:VERB "jerk"))

(define-category PULL23510
  :mixins (PUSH-12-1)
  :realization (:VERB "pull"))

(define-category PULL23504
  :mixins (PUSH-12-1)
  :realization (:VERB "pull"))

(define-category PULL23500
  :mixins (PUSH-12-1)
  :realization (:VERB "pull"))

(define-category TUG23501
  :mixins (PUSH-12-1)
  :realization (:VERB "tug"))

(define-category TUG23502
  :mixins (PUSH-12-1)
  :realization (:VERB "tug"))

(define-category TUG23503
  :mixins (PUSH-12-1)
  :realization (:VERB "tug"))

(define-category TUG23504
  :mixins (PUSH-12-1)
  :realization (:VERB "tug"))

(define-category TUG23500
  :mixins (PUSH-12-1)
  :realization (:VERB "tug"))

(define-category YANK23500
  :mixins (PUSH-12-1)
  :realization (:VERB "yank"))

(define-category JOSTLE23800
  :mixins (PUSH-12-1-1)
  :realization (:VERB "jostle"))

(define-category JOSTLE23802
  :mixins (PUSH-12-1-1)
  :realization (:VERB "jostle"))

(define-category NUDGE23500
  :mixins (PUSH-12-1-1)
  :realization (:VERB "nudge"))

(define-category PRESS23800
  :mixins (PUSH-12-1-1)
  :realization (:VERB "press"))

(define-category PRESS23500
  :mixins (PUSH-12-1-1)
  :realization (:VERB "press"))

(define-category PUSH23800
  :mixins (PUSH-12-1-1)
  :realization (:VERB "push"))

(define-category SHOVE23801
  :mixins (PUSH-12-1-1)
  :realization (:VERB "shove"))

(define-category SHOVE23500
  :mixins (PUSH-12-1-1)
  :realization (:VERB "shove"))

(define-category SHOVE23800
  :mixins (PUSH-12-1-1)
  :realization (:VERB "shove"))

(define-category SQUEEZE23503
  :mixins (PUSH-12-1-1)
  :realization (:VERB "squeeze"))

(define-category THRUST23802
  :mixins (PUSH-12-1-1)
  :realization (:VERB "thrust"))

(define-category THRUST23800
  :mixins (PUSH-12-1-1)
  :realization (:VERB "thrust"))

(define-category ARRANGE23500
  :mixins (PUT-9.1)
  :realization (:VERB "arrange"))

(define-category EMPLACE23500
  :mixins (PUT-9.1)
  :realization (:VERB "emplace"))

(define-category IMMERSE23500
  :mixins (PUT-9.1)
  :realization (:VERB "immerse"))

(define-category IMPLANT23100
  :mixins (PUT-9.1)
  :realization (:VERB "implant"))

(define-category IMPLANT23502
  :mixins (PUT-9.1)
  :realization (:VERB "implant"))

(define-category IMPLANT23500
  :mixins (PUT-9.1)
  :realization (:VERB "implant"))

(define-category LODGE23500
  :mixins (PUT-9.1)
  :realization (:VERB "lodge"))

(define-category MOUNT23001
  :mixins (PUT-9.1)
  :realization (:VERB "mount"))

(define-category MOUNT23500
  :mixins (PUT-9.1)
  :realization (:VERB "mount"))

(define-category POSITION23500
  :mixins (PUT-9.1)
  :realization (:VERB "position"))

(define-category SITUATE23500
  :mixins (PUT-9.1)
  :realization (:VERB "situate"))

(define-category SLING23500
  :mixins (PUT-9.1)
  :realization (:VERB "sling"))

(define-category STATION23300
  :mixins (PUT-9.1)
  :realization (:VERB "station"))

(define-category SUPERIMPOSE23500
  :mixins (PUT-9.1)
  :realization (:VERB "superimpose"))

(define-category TACK23506
  :mixins (PUT-9.1)
  :realization (:VERB "tack"))

(define-category TACK23500
  :mixins (PUT-9.1)
  :realization (:VERB "tack"))

(define-category WHARF23500
  :mixins (PUT-9.1)
  :realization (:VERB "wharf"))

(define-category WHARF23503
  :mixins (PUT-9.1)
  :realization (:VERB "wharf"))

(define-category APPLY23500
  :mixins (PUT-9.1-1)
  :realization (:VERB "apply"))

(define-category BURY23501
  :mixins (PUT-9.1-1)
  :realization (:VERB "bury"))

(define-category BURY23502
  :mixins (PUT-9.1-1)
  :realization (:VERB "bury"))

(define-category BURY23500
  :mixins (PUT-9.1-1)
  :realization (:VERB "bury"))

(define-category BURY24100
  :mixins (PUT-9.1-1)
  :realization (:VERB "bury"))

(define-category BURY23900
  :mixins (PUT-9.1-1)
  :realization (:VERB "bury"))

(define-category BUILD_IN23000
  :mixins (PUT-9.1-1)
  :realization (:VERB "build_in"))

(define-category DEPOSIT24000
  :mixins (PUT-9.1-1)
  :realization (:VERB "deposit"))

(define-category EMBED23500
  :mixins (PUT-9.1-1)
  :realization (:VERB "embed"))

(define-category INSERT23500
  :mixins (PUT-9.1-1)
  :realization (:VERB "insert"))

(define-category INSTALL23500
  :mixins (PUT-9.1-1)
  :realization (:VERB "install"))

(define-category PARK23800
  :mixins (PUT-9.1-1)
  :realization (:VERB "park"))

(define-category PARK23500
  :mixins (PUT-9.1-1)
  :realization (:VERB "park"))

(define-category PLANT23100
  :mixins (PUT-9.1-1)
  :realization (:VERB "plant"))

(define-category PLANT23506
  :mixins (PUT-9.1-1)
  :realization (:VERB "plant"))

(define-category PLANT24000
  :mixins (PUT-9.1-1)
  :realization (:VERB "plant"))

(define-category PLANT23500
  :mixins (PUT-9.1-1)
  :realization (:VERB "plant"))

(define-category REINSTALL23500
  :mixins (PUT-9.1-1)
  :realization (:VERB "reinstall"))

(define-category STASH24000
  :mixins (PUT-9.1-1)
  :realization (:VERB "stash"))

(define-category PLACE24000
  :mixins (PUT-9.1-2)
  :realization (:VERB "place"))

(define-category PLACE23500
  :mixins (PUT-9.1-2)
  :realization (:VERB "place"))

(define-category PUT23500
  :mixins (PUT-9.1-2)
  :realization (:VERB "put"))

(define-category SET23505
  :mixins (PUT-9.1-2)
  :realization (:VERB "set"))

(define-category SET23509
  :mixins (PUT-9.1-2)
  :realization (:VERB "set"))

(define-category SET23502
  :mixins (PUT-9.1-2)
  :realization (:VERB "set"))

(define-category SET23500
  :mixins (PUT-9.1-2)
  :realization (:VERB "set"))

(define-category STICK23509
  :mixins (PUT-9.1-2)
  :realization (:VERB "stick"))

(define-category STICK23508
  :mixins (PUT-9.1-2)
  :realization (:VERB "stick"))

(define-category STICK23603
  :mixins (PUT-9.1-2)
  :realization (:VERB "stick"))

(define-category STICK23502
  :mixins (PUT-9.1-2)
  :realization (:VERB "stick"))

(define-category DROP23801
  :mixins (PUT_DIRECTION-9.4)
  :realization (:VERB "drop"))

(define-category DRIVE23506
  :mixins (PUT_DIRECTION-9.4)
  :realization (:VERB "drive"))

(define-category ELEVATE23800
  :mixins (PUT_DIRECTION-9.4)
  :realization (:VERB "elevate"))

(define-category HEEL23801
  :mixins (PUT_DIRECTION-9.4)
  :realization (:VERB "heel"))

(define-category HOIST23501
  :mixins (PUT_DIRECTION-9.4)
  :realization (:VERB "hoist"))

(define-category HOIST23510
  :mixins (PUT_DIRECTION-9.4)
  :realization (:VERB "hoist"))

(define-category HOIST23500
  :mixins (PUT_DIRECTION-9.4)
  :realization (:VERB "hoist"))

(define-category LIFT23501
  :mixins (PUT_DIRECTION-9.4)
  :realization (:VERB "lift"))

(define-category LIFT23500
  :mixins (PUT_DIRECTION-9.4)
  :realization (:VERB "lift"))

(define-category LIFT23800
  :mixins (PUT_DIRECTION-9.4)
  :realization (:VERB "lift"))

(define-category LOWER23800
  :mixins (PUT_DIRECTION-9.4)
  :realization (:VERB "lower"))

(define-category RAISE23800
  :mixins (PUT_DIRECTION-9.4)
  :realization (:VERB "raise"))

(define-category BACK23801
  :mixins (PUT_DIRECTION-9.4)
  :realization (:VERB "back"))

(define-category LAY23500
  :mixins (PUT_SPATIAL-9.2)
  :realization (:VERB "lay"))

(define-category LAY23501
  :mixins (PUT_SPATIAL-9.2)
  :realization (:VERB "lay"))

(define-category PROP23500
  :mixins (PUT_SPATIAL-9.2)
  :realization (:VERB "prop"))

(define-category UNDERLAY23400
  :mixins (PUT_SPATIAL-9.2)
  :realization (:VERB "underlay"))

(define-category UNDERLAY23500
  :mixins (PUT_SPATIAL-9.2)
  :realization (:VERB "underlay"))

(define-category UNDERLAY23800
  :mixins (PUT_SPATIAL-9.2)
  :realization (:VERB "underlay"))

(define-category DANGLE23500
  :mixins (PUT_SPATIAL-9.2-1)
  :realization (:VERB "dangle"))

(define-category DANGLE24200
  :mixins (PUT_SPATIAL-9.2-1)
  :realization (:VERB "dangle"))

(define-category HANG23000
  :mixins (PUT_SPATIAL-9.2-1)
  :realization (:VERB "hang"))

(define-category HANG23504
  :mixins (PUT_SPATIAL-9.2-1)
  :realization (:VERB "hang"))

(define-category HANG23600
  :mixins (PUT_SPATIAL-9.2-1)
  :realization (:VERB "hang"))

(define-category HANG24201
  :mixins (PUT_SPATIAL-9.2-1)
  :realization (:VERB "hang"))

(define-category HANG23500
  :mixins (PUT_SPATIAL-9.2-1)
  :realization (:VERB "hang"))

(define-category HANG23503
  :mixins (PUT_SPATIAL-9.2-1)
  :realization (:VERB "hang"))

(define-category LEAN23500
  :mixins (PUT_SPATIAL-9.2-1)
  :realization (:VERB "lean"))

(define-category LEAN23800
  :mixins (PUT_SPATIAL-9.2-1)
  :realization (:VERB "lean"))

(define-category PERCH23510
  :mixins (PUT_SPATIAL-9.2-1)
  :realization (:VERB "perch"))

(define-category PERCH23500
  :mixins (PUT_SPATIAL-9.2-1)
  :realization (:VERB "perch"))

(define-category REST23502
  :mixins (PUT_SPATIAL-9.2-1)
  :realization (:VERB "rest"))

(define-category REST23501
  :mixins (PUT_SPATIAL-9.2-1)
  :realization (:VERB "rest"))

(define-category REST23504
  :mixins (PUT_SPATIAL-9.2-1)
  :realization (:VERB "rest"))

(define-category SIT23501
  :mixins (PUT_SPATIAL-9.2-1)
  :realization (:VERB "sit"))

(define-category SIT23800
  :mixins (PUT_SPATIAL-9.2-1)
  :realization (:VERB "sit"))

(define-category SIT24200
  :mixins (PUT_SPATIAL-9.2-1)
  :realization (:VERB "sit"))

(define-category SIT23500
  :mixins (PUT_SPATIAL-9.2-1)
  :realization (:VERB "sit"))

(define-category STAND23501
  :mixins (PUT_SPATIAL-9.2-1)
  :realization (:VERB "stand"))

(define-category STAND24203
  :mixins (PUT_SPATIAL-9.2-1)
  :realization (:VERB "stand"))

(define-category SUSPEND23500
  :mixins (PUT_SPATIAL-9.2-1)
  :realization (:VERB "suspend"))

(define-category REACH23800
  :mixins (REACH-51.8)
  :realization (:VERB "reach"))

(define-category REACH23801
  :mixins (REACH-51.8)
  :realization (:VERB "reach"))

(define-category HIT23807
  :mixins (REACH-51.8)
  :realization (:VERB "hit"))

(define-category HIT23800
  :mixins (REACH-51.8)
  :realization (:VERB "hit"))

(define-category MAKE23800
  :mixins (REACH-51.8)
  :realization (:VERB "make"))

(define-category MAKE24002
  :mixins (REACH-51.8)
  :realization (:VERB "make"))

(define-category BREAST23801
  :mixins (REACH-51.8)
  :realization (:VERB "breast"))

(define-category GROW23600
  :mixins (REAR-26.2.2)
  :realization (:VERB "grow"))

(define-category GROW23001
  :mixins (REAR-26.2.2)
  :realization (:VERB "grow"))

(define-category NURTURE24100
  :mixins (REAR-26.2.2)
  :realization (:VERB "nurture"))

(define-category NURTURE23200
  :mixins (REAR-26.2.2)
  :realization (:VERB "nurture"))

(define-category RAISE24100
  :mixins (REAR-26.2.2)
  :realization (:VERB "raise"))

(define-category RAISE23603
  :mixins (REAR-26.2.2)
  :realization (:VERB "raise"))

(define-category REAR24100
  :mixins (REAR-26.2.2)
  :realization (:VERB "rear"))

(define-category CULTIVATE23600
  :mixins (REAR-26.2.2-1)
  :realization (:VERB "cultivate"))

(define-category FARM23600
  :mixins (REAR-26.2.2-1)
  :realization (:VERB "farm"))

(define-category FARM24100
  :mixins (REAR-26.2.2-1)
  :realization (:VERB "farm"))

(define-category RETURN23201
  :mixins (RECIPROCATE-112)
  :realization (:VERB "return"))

(define-category RETURN24003
  :mixins (RECIPROCATE-112)
  :realization (:VERB "return"))

(define-category ANSWER23105
  :mixins (RECIPROCATE-112-1)
  :realization (:VERB "answer"))

(define-category ANSWER23206
  :mixins (RECIPROCATE-112-1)
  :realization (:VERB "answer"))

(define-category ANSWER23103
  :mixins (RECIPROCATE-112-1)
  :realization (:VERB "answer"))

(define-category ANSWER23102
  :mixins (RECIPROCATE-112-1)
  :realization (:VERB "answer"))

(define-category ANSWER23200
  :mixins (RECIPROCATE-112-1)
  :realization (:VERB "answer"))

(define-category RECIPROCATE24100
  :mixins (RECIPROCATE-112-1)
  :realization (:VERB "reciprocate"))

(define-category ASSERT23201
  :mixins (REFLEXIVE_APPEARANCE-48.1.2)
  :realization (:VERB "assert"))

(define-category DECLARE23201
  :mixins (REFLEXIVE_APPEARANCE-48.1.2)
  :realization (:VERB "declare"))

(define-category DEFINE24200
  :mixins (REFLEXIVE_APPEARANCE-48.1.2)
  :realization (:VERB "define"))

(define-category DISPLAY23900
  :mixins (REFLEXIVE_APPEARANCE-48.1.2)
  :realization (:VERB "display"))

(define-category EXPRESS23201
  :mixins (REFLEXIVE_APPEARANCE-48.1.2)
  :realization (:VERB "express"))

(define-category FORM24202
  :mixins (REFLEXIVE_APPEARANCE-48.1.2)
  :realization (:VERB "form"))

(define-category INTRUDE23200
  :mixins (REFLEXIVE_APPEARANCE-48.1.2)
  :realization (:VERB "intrude"))

(define-category MANIFEST23200
  :mixins (REFLEXIVE_APPEARANCE-48.1.2)
  :realization (:VERB "manifest"))

(define-category OFFER23100
  :mixins (REFLEXIVE_APPEARANCE-48.1.2)
  :realization (:VERB "offer"))

(define-category POSE24200
  :mixins (REFLEXIVE_APPEARANCE-48.1.2)
  :realization (:VERB "pose"))

(define-category PRESENT24200
  :mixins (REFLEXIVE_APPEARANCE-48.1.2)
  :realization (:VERB "present"))

(define-category PRESENT23200
  :mixins (REFLEXIVE_APPEARANCE-48.1.2)
  :realization (:VERB "present"))

(define-category PROFFER24000
  :mixins (REFLEXIVE_APPEARANCE-48.1.2)
  :realization (:VERB "proffer"))

(define-category REASSERT23200
  :mixins (REFLEXIVE_APPEARANCE-48.1.2)
  :realization (:VERB "reassert"))

(define-category RECOMMEND23200
  :mixins (REFLEXIVE_APPEARANCE-48.1.2)
  :realization (:VERB "recommend"))

(define-category SHAPE23100
  :mixins (REFLEXIVE_APPEARANCE-48.1.2)
  :realization (:VERB "shape"))

(define-category SHOW23901
  :mixins (REFLEXIVE_APPEARANCE-48.1.2)
  :realization (:VERB "show"))

(define-category SHOW23900
  :mixins (REFLEXIVE_APPEARANCE-48.1.2)
  :realization (:VERB "show"))

(define-category SHOW23200
  :mixins (REFLEXIVE_APPEARANCE-48.1.2)
  :realization (:VERB "show"))

(define-category SHOW23100
  :mixins (REFLEXIVE_APPEARANCE-48.1.2)
  :realization (:VERB "show"))

(define-category SUGGEST23201
  :mixins (REFLEXIVE_APPEARANCE-48.1.2)
  :realization (:VERB "suggest"))

(define-category SUGGEST23202
  :mixins (REFLEXIVE_APPEARANCE-48.1.2)
  :realization (:VERB "suggest"))

(define-category SUGGEST23200
  :mixins (REFLEXIVE_APPEARANCE-48.1.2)
  :realization (:VERB "suggest"))

(define-category REFRAIN23400
  :mixins (REFRAIN-69)
  :realization (:VERB "refrain"))

(define-category REFRAIN24200
  :mixins (REFRAIN-69)
  :realization (:VERB "refrain"))

(define-category ABSTAIN23400
  :mixins (REFRAIN-69)
  :realization (:VERB "abstain"))

(define-category ABSTAIN24100
  :mixins (REFRAIN-69)
  :realization (:VERB "abstain"))

(define-category DESIST23400
  :mixins (REFRAIN-69)
  :realization (:VERB "desist"))

(define-category FORBEAR24200
  :mixins (REFRAIN-69)
  :realization (:VERB "forbear"))

(define-category MEASURE24200
  :mixins (REGISTER-54.1-1-1)
  :realization (:VERB "measure"))

(define-category MEASURE23100
  :mixins (REGISTER-54.1-1-1)
  :realization (:VERB "measure"))

(define-category READ23202
  :mixins (REGISTER-54.1-1-1)
  :realization (:VERB "read"))

(define-category REGISTER23200
  :mixins (REGISTER-54.1-1-1)
  :realization (:VERB "register"))

(define-category TOTAL24200
  :mixins (REGISTER-54.1-1-1)
  :realization (:VERB "total"))

(define-category WEIGH24200
  :mixins (REGISTER-54.1-1-1)
  :realization (:VERB "weigh"))

(define-category WEIGH24201
  :mixins (REGISTER-54.1-1-1)
  :realization (:VERB "weigh"))

(define-category WALK_THROUGH23600
  :mixins (REHEARSE-26.8)
  :realization (:VERB "walk_through"))

(define-category REPEAT23600
  :mixins (REHEARSE-26.8)
  :realization (:VERB "repeat"))

(define-category EXERCISE23100
  :mixins (REHEARSE-26.8-1)
  :realization (:VERB "exercise"))

(define-category PRACTICE23600
  :mixins (REHEARSE-26.8-1)
  :realization (:VERB "practice"))

(define-category REHEARSE23600
  :mixins (REHEARSE-26.8-1)
  :realization (:VERB "rehearse"))

(define-category DISCOURAGE23700
  :mixins (REJECT-77.2-1)
  :realization (:VERB "discourage"))

(define-category DISCOURAGE23201
  :mixins (REJECT-77.2-1)
  :realization (:VERB "discourage"))

(define-category INVOLVE24200
  :mixins (RELATE-86.2-1)
  :realization (:VERB "involve"))

(define-category CONCERN24200
  :mixins (RELATE-86.2-1)
  :realization (:VERB "concern"))

(define-category TOUCH24200
  :mixins (RELATE-86.2-1)
  :realization (:VERB "touch"))

(define-category BEAR_ON24200
  :mixins (RELATE-86.2-1)
  :realization (:VERB "bear_on"))

(define-category TOUCH_ON24200
  :mixins (RELATE-86.2-1)
  :realization (:VERB "touch_on"))

(define-category REFER24200
  :mixins (RELATE-86.2-2)
  :realization (:VERB "refer"))

(define-category PERTAIN24201
  :mixins (RELATE-86.2-2)
  :realization (:VERB "pertain"))

(define-category RELATE24200
  :mixins (RELATE-86.2-2)
  :realization (:VERB "relate"))

(define-category RELY23111
  :mixins (RELY-70)
  :realization (:VERB "rely"))

(define-category DEPEND23100
  :mixins (RELY-70)
  :realization (:VERB "depend"))

(define-category BANK23102
  :mixins (RELY-70)
  :realization (:VERB "bank"))

(define-category COUNT23102
  :mixins (RELY-70)
  :realization (:VERB "count"))

(define-category FIGURE23101
  :mixins (RELY-70)
  :realization (:VERB "figure"))

(define-category RECKON23103
  :mixins (RELY-70)
  :realization (:VERB "reckon"))

(define-category BET23100
  :mixins (RELY-70)
  :realization (:VERB "bet"))

(define-category GAMBLE24100
  :mixins (RELY-70)
  :realization (:VERB "gamble"))

(define-category TAKE_A_CHANCE24100
  :mixins (RELY-70)
  :realization (:VERB "take_a_chance"))

(define-category ALCOHOLIZE23001
  :mixins (REMEDY-45.7)
  :realization (:VERB "alcoholize"))

(define-category ALCOHOLIZE23000
  :mixins (REMEDY-45.7)
  :realization (:VERB "alcoholize"))

(define-category BLAST23900
  :mixins (REMEDY-45.7)
  :realization (:VERB "blast"))

(define-category DEHUMIDIFY23000
  :mixins (REMEDY-45.7)
  :realization (:VERB "dehumidify"))

(define-category FEDERALIZE23002
  :mixins (REMEDY-45.7)
  :realization (:VERB "federalize"))

(define-category FEDERALIZE23000
  :mixins (REMEDY-45.7)
  :realization (:VERB "federalize"))

(define-category FORTIFY23500
  :mixins (REMEDY-45.7)
  :realization (:VERB "fortify"))

(define-category FORTIFY23001
  :mixins (REMEDY-45.7)
  :realization (:VERB "fortify"))

(define-category GRADE23500
  :mixins (REMEDY-45.7)
  :realization (:VERB "grade"))

(define-category HUMIDIFY23000
  :mixins (REMEDY-45.7)
  :realization (:VERB "humidify"))

(define-category ICE23000
  :mixins (REMEDY-45.7)
  :realization (:VERB "ice"))

(define-category ICE23003
  :mixins (REMEDY-45.7)
  :realization (:VERB "ice"))

(define-category INSPISSATE23000
  :mixins (REMEDY-45.7)
  :realization (:VERB "inspissate"))

(define-category INSPISSATE23001
  :mixins (REMEDY-45.7)
  :realization (:VERB "inspissate"))

(define-category INSPISSATE23003
  :mixins (REMEDY-45.7)
  :realization (:VERB "inspissate"))

(define-category IODIZE22900
  :mixins (REMEDY-45.7)
  :realization (:VERB "iodize"))

(define-category IODIZE23000
  :mixins (REMEDY-45.7)
  :realization (:VERB "iodize"))

(define-category LIGHT24300
  :mixins (REMEDY-45.7)
  :realization (:VERB "light"))

(define-category LIGHT23000
  :mixins (REMEDY-45.7)
  :realization (:VERB "light"))

(define-category MUDDY23000
  :mixins (REMEDY-45.7)
  :realization (:VERB "muddy"))

(define-category MUDDY23500
  :mixins (REMEDY-45.7)
  :realization (:VERB "muddy"))

(define-category NITRIFY23002
  :mixins (REMEDY-45.7)
  :realization (:VERB "nitrify"))

(define-category PINK23500
  :mixins (REMEDY-45.7)
  :realization (:VERB "pink"))

(define-category RAISE23003
  :mixins (REMEDY-45.7)
  :realization (:VERB "raise"))

(define-category RAISE24104
  :mixins (REMEDY-45.7)
  :realization (:VERB "raise"))

(define-category RAISE23002
  :mixins (REMEDY-45.7)
  :realization (:VERB "raise"))

(define-category REGULARIZE23000
  :mixins (REMEDY-45.7)
  :realization (:VERB "regularize"))

(define-category SINGE23000
  :mixins (REMEDY-45.7)
  :realization (:VERB "singe"))

(define-category TRIVIALIZE23200
  :mixins (REMEDY-45.7)
  :realization (:VERB "trivialize"))

(define-category VULGARIZE23001
  :mixins (REMEDY-45.7)
  :realization (:VERB "vulgarize"))

(define-category VULGARIZE23200
  :mixins (REMEDY-45.7)
  :realization (:VERB "vulgarize"))

(define-category EXTINGUISH23005
  :mixins (REMEDY-45.7-1)
  :realization (:VERB "extinguish"))

(define-category EXTINGUISH24300
  :mixins (REMEDY-45.7-1)
  :realization (:VERB "extinguish"))

(define-category LIGHTEN23500
  :mixins (REMEDY-45.7-1)
  :realization (:VERB "lighten"))

(define-category MAGNETIZE23000
  :mixins (REMEDY-45.7-1)
  :realization (:VERB "magnetize"))

(define-category MAGNIFY23001
  :mixins (REMEDY-45.7-1)
  :realization (:VERB "magnify"))

(define-category MAGNIFY23000
  :mixins (REMEDY-45.7-1)
  :realization (:VERB "magnify"))

(define-category ABOLISH24100
  :mixins (REMOVE-10.1)
  :realization (:VERB "abolish"))

(define-category ABSTRACT24000
  :mixins (REMOVE-10.1)
  :realization (:VERB "abstract"))

(define-category CULL23500
  :mixins (REMOVE-10.1)
  :realization (:VERB "cull"))

(define-category CULL24000
  :mixins (REMOVE-10.1)
  :realization (:VERB "cull"))

(define-category DEDUCT24000
  :mixins (REMOVE-10.1)
  :realization (:VERB "deduct"))

(define-category DEDUCT23101
  :mixins (REMOVE-10.1)
  :realization (:VERB "deduct"))

(define-category DELETE23200
  :mixins (REMOVE-10.1)
  :realization (:VERB "delete"))

(define-category DELETE23500
  :mixins (REMOVE-10.1)
  :realization (:VERB "delete"))

(define-category DEPOSE24100
  :mixins (REMOVE-10.1)
  :realization (:VERB "depose"))

(define-category DISGORGE23500
  :mixins (REMOVE-10.1)
  :realization (:VERB "disgorge"))

(define-category DISLODGE23501
  :mixins (REMOVE-10.1)
  :realization (:VERB "dislodge"))

(define-category DISLODGE23500
  :mixins (REMOVE-10.1)
  :realization (:VERB "dislodge"))

(define-category DISENGAGE23500
  :mixins (REMOVE-10.1)
  :realization (:VERB "disengage"))

(define-category DRAW23807
  :mixins (REMOVE-10.1)
  :realization (:VERB "draw"))

(define-category DRAW23301
  :mixins (REMOVE-10.1)
  :realization (:VERB "draw"))

(define-category DRAW24001
  :mixins (REMOVE-10.1)
  :realization (:VERB "draw"))

(define-category DRAW23113
  :mixins (REMOVE-10.1)
  :realization (:VERB "draw"))

(define-category DRAW23800
  :mixins (REMOVE-10.1)
  :realization (:VERB "draw"))

(define-category DRAW23801
  :mixins (REMOVE-10.1)
  :realization (:VERB "draw"))

(define-category EJECT23501
  :mixins (REMOVE-10.1)
  :realization (:VERB "eject"))

(define-category ELIMINATE22900
  :mixins (REMOVE-10.1)
  :realization (:VERB "eliminate"))

(define-category ELIMINATE23100
  :mixins (REMOVE-10.1)
  :realization (:VERB "eliminate"))

(define-category ELIMINATE24201
  :mixins (REMOVE-10.1)
  :realization (:VERB "eliminate"))

(define-category ELIMINATE23001
  :mixins (REMOVE-10.1)
  :realization (:VERB "eliminate"))

(define-category ERADICATE23600
  :mixins (REMOVE-10.1)
  :realization (:VERB "eradicate"))

(define-category ERADICATE23000
  :mixins (REMOVE-10.1)
  :realization (:VERB "eradicate"))

(define-category EXCISE23002
  :mixins (REMOVE-10.1)
  :realization (:VERB "excise"))

(define-category EXCISE23500
  :mixins (REMOVE-10.1)
  :realization (:VERB "excise"))

(define-category EXCOMMUNICATE23200
  :mixins (REMOVE-10.1)
  :realization (:VERB "excommunicate"))

(define-category EXPEL24101
  :mixins (REMOVE-10.1)
  :realization (:VERB "expel"))

(define-category EXPEL24100
  :mixins (REMOVE-10.1)
  :realization (:VERB "expel"))

(define-category EXTIRPATE23500
  :mixins (REMOVE-10.1)
  :realization (:VERB "extirpate"))

(define-category EXTRACT23100
  :mixins (REMOVE-10.1)
  :realization (:VERB "extract"))

(define-category EXTRACT23505
  :mixins (REMOVE-10.1)
  :realization (:VERB "extract"))

(define-category EXTRACT23507
  :mixins (REMOVE-10.1)
  :realization (:VERB "extract"))

(define-category EXTRACT23000
  :mixins (REMOVE-10.1)
  :realization (:VERB "extract"))

(define-category EXTRACT24000
  :mixins (REMOVE-10.1)
  :realization (:VERB "extract"))

(define-category EXTRACT23504
  :mixins (REMOVE-10.1)
  :realization (:VERB "extract"))

(define-category EXTRUDE23600
  :mixins (REMOVE-10.1)
  :realization (:VERB "extrude"))

(define-category KILL23004
  :mixins (REMOVE-10.1)
  :realization (:VERB "kill"))

(define-category KILL23000
  :mixins (REMOVE-10.1)
  :realization (:VERB "kill"))

(define-category KILL23008
  :mixins (REMOVE-10.1)
  :realization (:VERB "kill"))

(define-category LOP23500
  :mixins (REMOVE-10.1)
  :realization (:VERB "lop"))

(define-category LOP23501
  :mixins (REMOVE-10.1)
  :realization (:VERB "lop"))

(define-category OMIT23101
  :mixins (REMOVE-10.1)
  :realization (:VERB "omit"))

(define-category OSTRACIZE24101
  :mixins (REMOVE-10.1)
  :realization (:VERB "ostracize"))

(define-category PARTITION23000
  :mixins (REMOVE-10.1)
  :realization (:VERB "partition"))

(define-category PARTITION23500
  :mixins (REMOVE-10.1)
  :realization (:VERB "partition"))

(define-category PRY23500
  :mixins (REMOVE-10.1)
  :realization (:VERB "pry"))

(define-category PULL23803
  :mixins (REMOVE-10.1)
  :realization (:VERB "pull"))

(define-category REAP24000
  :mixins (REMOVE-10.1)
  :realization (:VERB "reap"))

(define-category REAP23500
  :mixins (REMOVE-10.1)
  :realization (:VERB "reap"))

(define-category REAM23001
  :mixins (REMOVE-10.1)
  :realization (:VERB "ream"))

(define-category RETRACT23200
  :mixins (REMOVE-10.1)
  :realization (:VERB "retract"))

(define-category SEPARATE23502
  :mixins (REMOVE-10.1)
  :realization (:VERB "separate"))

(define-category SEPARATE23501
  :mixins (REMOVE-10.1)
  :realization (:VERB "separate"))

(define-category SEPARATE24200
  :mixins (REMOVE-10.1)
  :realization (:VERB "separate"))

(define-category SHOO23800
  :mixins (REMOVE-10.1)
  :realization (:VERB "shoo"))

(define-category STRIP23012
  :mixins (REMOVE-10.1)
  :realization (:VERB "strip"))

(define-category STRIP23504
  :mixins (REMOVE-10.1)
  :realization (:VERB "strip"))

(define-category STRIP24000
  :mixins (REMOVE-10.1)
  :realization (:VERB "strip"))

(define-category STRIP23005
  :mixins (REMOVE-10.1)
  :realization (:VERB "strip"))

(define-category STRIP23006
  :mixins (REMOVE-10.1)
  :realization (:VERB "strip"))

(define-category STRIP24003
  :mixins (REMOVE-10.1)
  :realization (:VERB "strip"))

(define-category SUBTRACT23100
  :mixins (REMOVE-10.1)
  :realization (:VERB "subtract"))

(define-category SUBTRACT23100
  :mixins (REMOVE-10.1)
  :realization (:VERB "subtract"))

(define-category TAKE_AWAY23002
  :mixins (REMOVE-10.1)
  :realization (:VERB "take_away"))

(define-category TAKE_AWAY24001
  :mixins (REMOVE-10.1)
  :realization (:VERB "take_away"))

(define-category TAKE_AWAY23000
  :mixins (REMOVE-10.1)
  :realization (:VERB "take_away"))

(define-category TAKE_AWAY23001
  :mixins (REMOVE-10.1)
  :realization (:VERB "take_away"))

(define-category TAKE_OUT23100
  :mixins (REMOVE-10.1)
  :realization (:VERB "take_out"))

(define-category TAKE_OUT23101
  :mixins (REMOVE-10.1)
  :realization (:VERB "take_out"))

(define-category TAKE_OUT23509
  :mixins (REMOVE-10.1)
  :realization (:VERB "take_out"))

(define-category TAKE_OUT23800
  :mixins (REMOVE-10.1)
  :realization (:VERB "take_out"))

(define-category TAKE_OUT23810
  :mixins (REMOVE-10.1)
  :realization (:VERB "take_out"))

(define-category TAKE_OUT24000
  :mixins (REMOVE-10.1)
  :realization (:VERB "take_out"))

(define-category TAKE_OUT23500
  :mixins (REMOVE-10.1)
  :realization (:VERB "take_out"))

(define-category TAKE_OUT23000
  :mixins (REMOVE-10.1)
  :realization (:VERB "take_out"))

(define-category TAKE_OUT23501
  :mixins (REMOVE-10.1)
  :realization (:VERB "take_out"))

(define-category TAKE_OUT24101
  :mixins (REMOVE-10.1)
  :realization (:VERB "take_out"))

(define-category TAKE_OFF22903
  :mixins (REMOVE-10.1)
  :realization (:VERB "take_off"))

(define-category TAKE_OFF24100
  :mixins (REMOVE-10.1)
  :realization (:VERB "take_off"))

(define-category TAKE_OFF23000
  :mixins (REMOVE-10.1)
  :realization (:VERB "take_off"))

(define-category UPROOT23500
  :mixins (REMOVE-10.1)
  :realization (:VERB "uproot"))

(define-category WINKLE23500
  :mixins (REMOVE-10.1)
  :realization (:VERB "winkle"))

(define-category WRENCH23500
  :mixins (REMOVE-10.1)
  :realization (:VERB "wrench"))

(define-category WITHDRAW24000
  :mixins (REMOVE-10.1)
  :realization (:VERB "withdraw"))

(define-category WITHDRAW23001
  :mixins (REMOVE-10.1)
  :realization (:VERB "withdraw"))

(define-category WITHDRAW24001
  :mixins (REMOVE-10.1)
  :realization (:VERB "withdraw"))

(define-category OUST24100
  :mixins (REMOVE-10.1)
  :realization (:VERB "oust"))

(define-category DISCHARGE23506
  :mixins (REMOVE-10.1)
  :realization (:VERB "discharge"))

(define-category DISCHARGE22900
  :mixins (REMOVE-10.1)
  :realization (:VERB "discharge"))

(define-category DISCHARGE23500
  :mixins (REMOVE-10.1)
  :realization (:VERB "discharge"))

(define-category DISMISS24100
  :mixins (REMOVE-10.1)
  :realization (:VERB "dismiss"))

(define-category EVICT23500
  :mixins (REMOVE-10.1)
  :realization (:VERB "evict"))

(define-category REMOVE24102
  :mixins (REMOVE-10.1)
  :realization (:VERB "remove"))

(define-category REMOVE24100
  :mixins (REMOVE-10.1)
  :realization (:VERB "remove"))

(define-category REMOVE23000
  :mixins (REMOVE-10.1)
  :realization (:VERB "remove"))

(define-category SEVER23500
  :mixins (REMOVE-10.1)
  :realization (:VERB "sever"))

(define-category EXTINGUISH23001
  :mixins (REMOVE-10.1)
  :realization (:VERB "extinguish"))

(define-category EXTINGUISH23003
  :mixins (REMOVE-10.1)
  :realization (:VERB "extinguish"))

(define-category EXTINGUISH23005
  :mixins (REMOVE-10.1)
  :realization (:VERB "extinguish"))

(define-category EXTINGUISH24300
  :mixins (REMOVE-10.1)
  :realization (:VERB "extinguish"))

(define-category EXTINGUISH23000
  :mixins (REMOVE-10.1)
  :realization (:VERB "extinguish"))

(define-category PRISE23500
  :mixins (REMOVE-10.1)
  :realization (:VERB "prise"))

(define-category DRIVE23500
  :mixins (RENDER-29.90)
  :realization (:VERB "drive"))

(define-category LEAVE24202
  :mixins (RENDER-29.90)
  :realization (:VERB "leave"))

(define-category MAKE23000
  :mixins (RENDER-29.90-1)
  :realization (:VERB "make"))

(define-category GET23001
  :mixins (RENDER-29.90-2)
  :realization (:VERB "get"))

(define-category BE24206
  :mixins (REPRESENTATION-110.1)
  :realization (:VERB "be"))

(define-category BE24208
  :mixins (REPRESENTATION-110.1)
  :realization (:VERB "be"))

(define-category DENOTE23200
  :mixins (REPRESENTATION-110.1)
  :realization (:VERB "denote"))

(define-category MEAN23203
  :mixins (REPRESENTATION-110.1)
  :realization (:VERB "mean"))

(define-category REPRESENT23202
  :mixins (REPRESENTATION-110.1)
  :realization (:VERB "represent"))

(define-category REPRESENT24202
  :mixins (REPRESENTATION-110.1)
  :realization (:VERB "represent"))

(define-category SIGNIFY23202
  :mixins (REPRESENTATION-110.1)
  :realization (:VERB "signify"))

(define-category SYMBOLIZE23200
  :mixins (REPRESENTATION-110.1)
  :realization (:VERB "symbolize"))

(define-category TAKE24200
  :mixins (REQUIRE-103)
  :realization (:VERB "take"))

(define-category NECESSITATE24200
  :mixins (REQUIRE-103-1)
  :realization (:VERB "necessitate"))

(define-category REQUIRE23400
  :mixins (REQUIRE-103-1)
  :realization (:VERB "require"))

(define-category INVOLVE24207
  :mixins (REQUIRE-103-1)
  :realization (:VERB "involve"))

(define-category DEMAND24200
  :mixins (REQUIRE-103-1)
  :realization (:VERB "demand"))

(define-category NEED24200
  :mixins (REQUIRE-103-2)
  :realization (:VERB "need"))

(define-category LEAVE_OFFICE24100
  :mixins (RESIGN-10.11)
  :realization (:VERB "leave_office"))

(define-category STEP_DOWN24100
  :mixins (RESIGN-10.11)
  :realization (:VERB "step_down"))

(define-category WALK_OUT24100
  :mixins (RESIGN-10.11)
  :realization (:VERB "walk_out"))

(define-category RESIGN24100
  :mixins (RESIGN-10.11-1)
  :realization (:VERB "resign"))

(define-category RETIRE24102
  :mixins (RESIGN-10.11-1)
  :realization (:VERB "retire"))

(define-category WALK_OUT23800
  :mixins (RESIGN-10.11-1)
  :realization (:VERB "walk_out"))

(define-category WITHDRAW24101
  :mixins (RESIGN-10.11-1)
  :realization (:VERB "withdraw"))

(define-category ABDICATE24100
  :mixins (RESIGN-10.11-2)
  :realization (:VERB "abdicate"))

(define-category DEPART24100
  :mixins (RESIGN-10.11-2)
  :realization (:VERB "depart"))

(define-category GIVE_UP24105
  :mixins (RESIGN-10.11-2)
  :realization (:VERB "give_up"))

(define-category LEAVE24100
  :mixins (RESIGN-10.11-2)
  :realization (:VERB "leave"))

(define-category RENOUNCE24101
  :mixins (RESIGN-10.11-2)
  :realization (:VERB "renounce"))

(define-category RENOUNCE24100
  :mixins (RESIGN-10.11-2)
  :realization (:VERB "renounce"))

(define-category RESIGN24100
  :mixins (RESIGN-10.11-2)
  :realization (:VERB "resign"))

(define-category QUIT24100
  :mixins (RESIGN-10.11-2)
  :realization (:VERB "quit"))

(define-category RESIGN24105
  :mixins (RESIGN-10.11-2)
  :realization (:VERB "resign"))

(define-category VACATE24100
  :mixins (RESIGN-10.11-2)
  :realization (:VERB "vacate"))

(define-category REACT24100
  :mixins (RESPOND-113)
  :realization (:VERB "react"))

(define-category REBEL24100
  :mixins (RESPOND-113)
  :realization (:VERB "rebel"))

(define-category REPLY23200
  :mixins (RESPOND-113)
  :realization (:VERB "reply"))

(define-category RESPOND23101
  :mixins (RESPOND-113)
  :realization (:VERB "respond"))

(define-category RESPOND23200
  :mixins (RESPOND-113)
  :realization (:VERB "respond"))

(define-category RESPOND23100
  :mixins (RESPOND-113)
  :realization (:VERB "respond"))

(define-category RETALIATE23300
  :mixins (RESPOND-113)
  :realization (:VERB "retaliate"))

(define-category BET23200
  :mixins (RISK-94)
  :realization (:VERB "bet"))

(define-category GAMBLE24100
  :mixins (RISK-94)
  :realization (:VERB "gamble"))

(define-category PUNT23300
  :mixins (RISK-94)
  :realization (:VERB "punt"))

(define-category VENTURE24100
  :mixins (RISK-94)
  :realization (:VERB "venture"))

(define-category WAGER23300
  :mixins (RISK-94)
  :realization (:VERB "wager"))

(define-category CHANCE24100
  :mixins (RISK-94-1)
  :realization (:VERB "chance"))

(define-category RISK24101
  :mixins (RISK-94-1)
  :realization (:VERB "risk"))

(define-category RISK24100
  :mixins (RISK-94-1)
  :realization (:VERB "risk"))

(define-category HAZARD24100
  :mixins (RISK-94-1)
  :realization (:VERB "hazard"))

(define-category ROB24000
  :mixins (ROB-10.6.4)
  :realization (:VERB "rob"))

(define-category BLEED23000
  :mixins (ROB-10.6.4)
  :realization (:VERB "bleed"))

(define-category BLEED24009
  :mixins (ROB-10.6.4)
  :realization (:VERB "bleed"))

(define-category STRIP23012
  :mixins (ROB-10.6.4)
  :realization (:VERB "strip"))

(define-category STRIP23504
  :mixins (ROB-10.6.4)
  :realization (:VERB "strip"))

(define-category STRIP24000
  :mixins (ROB-10.6.4)
  :realization (:VERB "strip"))

(define-category STRIP23005
  :mixins (ROB-10.6.4)
  :realization (:VERB "strip"))

(define-category STRIP23006
  :mixins (ROB-10.6.4)
  :realization (:VERB "strip"))

(define-category STRIP24003
  :mixins (ROB-10.6.4)
  :realization (:VERB "strip"))

(define-category MILK23400
  :mixins (ROB-10.6.4)
  :realization (:VERB "milk"))

(define-category CULL24000
  :mixins (ROB-10.6.4)
  :realization (:VERB "cull"))

(define-category BOUNCE23802
  :mixins (ROLL-51.3.1)
  :realization (:VERB "bounce"))

(define-category BOUNCE23503
  :mixins (ROLL-51.3.1)
  :realization (:VERB "bounce"))

(define-category BOUNCE23800
  :mixins (ROLL-51.3.1)
  :realization (:VERB "bounce"))

(define-category DRIFT23806
  :mixins (ROLL-51.3.1)
  :realization (:VERB "drift"))

(define-category DRIFT23804
  :mixins (ROLL-51.3.1)
  :realization (:VERB "drift"))

(define-category DRIFT23802
  :mixins (ROLL-51.3.1)
  :realization (:VERB "drift"))

(define-category DROP23800
  :mixins (ROLL-51.3.1)
  :realization (:VERB "drop"))

(define-category DROP23801
  :mixins (ROLL-51.3.1)
  :realization (:VERB "drop"))

(define-category FLOAT23804
  :mixins (ROLL-51.3.1)
  :realization (:VERB "float"))

(define-category FLOAT23802
  :mixins (ROLL-51.3.1)
  :realization (:VERB "float"))

(define-category FLOAT23800
  :mixins (ROLL-51.3.1)
  :realization (:VERB "float"))

(define-category GLIDE23802
  :mixins (ROLL-51.3.1)
  :realization (:VERB "glide"))

(define-category GLIDE23800
  :mixins (ROLL-51.3.1)
  :realization (:VERB "glide"))

(define-category MOVE23800
  :mixins (ROLL-51.3.1)
  :realization (:VERB "move"))

(define-category MOVE23801
  :mixins (ROLL-51.3.1)
  :realization (:VERB "move"))

(define-category MOVE23803
  :mixins (ROLL-51.3.1)
  :realization (:VERB "move"))

(define-category NOSE23800
  :mixins (ROLL-51.3.1)
  :realization (:VERB "nose"))

(define-category ROLL22906
  :mixins (ROLL-51.3.1)
  :realization (:VERB "roll"))

(define-category ROLL23800
  :mixins (ROLL-51.3.1)
  :realization (:VERB "roll"))

(define-category SLIDE23802
  :mixins (ROLL-51.3.1)
  :realization (:VERB "slide"))

(define-category SLIDE23800
  :mixins (ROLL-51.3.1)
  :realization (:VERB "slide"))

(define-category SLIDE23801
  :mixins (ROLL-51.3.1)
  :realization (:VERB "slide"))

(define-category SWING23500
  :mixins (ROLL-51.3.1)
  :realization (:VERB "swing"))

(define-category SWING23803
  :mixins (ROLL-51.3.1)
  :realization (:VERB "swing"))

(define-category SWING23802
  :mixins (ROLL-51.3.1)
  :realization (:VERB "swing"))

(define-category COIL23800
  :mixins (ROLL-51.3.1)
  :realization (:VERB "coil"))

(define-category REVOLVE23802
  :mixins (ROLL-51.3.1)
  :realization (:VERB "revolve"))

(define-category REVOLVE23801
  :mixins (ROLL-51.3.1)
  :realization (:VERB "revolve"))

(define-category REVOLVE23800
  :mixins (ROLL-51.3.1)
  :realization (:VERB "revolve"))

(define-category ROTATE23800
  :mixins (ROLL-51.3.1)
  :realization (:VERB "rotate"))

(define-category ROTATE23801
  :mixins (ROLL-51.3.1)
  :realization (:VERB "rotate"))

(define-category SPIN23802
  :mixins (ROLL-51.3.1)
  :realization (:VERB "spin"))

(define-category SPIN23801
  :mixins (ROLL-51.3.1)
  :realization (:VERB "spin"))

(define-category TURN23813
  :mixins (ROLL-51.3.1)
  :realization (:VERB "turn"))

(define-category TURN23801
  :mixins (ROLL-51.3.1)
  :realization (:VERB "turn"))

(define-category TURN23804
  :mixins (ROLL-51.3.1)
  :realization (:VERB "turn"))

(define-category TURN23802
  :mixins (ROLL-51.3.1)
  :realization (:VERB "turn"))

(define-category TWIRL23801
  :mixins (ROLL-51.3.1)
  :realization (:VERB "twirl"))

(define-category TWIRL23800
  :mixins (ROLL-51.3.1)
  :realization (:VERB "twirl"))

(define-category TWIST23506
  :mixins (ROLL-51.3.1)
  :realization (:VERB "twist"))

(define-category TWIST23802
  :mixins (ROLL-51.3.1)
  :realization (:VERB "twist"))

(define-category TWIST23801
  :mixins (ROLL-51.3.1)
  :realization (:VERB "twist"))

(define-category WHIRL23803
  :mixins (ROLL-51.3.1)
  :realization (:VERB "whirl"))

(define-category WHIRL23804
  :mixins (ROLL-51.3.1)
  :realization (:VERB "whirl"))

(define-category WHIRL23800
  :mixins (ROLL-51.3.1)
  :realization (:VERB "whirl"))

(define-category WHIRL23802
  :mixins (ROLL-51.3.1)
  :realization (:VERB "whirl"))

(define-category WHIRL23801
  :mixins (ROLL-51.3.1)
  :realization (:VERB "whirl"))

(define-category WIND23506
  :mixins (ROLL-51.3.1)
  :realization (:VERB "wind"))

(define-category WIND23800
  :mixins (ROLL-51.3.1)
  :realization (:VERB "wind"))

(define-category CURL23500
  :mixins (ROTATE-51.9.1-1)
  :realization (:VERB "curl"))

(define-category CURL23501
  :mixins (ROTATE-51.9.1-1)
  :realization (:VERB "curl"))

(define-category CURL23800
  :mixins (ROTATE-51.9.1-1)
  :realization (:VERB "curl"))

(define-category COIL23800
  :mixins (ROTATE-51.9.1-1)
  :realization (:VERB "coil"))

(define-category COIL23500
  :mixins (ROTATE-51.9.1-1)
  :realization (:VERB "coil"))

(define-category ROTATE23801
  :mixins (ROTATE-51.9.1-1)
  :realization (:VERB "rotate"))

(define-category SPIN23802
  :mixins (ROTATE-51.9.1-1)
  :realization (:VERB "spin"))

(define-category SWING23802
  :mixins (ROTATE-51.9.1-1)
  :realization (:VERB "swing"))

(define-category TWIRL23801
  :mixins (ROTATE-51.9.1-1)
  :realization (:VERB "twirl"))

(define-category TWIST23501
  :mixins (ROTATE-51.9.1-1)
  :realization (:VERB "twist"))

(define-category WIND23506
  :mixins (ROTATE-51.9.1-1)
  :realization (:VERB "wind"))

(define-category BORE23500
  :mixins (RUMMAGE-35.5)
  :realization (:VERB "bore"))

(define-category BURROW23800
  :mixins (RUMMAGE-35.5)
  :realization (:VERB "burrow"))

(define-category FUMBLE23500
  :mixins (RUMMAGE-35.5)
  :realization (:VERB "fumble"))

(define-category LEAF23910
  :mixins (RUMMAGE-35.5)
  :realization (:VERB "leaf"))

(define-category LISTEN24111
  :mixins (RUMMAGE-35.5)
  :realization (:VERB "listen"))

(define-category LISTEN23901
  :mixins (RUMMAGE-35.5)
  :realization (:VERB "listen"))

(define-category LOOK23902
  :mixins (RUMMAGE-35.5)
  :realization (:VERB "look"))

(define-category POKE23900
  :mixins (RUMMAGE-35.5)
  :realization (:VERB "poke"))

(define-category SCRABBLE23513
  :mixins (RUMMAGE-35.5)
  :realization (:VERB "scrabble"))

(define-category FORAGE24000
  :mixins (RUMMAGE-35.5-1)
  :realization (:VERB "forage"))

(define-category GROPE23501
  :mixins (RUMMAGE-35.5-1)
  :realization (:VERB "grope"))

(define-category RIFLE23513
  :mixins (RUMMAGE-35.5-1)
  :realization (:VERB "rifle"))

(define-category RUMMAGE23500
  :mixins (RUMMAGE-35.5-1)
  :realization (:VERB "rummage"))

(define-category PAW23500
  :mixins (RUMMAGE-35.5-1)
  :realization (:VERB "paw"))

(define-category DELVE23500
  :mixins (RUMMAGE-35.5-1)
  :realization (:VERB "delve"))

(define-category ROOT23500
  :mixins (RUMMAGE-35.5-1)
  :realization (:VERB "root"))

(define-category THUMB23910
  :mixins (RUMMAGE-35.5-1)
  :realization (:VERB "thumb"))

(define-category SNOOP23200
  :mixins (RUMMAGE-35.5-1)
  :realization (:VERB "snoop"))

(define-category TUNNEL23800
  :mixins (RUMMAGE-35.5-1)
  :realization (:VERB "tunnel"))

(define-category AMBLE23800
  :mixins (RUN-51.3.2)
  :realization (:VERB "amble"))

(define-category AMBULATE23800
  :mixins (RUN-51.3.2)
  :realization (:VERB "ambulate"))

(define-category BACKPACK23800
  :mixins (RUN-51.3.2)
  :realization (:VERB "backpack"))

(define-category BOLT23802
  :mixins (RUN-51.3.2)
  :realization (:VERB "bolt"))

(define-category BOUND23801
  :mixins (RUN-51.3.2)
  :realization (:VERB "bound"))

(define-category BUSTLE23800
  :mixins (RUN-51.3.2)
  :realization (:VERB "bustle"))

(define-category CAPER23800
  :mixins (RUN-51.3.2)
  :realization (:VERB "caper"))

(define-category CAROM23500
  :mixins (RUN-51.3.2)
  :realization (:VERB "carom"))

(define-category CAROM23800
  :mixins (RUN-51.3.2)
  :realization (:VERB "carom"))

(define-category CAVORT23800
  :mixins (RUN-51.3.2)
  :realization (:VERB "cavort"))

(define-category CHARGE23800
  :mixins (RUN-51.3.2)
  :realization (:VERB "charge"))

(define-category CHARGE23300
  :mixins (RUN-51.3.2)
  :realization (:VERB "charge"))

(define-category CLAMBER23800
  :mixins (RUN-51.3.2)
  :realization (:VERB "clamber"))

(define-category CLIMB23801
  :mixins (RUN-51.3.2)
  :realization (:VERB "climb"))

(define-category CLIMB23800
  :mixins (RUN-51.3.2)
  :realization (:VERB "climb"))

(define-category CLUMP23800
  :mixins (RUN-51.3.2)
  :realization (:VERB "clump"))

(define-category CRAWL23800
  :mixins (RUN-51.3.2)
  :realization (:VERB "crawl"))

(define-category CREEP23804
  :mixins (RUN-51.3.2)
  :realization (:VERB "creep"))

(define-category CREEP23800
  :mixins (RUN-51.3.2)
  :realization (:VERB "creep"))

(define-category DODDER23800
  :mixins (RUN-51.3.2)
  :realization (:VERB "dodder"))

(define-category FLIT23800
  :mixins (RUN-51.3.2)
  :realization (:VERB "flit"))

(define-category FLOUNCE23800
  :mixins (RUN-51.3.2)
  :realization (:VERB "flounce"))

(define-category FROLIC23800
  :mixins (RUN-51.3.2)
  :realization (:VERB "frolic"))

(define-category GALLIVANT23800
  :mixins (RUN-51.3.2)
  :realization (:VERB "gallivant"))

(define-category GAMBOL23800
  :mixins (RUN-51.3.2)
  :realization (:VERB "gambol"))

(define-category GHOST23800
  :mixins (RUN-51.3.2)
  :realization (:VERB "ghost"))

(define-category GOOSE_STEP23800
  :mixins (RUN-51.3.2)
  :realization (:VERB "goose_step"))

(define-category HIKE23800
  :mixins (RUN-51.3.2)
  :realization (:VERB "hike"))

(define-category HITCHHIKE23800
  :mixins (RUN-51.3.2)
  :realization (:VERB "hitchhike"))

(define-category LIMP23801
  :mixins (RUN-51.3.2)
  :realization (:VERB "limp"))

(define-category LIMP23800
  :mixins (RUN-51.3.2)
  :realization (:VERB "limp"))

(define-category LOLLOP23800
  :mixins (RUN-51.3.2)
  :realization (:VERB "lollop"))

(define-category LUMBER23800
  :mixins (RUN-51.3.2)
  :realization (:VERB "lumber"))

(define-category LURCH23801
  :mixins (RUN-51.3.2)
  :realization (:VERB "lurch"))

(define-category LURCH23800
  :mixins (RUN-51.3.2)
  :realization (:VERB "lurch"))

(define-category LURCH23803
  :mixins (RUN-51.3.2)
  :realization (:VERB "lurch"))

(define-category MEANDER23800
  :mixins (RUN-51.3.2)
  :realization (:VERB "meander"))

(define-category MINCE23800
  :mixins (RUN-51.3.2)
  :realization (:VERB "mince"))

(define-category MOSEY23800
  :mixins (RUN-51.3.2)
  :realization (:VERB "mosey"))

(define-category PACE23801
  :mixins (RUN-51.3.2)
  :realization (:VERB "pace"))

(define-category PACE23800
  :mixins (RUN-51.3.2)
  :realization (:VERB "pace"))

(define-category POUNCE23800
  :mixins (RUN-51.3.2)
  :realization (:VERB "pounce"))

(define-category ROMP23801
  :mixins (RUN-51.3.2)
  :realization (:VERB "romp"))

(define-category ROMP23800
  :mixins (RUN-51.3.2)
  :realization (:VERB "romp"))

(define-category SASHAY23800
  :mixins (RUN-51.3.2)
  :realization (:VERB "sashay"))

(define-category SASHAY23801
  :mixins (RUN-51.3.2)
  :realization (:VERB "sashay"))

(define-category SAUNTER23800
  :mixins (RUN-51.3.2)
  :realization (:VERB "saunter"))

(define-category SCAMPER23800
  :mixins (RUN-51.3.2)
  :realization (:VERB "scamper"))

(define-category SCRAM23800
  :mixins (RUN-51.3.2)
  :realization (:VERB "scram"))

(define-category SCRAMBLE23801
  :mixins (RUN-51.3.2)
  :realization (:VERB "scramble"))

(define-category SCRAMBLE23800
  :mixins (RUN-51.3.2)
  :realization (:VERB "scramble"))

(define-category SCUD23800
  :mixins (RUN-51.3.2)
  :realization (:VERB "scud"))

(define-category SCURRY23800
  :mixins (RUN-51.3.2)
  :realization (:VERB "scurry"))

(define-category SCUTTLE23800
  :mixins (RUN-51.3.2)
  :realization (:VERB "scuttle"))

(define-category SHAMBLE23800
  :mixins (RUN-51.3.2)
  :realization (:VERB "shamble"))

(define-category SHUFFLE23800
  :mixins (RUN-51.3.2)
  :realization (:VERB "shuffle"))

(define-category SIDLE23800
  :mixins (RUN-51.3.2)
  :realization (:VERB "sidle"))

(define-category SIDLE23801
  :mixins (RUN-51.3.2)
  :realization (:VERB "sidle"))

(define-category SKEDADDLE23800
  :mixins (RUN-51.3.2)
  :realization (:VERB "skedaddle"))

(define-category SKULK23800
  :mixins (RUN-51.3.2)
  :realization (:VERB "skulk"))

(define-category SLEEPWALK23800
  :mixins (RUN-51.3.2)
  :realization (:VERB "sleepwalk"))

(define-category SLINK23800
  :mixins (RUN-51.3.2)
  :realization (:VERB "slink"))

(define-category SLITHER23800
  :mixins (RUN-51.3.2)
  :realization (:VERB "slither"))

(define-category SLOG23800
  :mixins (RUN-51.3.2)
  :realization (:VERB "slog"))

(define-category SLOUCH23800
  :mixins (RUN-51.3.2)
  :realization (:VERB "slouch"))

(define-category SOMERSAULT23800
  :mixins (RUN-51.3.2)
  :realization (:VERB "somersault"))

(define-category SPRINT23800
  :mixins (RUN-51.3.2)
  :realization (:VERB "sprint"))

(define-category SPRING23801
  :mixins (RUN-51.3.2)
  :realization (:VERB "spring"))

(define-category STAGGER23801
  :mixins (RUN-51.3.2)
  :realization (:VERB "stagger"))

(define-category STAGGER23800
  :mixins (RUN-51.3.2)
  :realization (:VERB "stagger"))

(define-category STOMP23800
  :mixins (RUN-51.3.2)
  :realization (:VERB "stomp"))

(define-category STRAY23800
  :mixins (RUN-51.3.2)
  :realization (:VERB "stray"))

(define-category STRAY23801
  :mixins (RUN-51.3.2)
  :realization (:VERB "stray"))

(define-category STREAK23801
  :mixins (RUN-51.3.2)
  :realization (:VERB "streak"))

(define-category STREAK23800
  :mixins (RUN-51.3.2)
  :realization (:VERB "streak"))

(define-category STUMBLE23800
  :mixins (RUN-51.3.2)
  :realization (:VERB "stumble"))

(define-category STUMBLE23801
  :mixins (RUN-51.3.2)
  :realization (:VERB "stumble"))

(define-category STUMP23800
  :mixins (RUN-51.3.2)
  :realization (:VERB "stump"))

(define-category SWAG23801
  :mixins (RUN-51.3.2)
  :realization (:VERB "swag"))

(define-category SWAGGER23800
  :mixins (RUN-51.3.2)
  :realization (:VERB "swagger"))

(define-category TEAR23800
  :mixins (RUN-51.3.2)
  :realization (:VERB "tear"))

(define-category TIPTOE23800
  :mixins (RUN-51.3.2)
  :realization (:VERB "tiptoe"))

(define-category TODDLE23800
  :mixins (RUN-51.3.2)
  :realization (:VERB "toddle"))

(define-category TOTTER23800
  :mixins (RUN-51.3.2)
  :realization (:VERB "totter"))

(define-category TOTTER23801
  :mixins (RUN-51.3.2)
  :realization (:VERB "totter"))

(define-category TOTTER23802
  :mixins (RUN-51.3.2)
  :realization (:VERB "totter"))

(define-category TREAD23800
  :mixins (RUN-51.3.2)
  :realization (:VERB "tread"))

(define-category TROOP23800
  :mixins (RUN-51.3.2)
  :realization (:VERB "troop"))

(define-category TRUNDLE23800
  :mixins (RUN-51.3.2)
  :realization (:VERB "trundle"))

(define-category WADDLE23800
  :mixins (RUN-51.3.2)
  :realization (:VERB "waddle"))

(define-category WORM23800
  :mixins (RUN-51.3.2)
  :realization (:VERB "worm"))

(define-category YAW23801
  :mixins (RUN-51.3.2)
  :realization (:VERB "yaw"))

(define-category YAW23800
  :mixins (RUN-51.3.2)
  :realization (:VERB "yaw"))

(define-category ZIGZAG23800
  :mixins (RUN-51.3.2)
  :realization (:VERB "zigzag"))

(define-category ZOOM23800
  :mixins (RUN-51.3.2)
  :realization (:VERB "zoom"))

(define-category HOP23801
  :mixins (RUN-51.3.2-1)
  :realization (:VERB "hop"))

(define-category HOP23802
  :mixins (RUN-51.3.2-1)
  :realization (:VERB "hop"))

(define-category HOP23804
  :mixins (RUN-51.3.2-1)
  :realization (:VERB "hop"))

(define-category HOP23800
  :mixins (RUN-51.3.2-1)
  :realization (:VERB "hop"))

(define-category JOURNEY23801
  :mixins (RUN-51.3.2-1)
  :realization (:VERB "journey"))

(define-category JOURNEY23800
  :mixins (RUN-51.3.2-1)
  :realization (:VERB "journey"))

(define-category LEAP23810
  :mixins (RUN-51.3.2-1)
  :realization (:VERB "leap"))

(define-category LEAP23800
  :mixins (RUN-51.3.2-1)
  :realization (:VERB "leap"))

(define-category PAD23800
  :mixins (RUN-51.3.2-1)
  :realization (:VERB "pad"))

(define-category PERAMBULATE23800
  :mixins (RUN-51.3.2-1)
  :realization (:VERB "perambulate"))

(define-category PLOD23800
  :mixins (RUN-51.3.2-1)
  :realization (:VERB "plod"))

(define-category PROWL23800
  :mixins (RUN-51.3.2-1)
  :realization (:VERB "prowl"))

(define-category RAMBLE23801
  :mixins (RUN-51.3.2-1)
  :realization (:VERB "ramble"))

(define-category ROAM23800
  :mixins (RUN-51.3.2-1)
  :realization (:VERB "roam"))

(define-category ROVE23800
  :mixins (RUN-51.3.2-1)
  :realization (:VERB "rove"))

(define-category STRIDE23803
  :mixins (RUN-51.3.2-1)
  :realization (:VERB "stride"))

(define-category STRIDE23800
  :mixins (RUN-51.3.2-1)
  :realization (:VERB "stride"))

(define-category STROLL23800
  :mixins (RUN-51.3.2-1)
  :realization (:VERB "stroll"))

(define-category SWEEP23503
  :mixins (RUN-51.3.2-1)
  :realization (:VERB "sweep"))

(define-category SWEEP23800
  :mixins (RUN-51.3.2-1)
  :realization (:VERB "sweep"))

(define-category SWIM23800
  :mixins (RUN-51.3.2-1)
  :realization (:VERB "swim"))

(define-category TRAIPSE23800
  :mixins (RUN-51.3.2-1)
  :realization (:VERB "traipse"))

(define-category TRAMP23802
  :mixins (RUN-51.3.2-1)
  :realization (:VERB "tramp"))

(define-category TRAMP23803
  :mixins (RUN-51.3.2-1)
  :realization (:VERB "tramp"))

(define-category TRAMP23801
  :mixins (RUN-51.3.2-1)
  :realization (:VERB "tramp"))

(define-category TRAMP23800
  :mixins (RUN-51.3.2-1)
  :realization (:VERB "tramp"))

(define-category TRAVEL23802
  :mixins (RUN-51.3.2-1)
  :realization (:VERB "travel"))

(define-category TRAVEL23800
  :mixins (RUN-51.3.2-1)
  :realization (:VERB "travel"))

(define-category TREK23801
  :mixins (RUN-51.3.2-1)
  :realization (:VERB "trek"))

(define-category TRUDGE23801
  :mixins (RUN-51.3.2-1)
  :realization (:VERB "trudge"))

(define-category VAULT23800
  :mixins (RUN-51.3.2-1)
  :realization (:VERB "vault"))

(define-category VAULT23801
  :mixins (RUN-51.3.2-1)
  :realization (:VERB "vault"))

(define-category WADE23800
  :mixins (RUN-51.3.2-1)
  :realization (:VERB "wade"))

(define-category WANDER23802
  :mixins (RUN-51.3.2-1)
  :realization (:VERB "wander"))

(define-category WANDER23800
  :mixins (RUN-51.3.2-1)
  :realization (:VERB "wander"))

(define-category WING23800
  :mixins (RUN-51.3.2-1)
  :realization (:VERB "wing"))

(define-category BACK23800
  :mixins (RUN-51.3.2-2)
  :realization (:VERB "back"))

(define-category BOUNCE23802
  :mixins (RUN-51.3.2-2)
  :realization (:VERB "bounce"))

(define-category BOUNCE23503
  :mixins (RUN-51.3.2-2)
  :realization (:VERB "bounce"))

(define-category BOUNCE23800
  :mixins (RUN-51.3.2-2)
  :realization (:VERB "bounce"))

(define-category BOWL23800
  :mixins (RUN-51.3.2-2)
  :realization (:VERB "bowl"))

(define-category CANTER23803
  :mixins (RUN-51.3.2-2)
  :realization (:VERB "canter"))

(define-category CANTER23801
  :mixins (RUN-51.3.2-2)
  :realization (:VERB "canter"))

(define-category CANTER23800
  :mixins (RUN-51.3.2-2)
  :realization (:VERB "canter"))

(define-category COAST23800
  :mixins (RUN-51.3.2-2)
  :realization (:VERB "coast"))

(define-category DART23800
  :mixins (RUN-51.3.2-2)
  :realization (:VERB "dart"))

(define-category DART23801
  :mixins (RUN-51.3.2-2)
  :realization (:VERB "dart"))

(define-category DASH23800
  :mixins (RUN-51.3.2-2)
  :realization (:VERB "dash"))

(define-category DRIFT23503
  :mixins (RUN-51.3.2-2)
  :realization (:VERB "drift"))

(define-category DRIFT23806
  :mixins (RUN-51.3.2-2)
  :realization (:VERB "drift"))

(define-category DRIFT23805
  :mixins (RUN-51.3.2-2)
  :realization (:VERB "drift"))

(define-category DRIFT23804
  :mixins (RUN-51.3.2-2)
  :realization (:VERB "drift"))

(define-category DRIFT23802
  :mixins (RUN-51.3.2-2)
  :realization (:VERB "drift"))

(define-category FLOAT23801
  :mixins (RUN-51.3.2-2)
  :realization (:VERB "float"))

(define-category FLOAT23800
  :mixins (RUN-51.3.2-2)
  :realization (:VERB "float"))

(define-category GALLOP23803
  :mixins (RUN-51.3.2-2)
  :realization (:VERB "gallop"))

(define-category GALLOP23801
  :mixins (RUN-51.3.2-2)
  :realization (:VERB "gallop"))

(define-category GALLOP23800
  :mixins (RUN-51.3.2-2)
  :realization (:VERB "gallop"))

(define-category GLIDE23802
  :mixins (RUN-51.3.2-2)
  :realization (:VERB "glide"))

(define-category GLIDE23800
  :mixins (RUN-51.3.2-2)
  :realization (:VERB "glide"))

(define-category HASTEN23800
  :mixins (RUN-51.3.2-2)
  :realization (:VERB "hasten"))

(define-category HASTEN23000
  :mixins (RUN-51.3.2-2)
  :realization (:VERB "hasten"))

(define-category HOBBLE23800
  :mixins (RUN-51.3.2-2)
  :realization (:VERB "hobble"))

(define-category HURRY23800
  :mixins (RUN-51.3.2-2)
  :realization (:VERB "hurry"))

(define-category HURTLE23500
  :mixins (RUN-51.3.2-2)
  :realization (:VERB "hurtle"))

(define-category HURTLE23800
  :mixins (RUN-51.3.2-2)
  :realization (:VERB "hurtle"))

(define-category HURTLE23801
  :mixins (RUN-51.3.2-2)
  :realization (:VERB "hurtle"))

(define-category INCH23800
  :mixins (RUN-51.3.2-2)
  :realization (:VERB "inch"))

(define-category LOPE23800
  :mixins (RUN-51.3.2-2)
  :realization (:VERB "lope"))

(define-category PRANCE23800
  :mixins (RUN-51.3.2-2)
  :realization (:VERB "prance"))

(define-category RACE23810
  :mixins (RUN-51.3.2-2)
  :realization (:VERB "race"))

(define-category RACE23800
  :mixins (RUN-51.3.2-2)
  :realization (:VERB "race"))

(define-category ROLL22906
  :mixins (RUN-51.3.2-2)
  :realization (:VERB "roll"))

(define-category ROLL23800
  :mixins (RUN-51.3.2-2)
  :realization (:VERB "roll"))

(define-category SCOOT23800
  :mixins (RUN-51.3.2-2)
  :realization (:VERB "scoot"))

(define-category SKIP23500
  :mixins (RUN-51.3.2-2)
  :realization (:VERB "skip"))

(define-category SKIP23800
  :mixins (RUN-51.3.2-2)
  :realization (:VERB "skip"))

(define-category SKITTER23501
  :mixins (RUN-51.3.2-2)
  :realization (:VERB "skitter"))

(define-category SKITTER23801
  :mixins (RUN-51.3.2-2)
  :realization (:VERB "skitter"))

(define-category SKITTER23800
  :mixins (RUN-51.3.2-2)
  :realization (:VERB "skitter"))

(define-category SLIDE23802
  :mixins (RUN-51.3.2-2)
  :realization (:VERB "slide"))

(define-category SLIDE23800
  :mixins (RUN-51.3.2-2)
  :realization (:VERB "slide"))

(define-category SLIDE23801
  :mixins (RUN-51.3.2-2)
  :realization (:VERB "slide"))

(define-category SNEAK23800
  :mixins (RUN-51.3.2-2)
  :realization (:VERB "sneak"))

(define-category SPEED23002
  :mixins (RUN-51.3.2-2)
  :realization (:VERB "speed"))

(define-category SPEED23000
  :mixins (RUN-51.3.2-2)
  :realization (:VERB "speed"))

(define-category SPEED23803
  :mixins (RUN-51.3.2-2)
  :realization (:VERB "speed"))

(define-category STRUT23800
  :mixins (RUN-51.3.2-2)
  :realization (:VERB "strut"))

(define-category TACK23800
  :mixins (RUN-51.3.2-2)
  :realization (:VERB "tack"))

(define-category TRIP23801
  :mixins (RUN-51.3.2-2)
  :realization (:VERB "trip"))

(define-category TRIP23800
  :mixins (RUN-51.3.2-2)
  :realization (:VERB "trip"))

(define-category TROT23802
  :mixins (RUN-51.3.2-2)
  :realization (:VERB "trot"))

(define-category TROT23801
  :mixins (RUN-51.3.2-2)
  :realization (:VERB "trot"))

(define-category TROT23800
  :mixins (RUN-51.3.2-2)
  :realization (:VERB "trot"))

(define-category FLY23803
  :mixins (RUN-51.3.2-2-1)
  :realization (:VERB "fly"))

(define-category FLY23807
  :mixins (RUN-51.3.2-2-1)
  :realization (:VERB "fly"))

(define-category FLY23802
  :mixins (RUN-51.3.2-2-1)
  :realization (:VERB "fly"))

(define-category FLY23800
  :mixins (RUN-51.3.2-2-1)
  :realization (:VERB "fly"))

(define-category JOG23801
  :mixins (RUN-51.3.2-2-1)
  :realization (:VERB "jog"))

(define-category JUMP23801
  :mixins (RUN-51.3.2-2-1)
  :realization (:VERB "jump"))

(define-category JUMP23800
  :mixins (RUN-51.3.2-2-1)
  :realization (:VERB "jump"))

(define-category MARCH23800
  :mixins (RUN-51.3.2-2-1)
  :realization (:VERB "march"))

(define-category MARCH23801
  :mixins (RUN-51.3.2-2-1)
  :realization (:VERB "march"))

(define-category PARADE23800
  :mixins (RUN-51.3.2-2-1)
  :realization (:VERB "parade"))

(define-category PROMENADE23800
  :mixins (RUN-51.3.2-2-1)
  :realization (:VERB "promenade"))

(define-category PROMENADE23801
  :mixins (RUN-51.3.2-2-1)
  :realization (:VERB "promenade"))

(define-category RUN23805
  :mixins (RUN-51.3.2-2-1)
  :realization (:VERB "run"))

(define-category RUN23810
  :mixins (RUN-51.3.2-2-1)
  :realization (:VERB "run"))

(define-category RUN23804
  :mixins (RUN-51.3.2-2-1)
  :realization (:VERB "run"))

(define-category RUN23800
  :mixins (RUN-51.3.2-2-1)
  :realization (:VERB "run"))

(define-category RUSH23810
  :mixins (RUN-51.3.2-2-1)
  :realization (:VERB "rush"))

(define-category RUSH23800
  :mixins (RUN-51.3.2-2-1)
  :realization (:VERB "rush"))

(define-category WALK23802
  :mixins (RUN-51.3.2-2-1)
  :realization (:VERB "walk"))

(define-category WALK23805
  :mixins (RUN-51.3.2-2-1)
  :realization (:VERB "walk"))

(define-category WALK23801
  :mixins (RUN-51.3.2-2-1)
  :realization (:VERB "walk"))

(define-category WALK23803
  :mixins (RUN-51.3.2-2-1)
  :realization (:VERB "walk"))

(define-category WALK23800
  :mixins (RUN-51.3.2-2-1)
  :realization (:VERB "walk"))

(define-category HASTEN24100
  :mixins (RUSH-53.2)
  :realization (:VERB "hasten"))

(define-category HASTEN23000
  :mixins (RUSH-53.2)
  :realization (:VERB "hasten"))

(define-category HURRY23001
  :mixins (RUSH-53.2)
  :realization (:VERB "hurry"))

(define-category HURRY23000
  :mixins (RUSH-53.2)
  :realization (:VERB "hurry"))

(define-category RUSH23000
  :mixins (RUSH-53.2)
  :realization (:VERB "rush"))

(define-category RUSH23001
  :mixins (RUSH-53.2)
  :realization (:VERB "rush"))

(define-category CONTINUE23200
  :mixins (SAY-37.7)
  :realization (:VERB "continue"))

(define-category BLABBER23200
  :mixins (SAY-37.7-1)
  :realization (:VERB "blabber"))

(define-category VOCALIZE23204
  :mixins (SAY-37.7-1)
  :realization (:VERB "vocalize"))

(define-category VOCALIZE23202
  :mixins (SAY-37.7-1)
  :realization (:VERB "vocalize"))

(define-category ADVISE23201
  :mixins (SAY-37.7-1-1)
  :realization (:VERB "advise"))

(define-category ANNOUNCE23207
  :mixins (SAY-37.7-1-1)
  :realization (:VERB "announce"))

(define-category ANNOUNCE23200
  :mixins (SAY-37.7-1-1)
  :realization (:VERB "announce"))

(define-category ARTICULATE23201
  :mixins (SAY-37.7-1-1)
  :realization (:VERB "articulate"))

(define-category ARTICULATE23202
  :mixins (SAY-37.7-1-1)
  :realization (:VERB "articulate"))

(define-category BLAB23200
  :mixins (SAY-37.7-1-1)
  :realization (:VERB "blab"))

(define-category BLURT23200
  :mixins (SAY-37.7-1-1)
  :realization (:VERB "blurt"))

(define-category CLAIM23200
  :mixins (SAY-37.7-1-1)
  :realization (:VERB "claim"))

(define-category CONFESS23201
  :mixins (SAY-37.7-1-1)
  :realization (:VERB "confess"))

(define-category CONFIDE23200
  :mixins (SAY-37.7-1-1)
  :realization (:VERB "confide"))

(define-category CONVEY23200
  :mixins (SAY-37.7-1-1)
  :realization (:VERB "convey"))

(define-category DECLARE23201
  :mixins (SAY-37.7-1-1)
  :realization (:VERB "declare"))

(define-category DECLARE23200
  :mixins (SAY-37.7-1-1)
  :realization (:VERB "declare"))

(define-category INTERJECT23200
  :mixins (SAY-37.7-1-1)
  :realization (:VERB "interject"))

(define-category INTERPOSE23200
  :mixins (SAY-37.7-1-1)
  :realization (:VERB "interpose"))

(define-category MENTION23200
  :mixins (SAY-37.7-1-1)
  :realization (:VERB "mention"))

(define-category MENTION23202
  :mixins (SAY-37.7-1-1)
  :realization (:VERB "mention"))

(define-category OBSERVE23200
  :mixins (SAY-37.7-1-1)
  :realization (:VERB "observe"))

(define-category PROCLAIM23200
  :mixins (SAY-37.7-1-1)
  :realization (:VERB "proclaim"))

(define-category PROPOSE23200
  :mixins (SAY-37.7-1-1)
  :realization (:VERB "propose"))

(define-category RECOUNT23200
  :mixins (SAY-37.7-1-1)
  :realization (:VERB "recount"))

(define-category REITERATE23200
  :mixins (SAY-37.7-1-1)
  :realization (:VERB "reiterate"))

(define-category RELATE23200
  :mixins (SAY-37.7-1-1)
  :realization (:VERB "relate"))

(define-category REVEAL23200
  :mixins (SAY-37.7-1-1)
  :realization (:VERB "reveal"))

(define-category SAY23204
  :mixins (SAY-37.7-1-1)
  :realization (:VERB "say"))

(define-category SAY23215
  :mixins (SAY-37.7-1-1)
  :realization (:VERB "say"))

(define-category SAY23201
  :mixins (SAY-37.7-1-1)
  :realization (:VERB "say"))

(define-category SAY23200
  :mixins (SAY-37.7-1-1)
  :realization (:VERB "say"))

(define-category STATE23200
  :mixins (SAY-37.7-1-1)
  :realization (:VERB "state"))

(define-category VOLUNTEER23200
  :mixins (SAY-37.7-1-1)
  :realization (:VERB "volunteer"))

(define-category REPEAT23201
  :mixins (SAY-37.7-1-1)
  :realization (:VERB "repeat"))

(define-category REPEAT23200
  :mixins (SAY-37.7-1-1)
  :realization (:VERB "repeat"))

(define-category REMARK23201
  :mixins (SAY-37.7-1-1)
  :realization (:VERB "remark"))

(define-category REMARK23200
  :mixins (SAY-37.7-1-1)
  :realization (:VERB "remark"))

(define-category NOTE23200
  :mixins (SAY-37.7-1-1)
  :realization (:VERB "note"))

(define-category REPORT23204
  :mixins (SAY-37.7-1-1)
  :realization (:VERB "report"))

(define-category REPORT23200
  :mixins (SAY-37.7-1-1)
  :realization (:VERB "report"))

(define-category SUGGEST23204
  :mixins (SAY-37.7-1-1-1)
  :realization (:VERB "suggest"))

(define-category SUGGEST23200
  :mixins (SAY-37.7-1-1-1)
  :realization (:VERB "suggest"))

(define-category HINT23200
  :mixins (SAY-37.7-1-2)
  :realization (:VERB "hint"))

(define-category COPY23601
  :mixins (SCRIBBLE-25.2)
  :realization (:VERB "copy"))

(define-category COPY23605
  :mixins (SCRIBBLE-25.2)
  :realization (:VERB "copy"))

(define-category FORGE23601
  :mixins (SCRIBBLE-25.2)
  :realization (:VERB "forge"))

(define-category JOT23200
  :mixins (SCRIBBLE-25.2)
  :realization (:VERB "jot"))

(define-category JOT_DOWN23200
  :mixins (SCRIBBLE-25.2)
  :realization (:VERB "jot_down"))

(define-category TRACE23600
  :mixins (SCRIBBLE-25.2)
  :realization (:VERB "trace"))

(define-category TRACE23500
  :mixins (SCRIBBLE-25.2)
  :realization (:VERB "trace"))

(define-category UNDERSCORE23203
  :mixins (SCRIBBLE-25.2)
  :realization (:VERB "underscore"))

(define-category UNDERLINE23203
  :mixins (SCRIBBLE-25.2)
  :realization (:VERB "underline"))

(define-category CARVE23502
  :mixins (SCRIBBLE-25.2-1)
  :realization (:VERB "carve"))

(define-category CHALK23600
  :mixins (SCRIBBLE-25.2-1)
  :realization (:VERB "chalk"))

(define-category CHARCOAL23600
  :mixins (SCRIBBLE-25.2-1)
  :realization (:VERB "charcoal"))

(define-category CRAYON23600
  :mixins (SCRIBBLE-25.2-1)
  :realization (:VERB "crayon"))

(define-category DOODLE23600
  :mixins (SCRIBBLE-25.2-1)
  :realization (:VERB "doodle"))

(define-category DRAW23602
  :mixins (SCRIBBLE-25.2-1)
  :realization (:VERB "draw"))

(define-category DRAW23600
  :mixins (SCRIBBLE-25.2-1)
  :realization (:VERB "draw"))

(define-category DRAW23100
  :mixins (SCRIBBLE-25.2-1)
  :realization (:VERB "draw"))

(define-category INK23200
  :mixins (SCRIBBLE-25.2-1)
  :realization (:VERB "ink"))

(define-category PENCIL23600
  :mixins (SCRIBBLE-25.2-1)
  :realization (:VERB "pencil"))

(define-category PLOT23600
  :mixins (SCRIBBLE-25.2-1)
  :realization (:VERB "plot"))

(define-category PRINT23600
  :mixins (SCRIBBLE-25.2-1)
  :realization (:VERB "print"))

(define-category PRINT23603
  :mixins (SCRIBBLE-25.2-1)
  :realization (:VERB "print"))

(define-category RECORD23200
  :mixins (SCRIBBLE-25.2-1)
  :realization (:VERB "record"))

(define-category SCRAWL23600
  :mixins (SCRIBBLE-25.2-1)
  :realization (:VERB "scrawl"))

(define-category SCRIBBLE23600
  :mixins (SCRIBBLE-25.2-1)
  :realization (:VERB "scribble"))

(define-category SCRIBBLE23200
  :mixins (SCRIBBLE-25.2-1)
  :realization (:VERB "scribble"))

(define-category SKETCH23600
  :mixins (SCRIBBLE-25.2-1)
  :realization (:VERB "sketch"))

(define-category STENCIL23600
  :mixins (SCRIBBLE-25.2-1)
  :realization (:VERB "stencil"))

(define-category TYPE23200
  :mixins (SCRIBBLE-25.2-1)
  :realization (:VERB "type"))

(define-category WRITE23601
  :mixins (SCRIBBLE-25.2-1)
  :realization (:VERB "write"))

(define-category ADVERTISE23200
  :mixins (SEARCH-35.2)
  :realization (:VERB "advertise"))

(define-category CHECK23210
  :mixins (SEARCH-35.2)
  :realization (:VERB "check"))

(define-category CHECK23102
  :mixins (SEARCH-35.2)
  :realization (:VERB "check"))

(define-category COMB23500
  :mixins (SEARCH-35.2)
  :realization (:VERB "comb"))

(define-category DIVE23801
  :mixins (SEARCH-35.2)
  :realization (:VERB "dive"))

(define-category DIVE23802
  :mixins (SEARCH-35.2)
  :realization (:VERB "dive"))

(define-category DRAG23502
  :mixins (SEARCH-35.2)
  :realization (:VERB "drag"))

(define-category DREDGE23501
  :mixins (SEARCH-35.2)
  :realization (:VERB "dredge"))

(define-category EXCAVATE23900
  :mixins (SEARCH-35.2)
  :realization (:VERB "excavate"))

(define-category NOSE23901
  :mixins (SEARCH-35.2)
  :realization (:VERB "nose"))

(define-category PATROL24100
  :mixins (SEARCH-35.2)
  :realization (:VERB "patrol"))

(define-category PLUMB23102
  :mixins (SEARCH-35.2)
  :realization (:VERB "plumb"))

(define-category PROBE23500
  :mixins (SEARCH-35.2)
  :realization (:VERB "probe"))

(define-category PROBE23200
  :mixins (SEARCH-35.2)
  :realization (:VERB "probe"))

(define-category PROSPECT23100
  :mixins (SEARCH-35.2)
  :realization (:VERB "prospect"))

(define-category PROWL23800
  :mixins (SEARCH-35.2)
  :realization (:VERB "prowl"))

(define-category RAKE23900
  :mixins (SEARCH-35.2)
  :realization (:VERB "rake"))

(define-category RIFLE23513
  :mixins (SEARCH-35.2)
  :realization (:VERB "rifle"))

(define-category SCAVENGE23501
  :mixins (SEARCH-35.2)
  :realization (:VERB "scavenge"))

(define-category SCOUR23503
  :mixins (SEARCH-35.2)
  :realization (:VERB "scour"))

(define-category SCOUT23900
  :mixins (SEARCH-35.2)
  :realization (:VERB "scout"))

(define-category SEARCH23501
  :mixins (SEARCH-35.2)
  :realization (:VERB "search"))

(define-category SEARCH23900
  :mixins (SEARCH-35.2)
  :realization (:VERB "search"))

(define-category SEARCH23500
  :mixins (SEARCH-35.2)
  :realization (:VERB "search"))

(define-category SHOP24100
  :mixins (SEARCH-35.2)
  :realization (:VERB "shop"))

(define-category SIFT23502
  :mixins (SEARCH-35.2)
  :realization (:VERB "sift"))

(define-category SIFT23800
  :mixins (SEARCH-35.2)
  :realization (:VERB "sift"))

(define-category TRAWL23300
  :mixins (SEARCH-35.2)
  :realization (:VERB "trawl"))

(define-category TROLL23300
  :mixins (SEARCH-35.2)
  :realization (:VERB "troll"))

(define-category WATCH23901
  :mixins (SEARCH-35.2)
  :realization (:VERB "watch"))

(define-category QUEST23800
  :mixins (SEARCH-35.2)
  :realization (:VERB "quest"))

(define-category QUEST24000
  :mixins (SEARCH-35.2)
  :realization (:VERB "quest"))

(define-category TELL23101
  :mixins (SEE-30.1)
  :realization (:VERB "tell"))

(define-category TELL23100
  :mixins (SEE-30.1)
  :realization (:VERB "tell"))

(define-category SMELL23901
  :mixins (SEE-30.1-1)
  :realization (:VERB "smell"))

(define-category TASTE23901
  :mixins (SEE-30.1-1)
  :realization (:VERB "taste"))

(define-category TASTE23900
  :mixins (SEE-30.1-1)
  :realization (:VERB "taste"))

(define-category TASTE23400
  :mixins (SEE-30.1-1)
  :realization (:VERB "taste"))

(define-category DETECT23900
  :mixins (SEE-30.1-1-1)
  :realization (:VERB "detect"))

(define-category DISCERN23900
  :mixins (SEE-30.1-1-1)
  :realization (:VERB "discern"))

(define-category FEEL23500
  :mixins (SEE-30.1-1-1)
  :realization (:VERB "feel"))

(define-category FEEL22900
  :mixins (SEE-30.1-1-1)
  :realization (:VERB "feel"))

(define-category FEEL23900
  :mixins (SEE-30.1-1-1)
  :realization (:VERB "feel"))

(define-category FEEL23100
  :mixins (SEE-30.1-1-1)
  :realization (:VERB "feel"))

(define-category SENSE23900
  :mixins (SEE-30.1-1-1)
  :realization (:VERB "sense"))

(define-category NOTICE23900
  :mixins (SEE-30.1-1-1)
  :realization (:VERB "notice"))

(define-category NOTICE23904
  :mixins (SEE-30.1-1-1)
  :realization (:VERB "notice"))

(define-category SEE23913
  :mixins (SEE-30.1-1-1)
  :realization (:VERB "see"))

(define-category SEE23911
  :mixins (SEE-30.1-1-1)
  :realization (:VERB "see"))

(define-category SEE24110
  :mixins (SEE-30.1-1-1)
  :realization (:VERB "see"))

(define-category SEE24112
  :mixins (SEE-30.1-1-1)
  :realization (:VERB "see"))

(define-category SEE24111
  :mixins (SEE-30.1-1-1)
  :realization (:VERB "see"))

(define-category SEE23200
  :mixins (SEE-30.1-1-1)
  :realization (:VERB "see"))

(define-category SEE23903
  :mixins (SEE-30.1-1-1)
  :realization (:VERB "see"))

(define-category SEE23600
  :mixins (SEE-30.1-1-1)
  :realization (:VERB "see"))

(define-category SEE23902
  :mixins (SEE-30.1-1-1)
  :realization (:VERB "see"))

(define-category SEE23900
  :mixins (SEE-30.1-1-1)
  :realization (:VERB "see"))

(define-category HEAR23905
  :mixins (SEE-30.1-1-1-1)
  :realization (:VERB "hear"))

(define-category HEAR23901
  :mixins (SEE-30.1-1-1-1)
  :realization (:VERB "hear"))

(define-category HEAR23100
  :mixins (SEE-30.1-1-1-1)
  :realization (:VERB "hear"))

(define-category HEAR23900
  :mixins (SEE-30.1-1-1-1)
  :realization (:VERB "hear"))

(define-category SMELL23902
  :mixins (SEEM-109)
  :realization (:VERB "smell"))

(define-category SMELL23900
  :mixins (SEEM-109)
  :realization (:VERB "smell"))

(define-category SOUND23906
  :mixins (SEEM-109)
  :realization (:VERB "sound"))

(define-category TASTE23902
  :mixins (SEEM-109)
  :realization (:VERB "taste"))

(define-category KEEP24200
  :mixins (SEEM-109)
  :realization (:VERB "keep"))

(define-category BE24100
  :mixins (SEEM-109-1-1)
  :realization (:VERB "be"))

(define-category BE24202
  :mixins (SEEM-109-1-1)
  :realization (:VERB "be"))

(define-category BE24205
  :mixins (SEEM-109-1-1)
  :realization (:VERB "be"))

(define-category BE24206
  :mixins (SEEM-109-1-1)
  :realization (:VERB "be"))

(define-category BE24203
  :mixins (SEEM-109-1-1)
  :realization (:VERB "be"))

(define-category FEEL23101
  :mixins (SEEM-109-1-1)
  :realization (:VERB "feel"))

(define-category FEEL22900
  :mixins (SEEM-109-1-1)
  :realization (:VERB "feel"))

(define-category FEEL23100
  :mixins (SEEM-109-1-1)
  :realization (:VERB "feel"))

(define-category LOOK22900
  :mixins (SEEM-109-1-1)
  :realization (:VERB "look"))

(define-category LOOK23901
  :mixins (SEEM-109-1-1)
  :realization (:VERB "look"))

(define-category REMAIN24205
  :mixins (SEEM-109-1-1)
  :realization (:VERB "remain"))

(define-category REMAIN24203
  :mixins (SEEM-109-1-1)
  :realization (:VERB "remain"))

(define-category REMAIN23000
  :mixins (SEEM-109-1-1)
  :realization (:VERB "remain"))

(define-category STAY24203
  :mixins (SEEM-109-1-1)
  :realization (:VERB "stay"))

(define-category STAY23000
  :mixins (SEEM-109-1-1)
  :realization (:VERB "stay"))

(define-category SEEM23901
  :mixins (SEEM-109-1-1-1)
  :realization (:VERB "seem"))

(define-category SEEM23900
  :mixins (SEEM-109-1-1-1)
  :realization (:VERB "seem"))

(define-category APPEAR23900
  :mixins (SEEM-109-1-1-1)
  :realization (:VERB "appear"))

(define-category APPEAR23901
  :mixins (SEEM-109-1-1-1)
  :realization (:VERB "appear"))

(define-category CONVEY23500
  :mixins (SEND-11.1)
  :realization (:VERB "convey"))

(define-category CONVEY23800
  :mixins (SEND-11.1)
  :realization (:VERB "convey"))

(define-category CONVEY24010
  :mixins (SEND-11.1)
  :realization (:VERB "convey"))

(define-category DELIVER23500
  :mixins (SEND-11.1)
  :realization (:VERB "deliver"))

(define-category DISPATCH23800
  :mixins (SEND-11.1)
  :realization (:VERB "dispatch"))

(define-category DRIVE23802
  :mixins (SEND-11.1)
  :realization (:VERB "drive"))

(define-category PASS_ON23800
  :mixins (SEND-11.1)
  :realization (:VERB "pass_on"))

(define-category PASS_ON24000
  :mixins (SEND-11.1)
  :realization (:VERB "pass_on"))

(define-category PASS_ON24001
  :mixins (SEND-11.1)
  :realization (:VERB "pass_on"))

(define-category PORT23507
  :mixins (SEND-11.1)
  :realization (:VERB "port"))

(define-category POST23202
  :mixins (SEND-11.1)
  :realization (:VERB "post"))

(define-category RETURN23501
  :mixins (SEND-11.1)
  :realization (:VERB "return"))

(define-category RETURN24008
  :mixins (SEND-11.1)
  :realization (:VERB "return"))

(define-category SHIFT23802
  :mixins (SEND-11.1)
  :realization (:VERB "shift"))

(define-category SHUNT23800
  :mixins (SEND-11.1)
  :realization (:VERB "shunt"))

(define-category TRANSFER23500
  :mixins (SEND-11.1)
  :realization (:VERB "transfer"))

(define-category TRANSFER24001
  :mixins (SEND-11.1)
  :realization (:VERB "transfer"))

(define-category TRANSPORT23501
  :mixins (SEND-11.1)
  :realization (:VERB "transport"))

(define-category TRANSPORT23801
  :mixins (SEND-11.1)
  :realization (:VERB "transport"))

(define-category TRANSPORT23800
  :mixins (SEND-11.1)
  :realization (:VERB "transport"))

(define-category EXPORT24000
  :mixins (SEND-11.1)
  :realization (:VERB "export"))

(define-category IMPORT24000
  :mixins (SEND-11.1)
  :realization (:VERB "import"))

(define-category TRANSSHIP23800
  :mixins (SEND-11.1)
  :realization (:VERB "transship"))

(define-category AIRMAIL23200
  :mixins (SEND-11.1-1)
  :realization (:VERB "airmail"))

(define-category EXPRESS23209
  :mixins (SEND-11.1-1)
  :realization (:VERB "express"))

(define-category FORWARD23800
  :mixins (SEND-11.1-1)
  :realization (:VERB "forward"))

(define-category HAND24000
  :mixins (SEND-11.1-1)
  :realization (:VERB "hand"))

(define-category MAIL23200
  :mixins (SEND-11.1-1)
  :realization (:VERB "mail"))

(define-category MAIL23500
  :mixins (SEND-11.1-1)
  :realization (:VERB "mail"))

(define-category PASS23201
  :mixins (SEND-11.1-1)
  :realization (:VERB "pass"))

(define-category PASS24000
  :mixins (SEND-11.1-1)
  :realization (:VERB "pass"))

(define-category SEND23202
  :mixins (SEND-11.1-1)
  :realization (:VERB "send"))

(define-category SEND23800
  :mixins (SEND-11.1-1)
  :realization (:VERB "send"))

(define-category SEND23200
  :mixins (SEND-11.1-1)
  :realization (:VERB "send"))

(define-category SEND23500
  :mixins (SEND-11.1-1)
  :realization (:VERB "send"))

(define-category SEND23801
  :mixins (SEND-11.1-1)
  :realization (:VERB "send"))

(define-category SHIP23800
  :mixins (SEND-11.1-1)
  :realization (:VERB "ship"))

(define-category SLIP24010
  :mixins (SEND-11.1-1)
  :realization (:VERB "slip"))

(define-category SMUGGLE24000
  :mixins (SEND-11.1-1)
  :realization (:VERB "smuggle"))

(define-category SNEAK24010
  :mixins (SEND-11.1-1)
  :realization (:VERB "sneak"))

(define-category SNEAK24000
  :mixins (SEND-11.1-1)
  :realization (:VERB "sneak"))

(define-category TRANSMIT23500
  :mixins (SEND-11.1-1)
  :realization (:VERB "transmit"))

(define-category TRANSMIT24010
  :mixins (SEND-11.1-1)
  :realization (:VERB "transmit"))

(define-category WIRE23200
  :mixins (SEND-11.1-1)
  :realization (:VERB "wire"))

(define-category DISASSOCIATE24100
  :mixins (SEPARATE-23.1)
  :realization (:VERB "disassociate"))

(define-category SEVER23500
  :mixins (SEPARATE-23.1)
  :realization (:VERB "sever"))

(define-category SEVER23501
  :mixins (SEPARATE-23.1)
  :realization (:VERB "sever"))

(define-category DECOUPLE23100
  :mixins (SEPARATE-23.1-1)
  :realization (:VERB "decouple"))

(define-category DIFFERENTIATE23000
  :mixins (SEPARATE-23.1-1)
  :realization (:VERB "differentiate"))

(define-category DIFFERENTIATE23101
  :mixins (SEPARATE-23.1-1)
  :realization (:VERB "differentiate"))

(define-category DISENTANGLE24200
  :mixins (SEPARATE-23.1-1)
  :realization (:VERB "disentangle"))

(define-category DISENTANGLE23502
  :mixins (SEPARATE-23.1-1)
  :realization (:VERB "disentangle"))

(define-category DISSIMILATE23000
  :mixins (SEPARATE-23.1-1)
  :realization (:VERB "dissimilate"))

(define-category DISSIMILATE23001
  :mixins (SEPARATE-23.1-1)
  :realization (:VERB "dissimilate"))

(define-category DISSIMILATE23002
  :mixins (SEPARATE-23.1-1)
  :realization (:VERB "dissimilate"))

(define-category DIVIDE23501
  :mixins (SEPARATE-23.1-1)
  :realization (:VERB "divide"))

(define-category DIVIDE23500
  :mixins (SEPARATE-23.1-1)
  :realization (:VERB "divide"))

(define-category DIVIDE24200
  :mixins (SEPARATE-23.1-1)
  :realization (:VERB "divide"))

(define-category DIVORCE24100
  :mixins (SEPARATE-23.1-1)
  :realization (:VERB "divorce"))

(define-category DIVORCE24101
  :mixins (SEPARATE-23.1-1)
  :realization (:VERB "divorce"))

(define-category SEGREGATE24100
  :mixins (SEPARATE-23.1-1)
  :realization (:VERB "segregate"))

(define-category DISCONNECT23500
  :mixins (SEPARATE-23.1-2)
  :realization (:VERB "disconnect"))

(define-category DISCONNECT23503
  :mixins (SEPARATE-23.1-2)
  :realization (:VERB "disconnect"))

(define-category DISSOCIATE24100
  :mixins (SEPARATE-23.1-2)
  :realization (:VERB "dissociate"))

(define-category PART23501
  :mixins (SEPARATE-23.1-2)
  :realization (:VERB "part"))

(define-category PART23500
  :mixins (SEPARATE-23.1-2)
  :realization (:VERB "part"))

(define-category PART24100
  :mixins (SEPARATE-23.1-2)
  :realization (:VERB "part"))

(define-category PART23802
  :mixins (SEPARATE-23.1-2)
  :realization (:VERB "part"))

(define-category SEPARATE23800
  :mixins (SEPARATE-23.1-2)
  :realization (:VERB "separate"))

(define-category SEPARATE24102
  :mixins (SEPARATE-23.1-2)
  :realization (:VERB "separate"))

(define-category SEPARATE23502
  :mixins (SEPARATE-23.1-2)
  :realization (:VERB "separate"))

(define-category SEPARATE23500
  :mixins (SEPARATE-23.1-2)
  :realization (:VERB "separate"))

(define-category SEPARATE23501
  :mixins (SEPARATE-23.1-2)
  :realization (:VERB "separate"))

(define-category SEPARATE24200
  :mixins (SEPARATE-23.1-2)
  :realization (:VERB "separate"))

(define-category SETTLE23200
  :mixins (SETTLE-36.1.2)
  :realization (:VERB "settle"))

(define-category COLLABORATE24101
  :mixins (SETTLE-36.1.2)
  :realization (:VERB "collaborate"))

(define-category COLLABORATE24100
  :mixins (SETTLE-36.1.2)
  :realization (:VERB "collaborate"))

(define-category COMMISERATE23700
  :mixins (SETTLE-36.1.2)
  :realization (:VERB "commiserate"))

(define-category COMMUNICATE23202
  :mixins (SETTLE-36.1.2)
  :realization (:VERB "communicate"))

(define-category COMPROMISE23200
  :mixins (SETTLE-36.1.2)
  :realization (:VERB "compromise"))

(define-category CONCUR23200
  :mixins (SETTLE-36.1.2)
  :realization (:VERB "concur"))

(define-category COOPERATE24100
  :mixins (SETTLE-36.1.2)
  :realization (:VERB "cooperate"))

(define-category CORRESPOND23200
  :mixins (SETTLE-36.1.2)
  :realization (:VERB "correspond"))

(define-category DIFFER23200
  :mixins (SETTLE-36.1.2)
  :realization (:VERB "differ"))

(define-category DISAGREE23200
  :mixins (SETTLE-36.1.2)
  :realization (:VERB "disagree"))

(define-category HAGGLE24000
  :mixins (SETTLE-36.1.2)
  :realization (:VERB "haggle"))

(define-category BARGAIN23200
  :mixins (SETTLE-36.1.2)
  :realization (:VERB "bargain"))

(define-category SQUARE24201
  :mixins (SETTLE-36.1.2)
  :realization (:VERB "square"))

(define-category RENEGOTIATE23201
  :mixins (SETTLE-36.1.2)
  :realization (:VERB "renegotiate"))

(define-category ARGUE23202
  :mixins (SETTLE-36.1.2-1)
  :realization (:VERB "argue"))

(define-category ARGUE23200
  :mixins (SETTLE-36.1.2-1)
  :realization (:VERB "argue"))

(define-category DEBATE23201
  :mixins (SETTLE-36.1.2-1)
  :realization (:VERB "debate"))

(define-category LUMP23113
  :mixins (SHAKE-22.3-1)
  :realization (:VERB "lump"))

(define-category LUMP23500
  :mixins (SHAKE-22.3-1)
  :realization (:VERB "lump"))

(define-category MASS23800
  :mixins (SHAKE-22.3-1)
  :realization (:VERB "mass"))

(define-category BEAT23503
  :mixins (SHAKE-22.3-1-1)
  :realization (:VERB "beat"))

(define-category FUSE23000
  :mixins (SHAKE-22.3-1-1)
  :realization (:VERB "fuse"))

(define-category SCRAMBLE23502
  :mixins (SHAKE-22.3-1-1)
  :realization (:VERB "scramble"))

(define-category SCRAMBLE23500
  :mixins (SHAKE-22.3-1-1)
  :realization (:VERB "scramble"))

(define-category STIR23504
  :mixins (SHAKE-22.3-1-1)
  :realization (:VERB "stir"))

(define-category STIR23801
  :mixins (SHAKE-22.3-1-1)
  :realization (:VERB "stir"))

(define-category WHIP23501
  :mixins (SHAKE-22.3-1-1)
  :realization (:VERB "whip"))

(define-category WHISK23500
  :mixins (SHAKE-22.3-1-1)
  :realization (:VERB "whisk"))

(define-category BAND23500
  :mixins (SHAKE-22.3-2)
  :realization (:VERB "band"))

(define-category BASTE23500
  :mixins (SHAKE-22.3-2)
  :realization (:VERB "baste"))

(define-category CLUSTER23500
  :mixins (SHAKE-22.3-2)
  :realization (:VERB "cluster"))

(define-category CLUSTER23800
  :mixins (SHAKE-22.3-2)
  :realization (:VERB "cluster"))

(define-category COLLATE23500
  :mixins (SHAKE-22.3-2)
  :realization (:VERB "collate"))

(define-category COLLECT24003
  :mixins (SHAKE-22.3-2)
  :realization (:VERB "collect"))

(define-category COLLECT23501
  :mixins (SHAKE-22.3-2)
  :realization (:VERB "collect"))

(define-category COLLECT23500
  :mixins (SHAKE-22.3-2)
  :realization (:VERB "collect"))

(define-category COLLECT24000
  :mixins (SHAKE-22.3-2)
  :realization (:VERB "collect"))

(define-category FIX23500
  :mixins (SHAKE-22.3-2)
  :realization (:VERB "fix"))

(define-category GATHER24102
  :mixins (SHAKE-22.3-2)
  :realization (:VERB "gather"))

(define-category GATHER23500
  :mixins (SHAKE-22.3-2)
  :realization (:VERB "gather"))

(define-category GLOM24013
  :mixins (SHAKE-22.3-2)
  :realization (:VERB "glom"))

(define-category GROUP23300
  :mixins (SHAKE-22.3-2)
  :realization (:VERB "group"))

(define-category GROUP23100
  :mixins (SHAKE-22.3-2)
  :realization (:VERB "group"))

(define-category HERD24200
  :mixins (SHAKE-22.3-2)
  :realization (:VERB "herd"))

(define-category HERD23800
  :mixins (SHAKE-22.3-2)
  :realization (:VERB "herd"))

(define-category HERD23801
  :mixins (SHAKE-22.3-2)
  :realization (:VERB "herd"))

(define-category PAIR23501
  :mixins (SHAKE-22.3-2)
  :realization (:VERB "pair"))

(define-category ROLL23010
  :mixins (SHAKE-22.3-2)
  :realization (:VERB "roll"))

(define-category SEW23500
  :mixins (SHAKE-22.3-2)
  :realization (:VERB "sew"))

(define-category SHAKE23800
  :mixins (SHAKE-22.3-2)
  :realization (:VERB "shake"))

(define-category SHUFFLE23500
  :mixins (SHAKE-22.3-2)
  :realization (:VERB "shuffle"))

(define-category STICK23500
  :mixins (SHAKE-22.3-2)
  :realization (:VERB "stick"))

(define-category STICK23502
  :mixins (SHAKE-22.3-2)
  :realization (:VERB "stick"))

(define-category ATTACH23500
  :mixins (SHAKE-22.3-2-1)
  :realization (:VERB "attach"))

(define-category ATTACH23501
  :mixins (SHAKE-22.3-2-1)
  :realization (:VERB "attach"))

(define-category BIND23501
  :mixins (SHAKE-22.3-2-1)
  :realization (:VERB "bind"))

(define-category BIND23502
  :mixins (SHAKE-22.3-2-1)
  :realization (:VERB "bind"))

(define-category BIND23507
  :mixins (SHAKE-22.3-2-1)
  :realization (:VERB "bind"))

(define-category BIND23500
  :mixins (SHAKE-22.3-2-1)
  :realization (:VERB "bind"))

(define-category BIND23506
  :mixins (SHAKE-22.3-2-1)
  :realization (:VERB "bind"))

(define-category BOND23500
  :mixins (SHAKE-22.3-2-1)
  :realization (:VERB "bond"))

(define-category BUNDLE23500
  :mixins (SHAKE-22.3-2-1)
  :realization (:VERB "bundle"))

(define-category CONCATENATE23000
  :mixins (SHAKE-22.3-2-1)
  :realization (:VERB "concatenate"))

(define-category CONCATENATE23500
  :mixins (SHAKE-22.3-2-1)
  :realization (:VERB "concatenate"))

(define-category FASTEN23500
  :mixins (SHAKE-22.3-2-1)
  :realization (:VERB "fasten"))

(define-category FASTEN23501
  :mixins (SHAKE-22.3-2-1)
  :realization (:VERB "fasten"))

(define-category GRAFT23501
  :mixins (SHAKE-22.3-2-1)
  :realization (:VERB "graft"))

(define-category GRAFT23500
  :mixins (SHAKE-22.3-2-1)
  :realization (:VERB "graft"))

(define-category JUMBLE23500
  :mixins (SHAKE-22.3-2-1)
  :realization (:VERB "jumble"))

(define-category LIGATE22900
  :mixins (SHAKE-22.3-2-1)
  :realization (:VERB "ligate"))

(define-category LIGATE23000
  :mixins (SHAKE-22.3-2-1)
  :realization (:VERB "ligate"))

(define-category MOOR23500
  :mixins (SHAKE-22.3-2-1)
  :realization (:VERB "moor"))

(define-category MOOR23501
  :mixins (SHAKE-22.3-2-1)
  :realization (:VERB "moor"))

(define-category PACKAGE23500
  :mixins (SHAKE-22.3-2-1)
  :realization (:VERB "package"))

(define-category SECURE23501
  :mixins (SHAKE-22.3-2-1)
  :realization (:VERB "secure"))

(define-category SPLICE23500
  :mixins (SHAKE-22.3-2-1)
  :realization (:VERB "splice"))

(define-category SPLICE23502
  :mixins (SHAKE-22.3-2-1)
  :realization (:VERB "splice"))

(define-category SPLICE23501
  :mixins (SHAKE-22.3-2-1)
  :realization (:VERB "splice"))

(define-category TOGGLE23500
  :mixins (SHAKE-22.3-2-1)
  :realization (:VERB "toggle"))

(define-category WELD23500
  :mixins (SHAKE-22.3-2-1)
  :realization (:VERB "weld"))

(define-category FIXATE23000
  :mixins (SHAKE-22.3-2-1)
  :realization (:VERB "fixate"))

(define-category FIXATE23001
  :mixins (SHAKE-22.3-2-1)
  :realization (:VERB "fixate"))

(define-category AFFIX23500
  :mixins (SHAKE-22.3-2-1)
  :realization (:VERB "affix"))

(define-category AGGLUTINATE23500
  :mixins (SHAKE-22.3-2-1)
  :realization (:VERB "agglutinate"))

(define-category BEHOLD23900
  :mixins (SIGHT-30.2)
  :realization (:VERB "behold"))

(define-category DESCRY23900
  :mixins (SIGHT-30.2)
  :realization (:VERB "descry"))

(define-category DISCOVER23900
  :mixins (SIGHT-30.2)
  :realization (:VERB "discover"))

(define-category DISCOVER24000
  :mixins (SIGHT-30.2)
  :realization (:VERB "discover"))

(define-category DISCOVER23600
  :mixins (SIGHT-30.2)
  :realization (:VERB "discover"))

(define-category ESPY23900
  :mixins (SIGHT-30.2)
  :realization (:VERB "espy"))

(define-category EXPERIENCE23100
  :mixins (SIGHT-30.2)
  :realization (:VERB "experience"))

(define-category EYE23900
  :mixins (SIGHT-30.2)
  :realization (:VERB "eye"))

(define-category GLIMPSE23900
  :mixins (SIGHT-30.2)
  :realization (:VERB "glimpse"))

(define-category MAKE_OUT23900
  :mixins (SIGHT-30.2)
  :realization (:VERB "make_out"))

(define-category NOTE23201
  :mixins (SIGHT-30.2)
  :realization (:VERB "note"))

(define-category NOTE23902
  :mixins (SIGHT-30.2)
  :realization (:VERB "note"))

(define-category NOTE23900
  :mixins (SIGHT-30.2)
  :realization (:VERB "note"))

(define-category OBSERVE23100
  :mixins (SIGHT-30.2)
  :realization (:VERB "observe"))

(define-category OBSERVE24100
  :mixins (SIGHT-30.2)
  :realization (:VERB "observe"))

(define-category OBSERVE23901
  :mixins (SIGHT-30.2)
  :realization (:VERB "observe"))

(define-category OBSERVE23902
  :mixins (SIGHT-30.2)
  :realization (:VERB "observe"))

(define-category OVERHEAR23900
  :mixins (SIGHT-30.2)
  :realization (:VERB "overhear"))

(define-category PERCEIVE23900
  :mixins (SIGHT-30.2)
  :realization (:VERB "perceive"))

(define-category RECOGNIZE23201
  :mixins (SIGHT-30.2)
  :realization (:VERB "recognize"))

(define-category RECOGNIZE23901
  :mixins (SIGHT-30.2)
  :realization (:VERB "recognize"))

(define-category SAVOR23900
  :mixins (SIGHT-30.2)
  :realization (:VERB "savor"))

(define-category SAVOR23700
  :mixins (SIGHT-30.2)
  :realization (:VERB "savor"))

(define-category SCENT23901
  :mixins (SIGHT-30.2)
  :realization (:VERB "scent"))

(define-category SCENT_OUT23900
  :mixins (SIGHT-30.2)
  :realization (:VERB "scent_out"))

(define-category SIGHT23900
  :mixins (SIGHT-30.2)
  :realization (:VERB "sight"))

(define-category SPOT23000
  :mixins (SIGHT-30.2)
  :realization (:VERB "spot"))

(define-category SPOT23900
  :mixins (SIGHT-30.2)
  :realization (:VERB "spot"))

(define-category SPY23201
  :mixins (SIGHT-30.2)
  :realization (:VERB "spy"))

(define-category SPY23900
  :mixins (SIGHT-30.2)
  :realization (:VERB "spy"))

(define-category VIEW23902
  :mixins (SIGHT-30.2)
  :realization (:VERB "view"))

(define-category WITNESS23901
  :mixins (SIGHT-30.2)
  :realization (:VERB "witness"))

(define-category WITNESS23900
  :mixins (SIGHT-30.2)
  :realization (:VERB "witness"))

(define-category SNIFF23900
  :mixins (SIGHT-30.2)
  :realization (:VERB "sniff"))

(define-category DON22900
  :mixins (SIMPLE_DRESSING-41.3.1)
  :realization (:VERB "don"))

(define-category DOFF23500
  :mixins (SIMPLE_DRESSING-41.3.1)
  :realization (:VERB "doff"))

(define-category WEAR22901
  :mixins (SIMPLE_DRESSING-41.3.1)
  :realization (:VERB "wear"))

(define-category WEAR22904
  :mixins (SIMPLE_DRESSING-41.3.1)
  :realization (:VERB "wear"))

(define-category WEAR22900
  :mixins (SIMPLE_DRESSING-41.3.1)
  :realization (:VERB "wear"))

(define-category MOVE22906
  :mixins (SLIDE-11.2)
  :realization (:VERB "move"))

(define-category MOVE23800
  :mixins (SLIDE-11.2)
  :realization (:VERB "move"))

(define-category MOVE23801
  :mixins (SLIDE-11.2)
  :realization (:VERB "move"))

(define-category MOVE23803
  :mixins (SLIDE-11.2)
  :realization (:VERB "move"))

(define-category SCOOT23800
  :mixins (SLIDE-11.2)
  :realization (:VERB "scoot"))

(define-category PULL23800
  :mixins (SLIDE-11.2)
  :realization (:VERB "pull"))

(define-category PULL23801
  :mixins (SLIDE-11.2)
  :realization (:VERB "pull"))

(define-category BOUNCE23801
  :mixins (SLIDE-11.2-1)
  :realization (:VERB "bounce"))

(define-category BOUNCE23802
  :mixins (SLIDE-11.2-1)
  :realization (:VERB "bounce"))

(define-category BOUNCE23503
  :mixins (SLIDE-11.2-1)
  :realization (:VERB "bounce"))

(define-category BOUNCE23800
  :mixins (SLIDE-11.2-1)
  :realization (:VERB "bounce"))

(define-category DART23802
  :mixins (SLIDE-11.2-1)
  :realization (:VERB "dart"))

(define-category FLOAT23504
  :mixins (SLIDE-11.2-1)
  :realization (:VERB "float"))

(define-category FLOAT23802
  :mixins (SLIDE-11.2-1)
  :realization (:VERB "float"))

(define-category FLOAT23801
  :mixins (SLIDE-11.2-1)
  :realization (:VERB "float"))

(define-category FLOAT23800
  :mixins (SLIDE-11.2-1)
  :realization (:VERB "float"))

(define-category ROLL23800
  :mixins (SLIDE-11.2-1)
  :realization (:VERB "roll"))

(define-category SLIDE23802
  :mixins (SLIDE-11.2-1)
  :realization (:VERB "slide"))

(define-category SLIDE23800
  :mixins (SLIDE-11.2-1)
  :realization (:VERB "slide"))

(define-category SLIDE23801
  :mixins (SLIDE-11.2-1)
  :realization (:VERB "slide"))

(define-category REEK23900
  :mixins (SMELL_EMISSION-43.3)
  :realization (:VERB "reek"))

(define-category SMELL23902
  :mixins (SMELL_EMISSION-43.3)
  :realization (:VERB "smell"))

(define-category SMELL23900
  :mixins (SMELL_EMISSION-43.3)
  :realization (:VERB "smell"))

(define-category STINK23900
  :mixins (SMELL_EMISSION-43.3)
  :realization (:VERB "stink"))

(define-category CATNAP22900
  :mixins (SNOOZE-40.4)
  :realization (:VERB "catnap"))

(define-category DOZE22900
  :mixins (SNOOZE-40.4)
  :realization (:VERB "doze"))

(define-category DROWSE22901
  :mixins (SNOOZE-40.4)
  :realization (:VERB "drowse"))

(define-category SLUMBER22900
  :mixins (SNOOZE-40.4)
  :realization (:VERB "slumber"))

(define-category SNOOZE22900
  :mixins (SNOOZE-40.4)
  :realization (:VERB "snooze"))

(define-category NAP22900
  :mixins (SNOOZE-40.4-1)
  :realization (:VERB "nap"))

(define-category SLEEP22900
  :mixins (SNOOZE-40.4-1)
  :realization (:VERB "sleep"))

(define-category BABBLE23900
  :mixins (SOUND_EMISSION-43.2)
  :realization (:VERB "babble"))

(define-category BANG23800
  :mixins (SOUND_EMISSION-43.2)
  :realization (:VERB "bang"))

(define-category BANG23900
  :mixins (SOUND_EMISSION-43.2)
  :realization (:VERB "bang"))

(define-category BEAT23901
  :mixins (SOUND_EMISSION-43.2)
  :realization (:VERB "beat"))

(define-category BEAT23900
  :mixins (SOUND_EMISSION-43.2)
  :realization (:VERB "beat"))

(define-category BEEP23900
  :mixins (SOUND_EMISSION-43.2)
  :realization (:VERB "beep"))

(define-category BELLOW23201
  :mixins (SOUND_EMISSION-43.2)
  :realization (:VERB "bellow"))

(define-category BELLOW23200
  :mixins (SOUND_EMISSION-43.2)
  :realization (:VERB "bellow"))

(define-category BLARE23900
  :mixins (SOUND_EMISSION-43.2)
  :realization (:VERB "blare"))

(define-category BLARE23901
  :mixins (SOUND_EMISSION-43.2)
  :realization (:VERB "blare"))

(define-category BLAST23900
  :mixins (SOUND_EMISSION-43.2)
  :realization (:VERB "blast"))

(define-category BLAT23200
  :mixins (SOUND_EMISSION-43.2)
  :realization (:VERB "blat"))

(define-category BOOM23901
  :mixins (SOUND_EMISSION-43.2)
  :realization (:VERB "boom"))

(define-category BOOM23900
  :mixins (SOUND_EMISSION-43.2)
  :realization (:VERB "boom"))

(define-category BUBBLE23900
  :mixins (SOUND_EMISSION-43.2)
  :realization (:VERB "bubble"))

(define-category BURBLE23900
  :mixins (SOUND_EMISSION-43.2)
  :realization (:VERB "burble"))

(define-category BUZZ23900
  :mixins (SOUND_EMISSION-43.2)
  :realization (:VERB "buzz"))

(define-category CATERWAUL23200
  :mixins (SOUND_EMISSION-43.2)
  :realization (:VERB "caterwaul"))

(define-category CHATTER23202
  :mixins (SOUND_EMISSION-43.2)
  :realization (:VERB "chatter"))

(define-category CHIME23900
  :mixins (SOUND_EMISSION-43.2)
  :realization (:VERB "chime"))

(define-category CHINK23900
  :mixins (SOUND_EMISSION-43.2)
  :realization (:VERB "chink"))

(define-category CHITTER23200
  :mixins (SOUND_EMISSION-43.2)
  :realization (:VERB "chitter"))

(define-category CHUG23900
  :mixins (SOUND_EMISSION-43.2)
  :realization (:VERB "chug"))

(define-category CLACK23201
  :mixins (SOUND_EMISSION-43.2)
  :realization (:VERB "clack"))

(define-category CLACK23900
  :mixins (SOUND_EMISSION-43.2)
  :realization (:VERB "clack"))

(define-category CLANG23900
  :mixins (SOUND_EMISSION-43.2)
  :realization (:VERB "clang"))

(define-category CLANK23900
  :mixins (SOUND_EMISSION-43.2)
  :realization (:VERB "clank"))

(define-category CLATTER23900
  :mixins (SOUND_EMISSION-43.2)
  :realization (:VERB "clatter"))

(define-category CLICK23200
  :mixins (SOUND_EMISSION-43.2)
  :realization (:VERB "click"))

(define-category CLICK23201
  :mixins (SOUND_EMISSION-43.2)
  :realization (:VERB "click"))

(define-category CLICK23800
  :mixins (SOUND_EMISSION-43.2)
  :realization (:VERB "click"))

(define-category CLINK23900
  :mixins (SOUND_EMISSION-43.2)
  :realization (:VERB "clink"))

(define-category CLINK23901
  :mixins (SOUND_EMISSION-43.2)
  :realization (:VERB "clink"))

(define-category CLUMP23900
  :mixins (SOUND_EMISSION-43.2)
  :realization (:VERB "clump"))

(define-category CLUNK23900
  :mixins (SOUND_EMISSION-43.2)
  :realization (:VERB "clunk"))

(define-category CRACK23901
  :mixins (SOUND_EMISSION-43.2)
  :realization (:VERB "crack"))

(define-category CRACKLE23200
  :mixins (SOUND_EMISSION-43.2)
  :realization (:VERB "crackle"))

(define-category CRACKLE23900
  :mixins (SOUND_EMISSION-43.2)
  :realization (:VERB "crackle"))

(define-category CRASH23801
  :mixins (SOUND_EMISSION-43.2)
  :realization (:VERB "crash"))

(define-category CREAK23900
  :mixins (SOUND_EMISSION-43.2)
  :realization (:VERB "creak"))

(define-category CREPITATE23900
  :mixins (SOUND_EMISSION-43.2)
  :realization (:VERB "crepitate"))

(define-category CRUNCH23400
  :mixins (SOUND_EMISSION-43.2)
  :realization (:VERB "crunch"))

(define-category CRUNCH23200
  :mixins (SOUND_EMISSION-43.2)
  :realization (:VERB "crunch"))

(define-category CRY23203
  :mixins (SOUND_EMISSION-43.2)
  :realization (:VERB "cry"))

(define-category CRY23201
  :mixins (SOUND_EMISSION-43.2)
  :realization (:VERB "cry"))

(define-category DING23900
  :mixins (SOUND_EMISSION-43.2)
  :realization (:VERB "ding"))

(define-category DONG23900
  :mixins (SOUND_EMISSION-43.2)
  :realization (:VERB "dong"))

(define-category EXPLODE23000
  :mixins (SOUND_EMISSION-43.2)
  :realization (:VERB "explode"))

(define-category FIZZ23000
  :mixins (SOUND_EMISSION-43.2)
  :realization (:VERB "fizz"))

(define-category GROAN23200
  :mixins (SOUND_EMISSION-43.2)
  :realization (:VERB "groan"))

(define-category GROWL23200
  :mixins (SOUND_EMISSION-43.2)
  :realization (:VERB "growl"))

(define-category GURGLE23400
  :mixins (SOUND_EMISSION-43.2)
  :realization (:VERB "gurgle"))

(define-category GURGLE23902
  :mixins (SOUND_EMISSION-43.2)
  :realization (:VERB "gurgle"))

(define-category HISS23800
  :mixins (SOUND_EMISSION-43.2)
  :realization (:VERB "hiss"))

(define-category HISS23200
  :mixins (SOUND_EMISSION-43.2)
  :realization (:VERB "hiss"))

(define-category HOOT23200
  :mixins (SOUND_EMISSION-43.2)
  :realization (:VERB "hoot"))

(define-category HONK23200
  :mixins (SOUND_EMISSION-43.2)
  :realization (:VERB "honk"))

(define-category HONK23201
  :mixins (SOUND_EMISSION-43.2)
  :realization (:VERB "honk"))

(define-category HONK23900
  :mixins (SOUND_EMISSION-43.2)
  :realization (:VERB "honk"))

(define-category HOWL23201
  :mixins (SOUND_EMISSION-43.2)
  :realization (:VERB "howl"))

(define-category HOWL23203
  :mixins (SOUND_EMISSION-43.2)
  :realization (:VERB "howl"))

(define-category HOWL23202
  :mixins (SOUND_EMISSION-43.2)
  :realization (:VERB "howl"))

(define-category HUM23201
  :mixins (SOUND_EMISSION-43.2)
  :realization (:VERB "hum"))

(define-category HUM23900
  :mixins (SOUND_EMISSION-43.2)
  :realization (:VERB "hum"))

(define-category JANGLE23900
  :mixins (SOUND_EMISSION-43.2)
  :realization (:VERB "jangle"))

(define-category JINGLE23900
  :mixins (SOUND_EMISSION-43.2)
  :realization (:VERB "jingle"))

(define-category KEEN23700
  :mixins (SOUND_EMISSION-43.2)
  :realization (:VERB "keen"))

(define-category KNELL23901
  :mixins (SOUND_EMISSION-43.2)
  :realization (:VERB "knell"))

(define-category KNELL23900
  :mixins (SOUND_EMISSION-43.2)
  :realization (:VERB "knell"))

(define-category LILT23200
  :mixins (SOUND_EMISSION-43.2)
  :realization (:VERB "lilt"))

(define-category MEWL22900
  :mixins (SOUND_EMISSION-43.2)
  :realization (:VERB "mewl"))

(define-category MOAN23200
  :mixins (SOUND_EMISSION-43.2)
  :realization (:VERB "moan"))

(define-category MURMUR23200
  :mixins (SOUND_EMISSION-43.2)
  :realization (:VERB "murmur"))

(define-category PATTER23900
  :mixins (SOUND_EMISSION-43.2)
  :realization (:VERB "patter"))

(define-category PEAL23901
  :mixins (SOUND_EMISSION-43.2)
  :realization (:VERB "peal"))

(define-category PING23900
  :mixins (SOUND_EMISSION-43.2)
  :realization (:VERB "ping"))

(define-category PING23500
  :mixins (SOUND_EMISSION-43.2)
  :realization (:VERB "ping"))

(define-category PINK23900
  :mixins (SOUND_EMISSION-43.2)
  :realization (:VERB "pink"))

(define-category PIPE23200
  :mixins (SOUND_EMISSION-43.2)
  :realization (:VERB "pipe"))

(define-category PLASH23500
  :mixins (SOUND_EMISSION-43.2)
  :realization (:VERB "plash"))

(define-category PLOP23800
  :mixins (SOUND_EMISSION-43.2)
  :realization (:VERB "plop"))

(define-category PLOP23801
  :mixins (SOUND_EMISSION-43.2)
  :realization (:VERB "plop"))

(define-category PLUNK23900
  :mixins (SOUND_EMISSION-43.2)
  :realization (:VERB "plunk"))

(define-category POP23900
  :mixins (SOUND_EMISSION-43.2)
  :realization (:VERB "pop"))

(define-category PURR23900
  :mixins (SOUND_EMISSION-43.2)
  :realization (:VERB "purr"))

(define-category RASP23200
  :mixins (SOUND_EMISSION-43.2)
  :realization (:VERB "rasp"))

(define-category RATTLE23800
  :mixins (SOUND_EMISSION-43.2)
  :realization (:VERB "rattle"))

(define-category RATTLE23900
  :mixins (SOUND_EMISSION-43.2)
  :realization (:VERB "rattle"))

(define-category RING23901
  :mixins (SOUND_EMISSION-43.2)
  :realization (:VERB "ring"))

(define-category RING23900
  :mixins (SOUND_EMISSION-43.2)
  :realization (:VERB "ring"))

(define-category ROAR23205
  :mixins (SOUND_EMISSION-43.2)
  :realization (:VERB "roar"))

(define-category ROAR23201
  :mixins (SOUND_EMISSION-43.2)
  :realization (:VERB "roar"))

(define-category ROLL23900
  :mixins (SOUND_EMISSION-43.2)
  :realization (:VERB "roll"))

(define-category RUMBLE23200
  :mixins (SOUND_EMISSION-43.2)
  :realization (:VERB "rumble"))

(define-category RUMBLE23900
  :mixins (SOUND_EMISSION-43.2)
  :realization (:VERB "rumble"))

(define-category RUSTLE23900
  :mixins (SOUND_EMISSION-43.2)
  :realization (:VERB "rustle"))

(define-category SCREAM23900
  :mixins (SOUND_EMISSION-43.2)
  :realization (:VERB "scream"))

(define-category SCREAM23201
  :mixins (SOUND_EMISSION-43.2)
  :realization (:VERB "scream"))

(define-category SCREECH23201
  :mixins (SOUND_EMISSION-43.2)
  :realization (:VERB "screech"))

(define-category SCREECH23900
  :mixins (SOUND_EMISSION-43.2)
  :realization (:VERB "screech"))

(define-category SHRIEK23200
  :mixins (SOUND_EMISSION-43.2)
  :realization (:VERB "shriek"))

(define-category SHRILL23200
  :mixins (SOUND_EMISSION-43.2)
  :realization (:VERB "shrill"))

(define-category SING23200
  :mixins (SOUND_EMISSION-43.2)
  :realization (:VERB "sing"))

(define-category SING23208
  :mixins (SOUND_EMISSION-43.2)
  :realization (:VERB "sing"))

(define-category SIZZLE23000
  :mixins (SOUND_EMISSION-43.2)
  :realization (:VERB "sizzle"))

(define-category SIZZLE23200
  :mixins (SOUND_EMISSION-43.2)
  :realization (:VERB "sizzle"))

(define-category SNAP23502
  :mixins (SOUND_EMISSION-43.2)
  :realization (:VERB "snap"))

(define-category SNAP23801
  :mixins (SOUND_EMISSION-43.2)
  :realization (:VERB "snap"))

(define-category SNAP23001
  :mixins (SOUND_EMISSION-43.2)
  :realization (:VERB "snap"))

(define-category SNAP23800
  :mixins (SOUND_EMISSION-43.2)
  :realization (:VERB "snap"))

(define-category SPLASH23900
  :mixins (SOUND_EMISSION-43.2)
  :realization (:VERB "splash"))

(define-category SPLUTTER23200
  :mixins (SOUND_EMISSION-43.2)
  :realization (:VERB "splutter"))

(define-category SPUTTER23200
  :mixins (SOUND_EMISSION-43.2)
  :realization (:VERB "sputter"))

(define-category SPUTTER23900
  :mixins (SOUND_EMISSION-43.2)
  :realization (:VERB "sputter"))

(define-category SQUAWK23201
  :mixins (SOUND_EMISSION-43.2)
  :realization (:VERB "squawk"))

(define-category SQUEAK23900
  :mixins (SOUND_EMISSION-43.2)
  :realization (:VERB "squeak"))

(define-category SQUEAL23201
  :mixins (SOUND_EMISSION-43.2)
  :realization (:VERB "squeal"))

(define-category SQUELCH23900
  :mixins (SOUND_EMISSION-43.2)
  :realization (:VERB "squelch"))

(define-category STRIKE23503
  :mixins (SOUND_EMISSION-43.2)
  :realization (:VERB "strike"))

(define-category STRIKE23200
  :mixins (SOUND_EMISSION-43.2)
  :realization (:VERB "strike"))

(define-category SWISH23900
  :mixins (SOUND_EMISSION-43.2)
  :realization (:VERB "swish"))

(define-category THRUM23900
  :mixins (SOUND_EMISSION-43.2)
  :realization (:VERB "thrum"))

(define-category THUD23901
  :mixins (SOUND_EMISSION-43.2)
  :realization (:VERB "thud"))

(define-category THUD23500
  :mixins (SOUND_EMISSION-43.2)
  :realization (:VERB "thud"))

(define-category THUD23900
  :mixins (SOUND_EMISSION-43.2)
  :realization (:VERB "thud"))

(define-category THUMP23900
  :mixins (SOUND_EMISSION-43.2)
  :realization (:VERB "thump"))

(define-category THUNDER23201
  :mixins (SOUND_EMISSION-43.2)
  :realization (:VERB "thunder"))

(define-category THUNDER23800
  :mixins (SOUND_EMISSION-43.2)
  :realization (:VERB "thunder"))

(define-category TICK23901
  :mixins (SOUND_EMISSION-43.2)
  :realization (:VERB "tick"))

(define-category TICK23900
  :mixins (SOUND_EMISSION-43.2)
  :realization (:VERB "tick"))

(define-category TING23900
  :mixins (SOUND_EMISSION-43.2)
  :realization (:VERB "ting"))

(define-category TING23901
  :mixins (SOUND_EMISSION-43.2)
  :realization (:VERB "ting"))

(define-category TINKLE23900
  :mixins (SOUND_EMISSION-43.2)
  :realization (:VERB "tinkle"))

(define-category TOLL23900
  :mixins (SOUND_EMISSION-43.2)
  :realization (:VERB "toll"))

(define-category TOOT23900
  :mixins (SOUND_EMISSION-43.2)
  :realization (:VERB "toot"))

(define-category TOOTLE23900
  :mixins (SOUND_EMISSION-43.2)
  :realization (:VERB "tootle"))

(define-category TRILL23200
  :mixins (SOUND_EMISSION-43.2)
  :realization (:VERB "trill"))

(define-category TRILL23201
  :mixins (SOUND_EMISSION-43.2)
  :realization (:VERB "trill"))

(define-category TRUMPET23202
  :mixins (SOUND_EMISSION-43.2)
  :realization (:VERB "trumpet"))

(define-category TWANG23900
  :mixins (SOUND_EMISSION-43.2)
  :realization (:VERB "twang"))

(define-category TWANG23901
  :mixins (SOUND_EMISSION-43.2)
  :realization (:VERB "twang"))

(define-category ULULATE23200
  :mixins (SOUND_EMISSION-43.2)
  :realization (:VERB "ululate"))

(define-category VROOM23200
  :mixins (SOUND_EMISSION-43.2)
  :realization (:VERB "vroom"))

(define-category WAIL22900
  :mixins (SOUND_EMISSION-43.2)
  :realization (:VERB "wail"))

(define-category WAIL23200
  :mixins (SOUND_EMISSION-43.2)
  :realization (:VERB "wail"))

(define-category WHINE23800
  :mixins (SOUND_EMISSION-43.2)
  :realization (:VERB "whine"))

(define-category WHIR23900
  :mixins (SOUND_EMISSION-43.2)
  :realization (:VERB "whir"))

(define-category WHISH23800
  :mixins (SOUND_EMISSION-43.2)
  :realization (:VERB "whish"))

(define-category WHISH23900
  :mixins (SOUND_EMISSION-43.2)
  :realization (:VERB "whish"))

(define-category WHISTLE23201
  :mixins (SOUND_EMISSION-43.2)
  :realization (:VERB "whistle"))

(define-category WHISTLE23800
  :mixins (SOUND_EMISSION-43.2)
  :realization (:VERB "whistle"))

(define-category WHISTLE23900
  :mixins (SOUND_EMISSION-43.2)
  :realization (:VERB "whistle"))

(define-category WHOOSH23801
  :mixins (SOUND_EMISSION-43.2)
  :realization (:VERB "whoosh"))

(define-category WHOOSH23802
  :mixins (SOUND_EMISSION-43.2)
  :realization (:VERB "whoosh"))

(define-category ECHO23900
  :mixins (SOUND_EXISTENCE-47.4)
  :realization (:VERB "echo"))

(define-category RESONATE23900
  :mixins (SOUND_EXISTENCE-47.4)
  :realization (:VERB "resonate"))

(define-category RESOUND23901
  :mixins (SOUND_EXISTENCE-47.4)
  :realization (:VERB "resound"))

(define-category REVERBERATE23900
  :mixins (SOUND_EXISTENCE-47.4)
  :realization (:VERB "reverberate"))

(define-category SOUND23901
  :mixins (SOUND_EXISTENCE-47.4)
  :realization (:VERB "sound"))

(define-category BELT23500
  :mixins (SPANK-18.3)
  :realization (:VERB "belt"))

(define-category BIFF23500
  :mixins (SPANK-18.3)
  :realization (:VERB "biff"))

(define-category BIRCH23500
  :mixins (SPANK-18.3)
  :realization (:VERB "birch"))

(define-category BLUDGEON23500
  :mixins (SPANK-18.3)
  :realization (:VERB "bludgeon"))

(define-category BONK23500
  :mixins (SPANK-18.3)
  :realization (:VERB "bonk"))

(define-category BRAIN23501
  :mixins (SPANK-18.3)
  :realization (:VERB "brain"))

(define-category CANE23500
  :mixins (SPANK-18.3)
  :realization (:VERB "cane"))

(define-category CLOBBER23501
  :mixins (SPANK-18.3)
  :realization (:VERB "clobber"))

(define-category CLOUT23500
  :mixins (SPANK-18.3)
  :realization (:VERB "clout"))

(define-category CLUB23500
  :mixins (SPANK-18.3)
  :realization (:VERB "club"))

(define-category CONK23500
  :mixins (SPANK-18.3)
  :realization (:VERB "conk"))

(define-category COSH23500
  :mixins (SPANK-18.3)
  :realization (:VERB "cosh"))

(define-category CUDGEL23500
  :mixins (SPANK-18.3)
  :realization (:VERB "cudgel"))

(define-category CUFF23500
  :mixins (SPANK-18.3)
  :realization (:VERB "cuff"))

(define-category ELBOW23500
  :mixins (SPANK-18.3)
  :realization (:VERB "elbow"))

(define-category FLAGELLATE23500
  :mixins (SPANK-18.3)
  :realization (:VERB "flagellate"))

(define-category FLOG23501
  :mixins (SPANK-18.3)
  :realization (:VERB "flog"))

(define-category FLOG23500
  :mixins (SPANK-18.3)
  :realization (:VERB "flog"))

(define-category KNIFE23500
  :mixins (SPANK-18.3)
  :realization (:VERB "knife"))

(define-category PADDLE23507
  :mixins (SPANK-18.3)
  :realization (:VERB "paddle"))

(define-category PUMMEL23500
  :mixins (SPANK-18.3)
  :realization (:VERB "pummel"))

(define-category SLAM23502
  :mixins (SPANK-18.3)
  :realization (:VERB "slam"))

(define-category SLAM23500
  :mixins (SPANK-18.3)
  :realization (:VERB "slam"))

(define-category SLAM23501
  :mixins (SPANK-18.3)
  :realization (:VERB "slam"))

(define-category SOCK23500
  :mixins (SPANK-18.3)
  :realization (:VERB "sock"))

(define-category SPANK23500
  :mixins (SPANK-18.3)
  :realization (:VERB "spank"))

(define-category STRAP23501
  :mixins (SPANK-18.3)
  :realization (:VERB "strap"))

(define-category THRASH23501
  :mixins (SPANK-18.3)
  :realization (:VERB "thrash"))

(define-category THRASH23500
  :mixins (SPANK-18.3)
  :realization (:VERB "thrash"))

(define-category THUMP23500
  :mixins (SPANK-18.3)
  :realization (:VERB "thump"))

(define-category THUMP23900
  :mixins (SPANK-18.3)
  :realization (:VERB "thump"))

(define-category WALLOP23500
  :mixins (SPANK-18.3)
  :realization (:VERB "wallop"))

(define-category WHIP23502
  :mixins (SPANK-18.3)
  :realization (:VERB "whip"))

(define-category WHIP23500
  :mixins (SPANK-18.3)
  :realization (:VERB "whip"))

(define-category WHISK23501
  :mixins (SPANK-18.3)
  :realization (:VERB "whisk"))

(define-category HORSEWHIP23500
  :mixins (SPANK-18.3)
  :realization (:VERB "horsewhip"))

(define-category BOW23801
  :mixins (SPATIAL_CONFIGURATION-47.6)
  :realization (:VERB "bow"))

(define-category BOW23800
  :mixins (SPATIAL_CONFIGURATION-47.6)
  :realization (:VERB "bow"))

(define-category BOW23200
  :mixins (SPATIAL_CONFIGURATION-47.6)
  :realization (:VERB "bow"))

(define-category CROUCH23500
  :mixins (SPATIAL_CONFIGURATION-47.6)
  :realization (:VERB "crouch"))

(define-category HOVER23801
  :mixins (SPATIAL_CONFIGURATION-47.6)
  :realization (:VERB "hover"))

(define-category HOVER23800
  :mixins (SPATIAL_CONFIGURATION-47.6)
  :realization (:VERB "hover"))

(define-category JUT24200
  :mixins (SPATIAL_CONFIGURATION-47.6)
  :realization (:VERB "jut"))

(define-category KNEEL23500
  :mixins (SPATIAL_CONFIGURATION-47.6)
  :realization (:VERB "kneel"))

(define-category LEAN23500
  :mixins (SPATIAL_CONFIGURATION-47.6)
  :realization (:VERB "lean"))

(define-category LEAN23800
  :mixins (SPATIAL_CONFIGURATION-47.6)
  :realization (:VERB "lean"))

(define-category LIE23500
  :mixins (SPATIAL_CONFIGURATION-47.6)
  :realization (:VERB "lie"))

(define-category LIE24200
  :mixins (SPATIAL_CONFIGURATION-47.6)
  :realization (:VERB "lie"))

(define-category LOLL24201
  :mixins (SPATIAL_CONFIGURATION-47.6)
  :realization (:VERB "loll"))

(define-category LOOM24206
  :mixins (SPATIAL_CONFIGURATION-47.6)
  :realization (:VERB "loom"))

(define-category LOUNGE23500
  :mixins (SPATIAL_CONFIGURATION-47.6)
  :realization (:VERB "lounge"))

(define-category PROTRUDE24200
  :mixins (SPATIAL_CONFIGURATION-47.6)
  :realization (:VERB "protrude"))

(define-category RISE24200
  :mixins (SPATIAL_CONFIGURATION-47.6)
  :realization (:VERB "rise"))

(define-category ROOST23500
  :mixins (SPATIAL_CONFIGURATION-47.6)
  :realization (:VERB "roost"))

(define-category SAG23801
  :mixins (SPATIAL_CONFIGURATION-47.6)
  :realization (:VERB "sag"))

(define-category SAG23800
  :mixins (SPATIAL_CONFIGURATION-47.6)
  :realization (:VERB "sag"))

(define-category SQUAT24201
  :mixins (SPATIAL_CONFIGURATION-47.6)
  :realization (:VERB "squat"))

(define-category SQUAT23500
  :mixins (SPATIAL_CONFIGURATION-47.6)
  :realization (:VERB "squat"))

(define-category STOOP23805
  :mixins (SPATIAL_CONFIGURATION-47.6)
  :realization (:VERB "stoop"))

(define-category SWAG23802
  :mixins (SPATIAL_CONFIGURATION-47.6)
  :realization (:VERB "swag"))

(define-category TOWER24200
  :mixins (SPATIAL_CONFIGURATION-47.6)
  :realization (:VERB "tower"))

(define-category YAW24200
  :mixins (SPATIAL_CONFIGURATION-47.6)
  :realization (:VERB "yaw"))

(define-category BALANCE24201
  :mixins (SPATIAL_CONFIGURATION-47.6-1)
  :realization (:VERB "balance"))

(define-category BALANCE24200
  :mixins (SPATIAL_CONFIGURATION-47.6-1)
  :realization (:VERB "balance"))

(define-category BEND23500
  :mixins (SPATIAL_CONFIGURATION-47.6-1)
  :realization (:VERB "bend"))

(define-category BEND23800
  :mixins (SPATIAL_CONFIGURATION-47.6-1)
  :realization (:VERB "bend"))

(define-category DANGLE23500
  :mixins (SPATIAL_CONFIGURATION-47.6-1)
  :realization (:VERB "dangle"))

(define-category DANGLE24200
  :mixins (SPATIAL_CONFIGURATION-47.6-1)
  :realization (:VERB "dangle"))

(define-category FLY23900
  :mixins (SPATIAL_CONFIGURATION-47.6-1)
  :realization (:VERB "fly"))

(define-category HANG23000
  :mixins (SPATIAL_CONFIGURATION-47.6-1)
  :realization (:VERB "hang"))

(define-category HANG23504
  :mixins (SPATIAL_CONFIGURATION-47.6-1)
  :realization (:VERB "hang"))

(define-category HANG23505
  :mixins (SPATIAL_CONFIGURATION-47.6-1)
  :realization (:VERB "hang"))

(define-category HANG23600
  :mixins (SPATIAL_CONFIGURATION-47.6-1)
  :realization (:VERB "hang"))

(define-category HANG24201
  :mixins (SPATIAL_CONFIGURATION-47.6-1)
  :realization (:VERB "hang"))

(define-category HANG23502
  :mixins (SPATIAL_CONFIGURATION-47.6-1)
  :realization (:VERB "hang"))

(define-category HANG23500
  :mixins (SPATIAL_CONFIGURATION-47.6-1)
  :realization (:VERB "hang"))

(define-category HANG23503
  :mixins (SPATIAL_CONFIGURATION-47.6-1)
  :realization (:VERB "hang"))

(define-category NESTLE23500
  :mixins (SPATIAL_CONFIGURATION-47.6-1)
  :realization (:VERB "nestle"))

(define-category PERCH23510
  :mixins (SPATIAL_CONFIGURATION-47.6-1)
  :realization (:VERB "perch"))

(define-category PERCH23500
  :mixins (SPATIAL_CONFIGURATION-47.6-1)
  :realization (:VERB "perch"))

(define-category PLOP23500
  :mixins (SPATIAL_CONFIGURATION-47.6-1)
  :realization (:VERB "plop"))

(define-category PROJECT23603
  :mixins (SPATIAL_CONFIGURATION-47.6-1)
  :realization (:VERB "project"))

(define-category PROJECT24200
  :mixins (SPATIAL_CONFIGURATION-47.6-1)
  :realization (:VERB "project"))

(define-category RECLINE23500
  :mixins (SPATIAL_CONFIGURATION-47.6-1)
  :realization (:VERB "recline"))

(define-category RECLINE23800
  :mixins (SPATIAL_CONFIGURATION-47.6-1)
  :realization (:VERB "recline"))

(define-category REST23501
  :mixins (SPATIAL_CONFIGURATION-47.6-1)
  :realization (:VERB "rest"))

(define-category REST23504
  :mixins (SPATIAL_CONFIGURATION-47.6-1)
  :realization (:VERB "rest"))

(define-category REST24212
  :mixins (SPATIAL_CONFIGURATION-47.6-1)
  :realization (:VERB "rest"))

(define-category REST23500
  :mixins (SPATIAL_CONFIGURATION-47.6-1)
  :realization (:VERB "rest"))

(define-category SIT24200
  :mixins (SPATIAL_CONFIGURATION-47.6-1)
  :realization (:VERB "sit"))

(define-category SIT23500
  :mixins (SPATIAL_CONFIGURATION-47.6-1)
  :realization (:VERB "sit"))

(define-category SLOPE23800
  :mixins (SPATIAL_CONFIGURATION-47.6-1)
  :realization (:VERB "slope"))

(define-category SPRAWL23500
  :mixins (SPATIAL_CONFIGURATION-47.6-1)
  :realization (:VERB "sprawl"))

(define-category STAND23501
  :mixins (SPATIAL_CONFIGURATION-47.6-1)
  :realization (:VERB "stand"))

(define-category STAND23500
  :mixins (SPATIAL_CONFIGURATION-47.6-1)
  :realization (:VERB "stand"))

(define-category STRADDLE24201
  :mixins (SPATIAL_CONFIGURATION-47.6-1)
  :realization (:VERB "straddle"))

(define-category SWING24200
  :mixins (SPATIAL_CONFIGURATION-47.6-1)
  :realization (:VERB "swing"))

(define-category SWING23802
  :mixins (SPATIAL_CONFIGURATION-47.6-1)
  :realization (:VERB "swing"))

(define-category TILT23800
  :mixins (SPATIAL_CONFIGURATION-47.6-1)
  :realization (:VERB "tilt"))

(define-category PASS24200
  :mixins (SPEND_TIME-104)
  :realization (:VERB "pass"))

(define-category SERVE24200
  :mixins (SPEND_TIME-104)
  :realization (:VERB "serve"))

(define-category MISSPEND24200
  :mixins (SPEND_TIME-104)
  :realization (:VERB "misspend"))

(define-category SPEND24200
  :mixins (SPEND_TIME-104)
  :realization (:VERB "spend"))

(define-category USE23400
  :mixins (SPEND_TIME-104)
  :realization (:VERB "use"))

(define-category WASTE23405
  :mixins (SPEND_TIME-104)
  :realization (:VERB "waste"))

(define-category WASTE24000
  :mixins (SPEND_TIME-104)
  :realization (:VERB "waste"))

(define-category BLOW23803
  :mixins (SPLIT-23.2)
  :realization (:VERB "blow"))

(define-category BLOW23800
  :mixins (SPLIT-23.2)
  :realization (:VERB "blow"))

(define-category BREAK23505
  :mixins (SPLIT-23.2)
  :realization (:VERB "break"))

(define-category CUT23511
  :mixins (SPLIT-23.2)
  :realization (:VERB "cut"))

(define-category CUT23500
  :mixins (SPLIT-23.2)
  :realization (:VERB "cut"))

(define-category DRAW23801
  :mixins (SPLIT-23.2)
  :realization (:VERB "draw"))

(define-category HACK23501
  :mixins (SPLIT-23.2)
  :realization (:VERB "hack"))

(define-category HEW23500
  :mixins (SPLIT-23.2)
  :realization (:VERB "hew"))

(define-category KICK23501
  :mixins (SPLIT-23.2)
  :realization (:VERB "kick"))

(define-category KNOCK23504
  :mixins (SPLIT-23.2)
  :realization (:VERB "knock"))

(define-category PRY23500
  :mixins (SPLIT-23.2)
  :realization (:VERB "pry"))

(define-category PULL23510
  :mixins (SPLIT-23.2)
  :realization (:VERB "pull"))

(define-category PULL23803
  :mixins (SPLIT-23.2)
  :realization (:VERB "pull"))

(define-category PULL23504
  :mixins (SPLIT-23.2)
  :realization (:VERB "pull"))

(define-category PUSH23800
  :mixins (SPLIT-23.2)
  :realization (:VERB "push"))

(define-category RIP23500
  :mixins (SPLIT-23.2)
  :realization (:VERB "rip"))

(define-category ROLL23800
  :mixins (SPLIT-23.2)
  :realization (:VERB "roll"))

(define-category SAW23500
  :mixins (SPLIT-23.2)
  :realization (:VERB "saw"))

(define-category SHOVE23801
  :mixins (SPLIT-23.2)
  :realization (:VERB "shove"))

(define-category SLIP23805
  :mixins (SPLIT-23.2)
  :realization (:VERB "slip"))

(define-category SLIVER23001
  :mixins (SPLIT-23.2)
  :realization (:VERB "sliver"))

(define-category SLIVER23000
  :mixins (SPLIT-23.2)
  :realization (:VERB "sliver"))

(define-category SLIVER24100
  :mixins (SPLIT-23.2)
  :realization (:VERB "sliver"))

(define-category SNAP23000
  :mixins (SPLIT-23.2)
  :realization (:VERB "snap"))

(define-category SNAP23501
  :mixins (SPLIT-23.2)
  :realization (:VERB "snap"))

(define-category SPLIT23001
  :mixins (SPLIT-23.2)
  :realization (:VERB "split"))

(define-category SPLIT23500
  :mixins (SPLIT-23.2)
  :realization (:VERB "split"))

(define-category TEAR23501
  :mixins (SPLIT-23.2)
  :realization (:VERB "tear"))

(define-category TUG23502
  :mixins (SPLIT-23.2)
  :realization (:VERB "tug"))

(define-category YANK23500
  :mixins (SPLIT-23.2)
  :realization (:VERB "yank"))

(define-category OVERLOAD23501
  :mixins (SPRAY-9.7)
  :realization (:VERB "overload"))

(define-category OVERLOAD23500
  :mixins (SPRAY-9.7)
  :realization (:VERB "overload"))

(define-category BASTE23000
  :mixins (SPRAY-9.7-1)
  :realization (:VERB "baste"))

(define-category BRUSH23510
  :mixins (SPRAY-9.7-1)
  :realization (:VERB "brush"))

(define-category DRIZZLE23500
  :mixins (SPRAY-9.7-1)
  :realization (:VERB "drizzle"))

(define-category HANG23504
  :mixins (SPRAY-9.7-1)
  :realization (:VERB "hang"))

(define-category HANG23600
  :mixins (SPRAY-9.7-1)
  :realization (:VERB "hang"))

(define-category HANG23500
  :mixins (SPRAY-9.7-1)
  :realization (:VERB "hang"))

(define-category PLASTER22900
  :mixins (SPRAY-9.7-1)
  :realization (:VERB "plaster"))

(define-category PLASTER23500
  :mixins (SPRAY-9.7-1)
  :realization (:VERB "plaster"))

(define-category PLASTER23501
  :mixins (SPRAY-9.7-1)
  :realization (:VERB "plaster"))

(define-category PLASTER23502
  :mixins (SPRAY-9.7-1)
  :realization (:VERB "plaster"))

(define-category PLASTER23510
  :mixins (SPRAY-9.7-1)
  :realization (:VERB "plaster"))

(define-category PLASTER23511
  :mixins (SPRAY-9.7-1)
  :realization (:VERB "plaster"))

(define-category PUMP23802
  :mixins (SPRAY-9.7-1)
  :realization (:VERB "pump"))

(define-category PUMP24000
  :mixins (SPRAY-9.7-1)
  :realization (:VERB "pump"))

(define-category PUMP23300
  :mixins (SPRAY-9.7-1)
  :realization (:VERB "pump"))

(define-category RUB23500
  :mixins (SPRAY-9.7-1)
  :realization (:VERB "rub"))

(define-category SCATTER23802
  :mixins (SPRAY-9.7-1)
  :realization (:VERB "scatter"))

(define-category SCATTER23501
  :mixins (SPRAY-9.7-1)
  :realization (:VERB "scatter"))

(define-category SCATTER23500
  :mixins (SPRAY-9.7-1)
  :realization (:VERB "scatter"))

(define-category SEED23501
  :mixins (SPRAY-9.7-1)
  :realization (:VERB "seed"))

(define-category SEW23500
  :mixins (SPRAY-9.7-1)
  :realization (:VERB "sew"))

(define-category SHOWER23412
  :mixins (SPRAY-9.7-1)
  :realization (:VERB "shower"))

(define-category SHOWER23500
  :mixins (SPRAY-9.7-1)
  :realization (:VERB "shower"))

(define-category SHOWER24000
  :mixins (SPRAY-9.7-1)
  :realization (:VERB "shower"))

(define-category SMEAR23501
  :mixins (SPRAY-9.7-1)
  :realization (:VERB "smear"))

(define-category SMEAR23503
  :mixins (SPRAY-9.7-1)
  :realization (:VERB "smear"))

(define-category SMUDGE23500
  :mixins (SPRAY-9.7-1)
  :realization (:VERB "smudge"))

(define-category SOW23502
  :mixins (SPRAY-9.7-1)
  :realization (:VERB "sow"))

(define-category SOW23500
  :mixins (SPRAY-9.7-1)
  :realization (:VERB "sow"))

(define-category SPATTER23501
  :mixins (SPRAY-9.7-1)
  :realization (:VERB "spatter"))

(define-category SPATTER23500
  :mixins (SPRAY-9.7-1)
  :realization (:VERB "spatter"))

(define-category SPLASH23504
  :mixins (SPRAY-9.7-1)
  :realization (:VERB "splash"))

(define-category SPLASH23500
  :mixins (SPRAY-9.7-1)
  :realization (:VERB "splash"))

(define-category SPLATTER23501
  :mixins (SPRAY-9.7-1)
  :realization (:VERB "splatter"))

(define-category SPLATTER23500
  :mixins (SPRAY-9.7-1)
  :realization (:VERB "splatter"))

(define-category SPRAY23503
  :mixins (SPRAY-9.7-1)
  :realization (:VERB "spray"))

(define-category SPRAY23500
  :mixins (SPRAY-9.7-1)
  :realization (:VERB "spray"))

(define-category SPRAY23501
  :mixins (SPRAY-9.7-1)
  :realization (:VERB "spray"))

(define-category SPREAD23513
  :mixins (SPRAY-9.7-1)
  :realization (:VERB "spread"))

(define-category SPREAD23512
  :mixins (SPRAY-9.7-1)
  :realization (:VERB "spread"))

(define-category SPREAD24200
  :mixins (SPRAY-9.7-1)
  :realization (:VERB "spread"))

(define-category SPRINKLE23000
  :mixins (SPRAY-9.7-1)
  :realization (:VERB "sprinkle"))

(define-category SPRINKLE23501
  :mixins (SPRAY-9.7-1)
  :realization (:VERB "sprinkle"))

(define-category SPRITZ23500
  :mixins (SPRAY-9.7-1)
  :realization (:VERB "spritz"))

(define-category SPRITZ23502
  :mixins (SPRAY-9.7-1)
  :realization (:VERB "spritz"))

(define-category SQUIRT23510
  :mixins (SPRAY-9.7-1)
  :realization (:VERB "squirt"))

(define-category SQUIRT23500
  :mixins (SPRAY-9.7-1)
  :realization (:VERB "squirt"))

(define-category STICK23503
  :mixins (SPRAY-9.7-1)
  :realization (:VERB "stick"))

(define-category STICK23504
  :mixins (SPRAY-9.7-1)
  :realization (:VERB "stick"))

(define-category STICK23502
  :mixins (SPRAY-9.7-1)
  :realization (:VERB "stick"))

(define-category STREW23504
  :mixins (SPRAY-9.7-1)
  :realization (:VERB "strew"))

(define-category STREW23500
  :mixins (SPRAY-9.7-1)
  :realization (:VERB "strew"))

(define-category STRING23502
  :mixins (SPRAY-9.7-1)
  :realization (:VERB "string"))

(define-category SWAB23501
  :mixins (SPRAY-9.7-1)
  :realization (:VERB "swab"))

(define-category SWAB23500
  :mixins (SPRAY-9.7-1)
  :realization (:VERB "swab"))

(define-category SWASH23500
  :mixins (SPRAY-9.7-1)
  :realization (:VERB "swash"))

(define-category SPURT23801
  :mixins (SPRAY-9.7-1)
  :realization (:VERB "spurt"))

(define-category WRAP23501
  :mixins (SPRAY-9.7-1)
  :realization (:VERB "wrap"))

(define-category WRAP23502
  :mixins (SPRAY-9.7-1)
  :realization (:VERB "wrap"))

(define-category WRAP23500
  :mixins (SPRAY-9.7-1)
  :realization (:VERB "wrap"))

(define-category CRAM23510
  :mixins (SPRAY-9.7-1-1)
  :realization (:VERB "cram"))

(define-category CRAM23500
  :mixins (SPRAY-9.7-1-1)
  :realization (:VERB "cram"))

(define-category CROWD24200
  :mixins (SPRAY-9.7-1-1)
  :realization (:VERB "crowd"))

(define-category CROWD23801
  :mixins (SPRAY-9.7-1-1)
  :realization (:VERB "crowd"))

(define-category JAM23502
  :mixins (SPRAY-9.7-1-1)
  :realization (:VERB "jam"))

(define-category JAM23500
  :mixins (SPRAY-9.7-1-1)
  :realization (:VERB "jam"))

(define-category JAM23800
  :mixins (SPRAY-9.7-1-1)
  :realization (:VERB "jam"))

(define-category PACK23800
  :mixins (SPRAY-9.7-1-1)
  :realization (:VERB "pack"))

(define-category PACK23502
  :mixins (SPRAY-9.7-1-1)
  :realization (:VERB "pack"))

(define-category PACK23802
  :mixins (SPRAY-9.7-1-1)
  :realization (:VERB "pack"))

(define-category PACK23500
  :mixins (SPRAY-9.7-1-1)
  :realization (:VERB "pack"))

(define-category PILE23500
  :mixins (SPRAY-9.7-1-1)
  :realization (:VERB "pile"))

(define-category DRAPE23510
  :mixins (SPRAY-9.7-2)
  :realization (:VERB "drape"))

(define-category DRAPE23501
  :mixins (SPRAY-9.7-2)
  :realization (:VERB "drape"))

(define-category DRAPE23500
  :mixins (SPRAY-9.7-2)
  :realization (:VERB "drape"))

(define-category LOAD23510
  :mixins (SPRAY-9.7-2)
  :realization (:VERB "load"))

(define-category LOAD23501
  :mixins (SPRAY-9.7-2)
  :realization (:VERB "load"))

(define-category DAB23501
  :mixins (SPRAY-9.7-2)
  :realization (:VERB "dab"))

(define-category DAUB23500
  :mixins (SPRAY-9.7-2)
  :realization (:VERB "daub"))

(define-category DAUB23502
  :mixins (SPRAY-9.7-2)
  :realization (:VERB "daub"))

(define-category DAUB23501
  :mixins (SPRAY-9.7-2)
  :realization (:VERB "daub"))

(define-category MOUND23600
  :mixins (SPRAY-9.7-2)
  :realization (:VERB "mound"))

(define-category DUST23503
  :mixins (SPRAY-9.7-2)
  :realization (:VERB "dust"))

(define-category HEAP23000
  :mixins (SPRAY-9.7-2)
  :realization (:VERB "heap"))

(define-category HEAP23500
  :mixins (SPRAY-9.7-2)
  :realization (:VERB "heap"))

(define-category PLANT23501
  :mixins (SPRAY-9.7-2)
  :realization (:VERB "plant"))

(define-category PLANT23500
  :mixins (SPRAY-9.7-2)
  :realization (:VERB "plant"))

(define-category SEED23000
  :mixins (SPRAY-9.7-2)
  :realization (:VERB "seed"))

(define-category SLATHER23500
  :mixins (SPRAY-9.7-2)
  :realization (:VERB "slather"))

(define-category STACK23500
  :mixins (SPRAY-9.7-2)
  :realization (:VERB "stack"))

(define-category STACK23501
  :mixins (SPRAY-9.7-2)
  :realization (:VERB "stack"))

(define-category STOCK24002
  :mixins (SPRAY-9.7-2)
  :realization (:VERB "stock"))

(define-category STUFF23000
  :mixins (SPRAY-9.7-2)
  :realization (:VERB "stuff"))

(define-category STUFF23002
  :mixins (SPRAY-9.7-2)
  :realization (:VERB "stuff"))

(define-category STUFF23800
  :mixins (SPRAY-9.7-2)
  :realization (:VERB "stuff"))

(define-category STUFF23500
  :mixins (SPRAY-9.7-2)
  :realization (:VERB "stuff"))

(define-category SCENT23901
  :mixins (STALK-35.3)
  :realization (:VERB "scent"))

(define-category SMELL23901
  :mixins (STALK-35.3)
  :realization (:VERB "smell"))

(define-category STALK23803
  :mixins (STALK-35.3)
  :realization (:VERB "stalk"))

(define-category TASTE23400
  :mixins (STALK-35.3)
  :realization (:VERB "taste"))

(define-category TRACK23800
  :mixins (STALK-35.3)
  :realization (:VERB "track"))

(define-category WHIFF23900
  :mixins (STALK-35.3)
  :realization (:VERB "whiff"))

(define-category ABDUCT23502
  :mixins (STEAL-10.5)
  :realization (:VERB "abduct"))

(define-category ANNEX24000
  :mixins (STEAL-10.5)
  :realization (:VERB "annex"))

(define-category BLEED23000
  :mixins (STEAL-10.5)
  :realization (:VERB "bleed"))

(define-category BLEED24009
  :mixins (STEAL-10.5)
  :realization (:VERB "bleed"))

(define-category CABBAGE24000
  :mixins (STEAL-10.5)
  :realization (:VERB "cabbage"))

(define-category CARJACK23500
  :mixins (STEAL-10.5)
  :realization (:VERB "carjack"))

(define-category COMMANDEER23500
  :mixins (STEAL-10.5)
  :realization (:VERB "commandeer"))

(define-category CONFISCATE24001
  :mixins (STEAL-10.5)
  :realization (:VERB "confiscate"))

(define-category CULL24000
  :mixins (STEAL-10.5)
  :realization (:VERB "cull"))

(define-category EMANCIPATE24100
  :mixins (STEAL-10.5)
  :realization (:VERB "emancipate"))

(define-category EMBEZZLE24000
  :mixins (STEAL-10.5)
  :realization (:VERB "embezzle"))

(define-category EXTORT24000
  :mixins (STEAL-10.5)
  :realization (:VERB "extort"))

(define-category EXTORT24001
  :mixins (STEAL-10.5)
  :realization (:VERB "extort"))

(define-category FILCH24000
  :mixins (STEAL-10.5)
  :realization (:VERB "filch"))

(define-category HIGHJACK23500
  :mixins (STEAL-10.5)
  :realization (:VERB "highjack"))

(define-category KIDNAP23500
  :mixins (STEAL-10.5)
  :realization (:VERB "kidnap"))

(define-category KNOCK_OFF24000
  :mixins (STEAL-10.5)
  :realization (:VERB "knock_off"))

(define-category LIBERATE24100
  :mixins (STEAL-10.5)
  :realization (:VERB "liberate"))

(define-category LIBERATE24102
  :mixins (STEAL-10.5)
  :realization (:VERB "liberate"))

(define-category LIFT24003
  :mixins (STEAL-10.5)
  :realization (:VERB "lift"))

(define-category LIFT24000
  :mixins (STEAL-10.5)
  :realization (:VERB "lift"))

(define-category MILK23400
  :mixins (STEAL-10.5)
  :realization (:VERB "milk"))

(define-category NOBBLE23500
  :mixins (STEAL-10.5)
  :realization (:VERB "nobble"))

(define-category NOBBLE24000
  :mixins (STEAL-10.5)
  :realization (:VERB "nobble"))

(define-category PINCH24000
  :mixins (STEAL-10.5)
  :realization (:VERB "pinch"))

(define-category PLAGIARIZE24000
  :mixins (STEAL-10.5)
  :realization (:VERB "plagiarize"))

(define-category PLUNDER23501
  :mixins (STEAL-10.5)
  :realization (:VERB "plunder"))

(define-category PLUNDER24000
  :mixins (STEAL-10.5)
  :realization (:VERB "plunder"))

(define-category PURLOIN24000
  :mixins (STEAL-10.5)
  :realization (:VERB "purloin"))

(define-category RECAPTURE23500
  :mixins (STEAL-10.5)
  :realization (:VERB "recapture"))

(define-category RECAPTURE24000
  :mixins (STEAL-10.5)
  :realization (:VERB "recapture"))

(define-category RECAPTURE23600
  :mixins (STEAL-10.5)
  :realization (:VERB "recapture"))

(define-category RECAPTURE23700
  :mixins (STEAL-10.5)
  :realization (:VERB "recapture"))

(define-category RECLAIM24000
  :mixins (STEAL-10.5)
  :realization (:VERB "reclaim"))

(define-category RECOUP24000
  :mixins (STEAL-10.5)
  :realization (:VERB "recoup"))

(define-category REPOSSESS24003
  :mixins (STEAL-10.5)
  :realization (:VERB "repossess"))

(define-category REPOSSESS24000
  :mixins (STEAL-10.5)
  :realization (:VERB "repossess"))

(define-category RESCUE24000
  :mixins (STEAL-10.5)
  :realization (:VERB "rescue"))

(define-category ROB24000
  :mixins (STEAL-10.5)
  :realization (:VERB "rob"))

(define-category RUSTLE24000
  :mixins (STEAL-10.5)
  :realization (:VERB "rustle"))

(define-category SEIZE24007
  :mixins (STEAL-10.5)
  :realization (:VERB "seize"))

(define-category SEIZE24002
  :mixins (STEAL-10.5)
  :realization (:VERB "seize"))

(define-category SEIZE24001
  :mixins (STEAL-10.5)
  :realization (:VERB "seize"))

(define-category SEIZE23501
  :mixins (STEAL-10.5)
  :realization (:VERB "seize"))

(define-category SEQUESTER24000
  :mixins (STEAL-10.5)
  :realization (:VERB "sequester"))

(define-category TAKE24001
  :mixins (STEAL-10.5)
  :realization (:VERB "take"))

(define-category TAKE23809
  :mixins (STEAL-10.5)
  :realization (:VERB "take"))

(define-category THIEVE24000
  :mixins (STEAL-10.5)
  :realization (:VERB "thieve"))

(define-category WREST23501
  :mixins (STEAL-10.5)
  :realization (:VERB "wrest"))

(define-category CADGE24001
  :mixins (STEAL-10.5-1)
  :realization (:VERB "cadge"))

(define-category CADGE24000
  :mixins (STEAL-10.5-1)
  :realization (:VERB "cadge"))

(define-category CAPTURE23600
  :mixins (STEAL-10.5-1)
  :realization (:VERB "capture"))

(define-category COP24000
  :mixins (STEAL-10.5-1)
  :realization (:VERB "cop"))

(define-category GRAB24003
  :mixins (STEAL-10.5-1)
  :realization (:VERB "grab"))

(define-category HOOK24000
  :mixins (STEAL-10.5-1)
  :realization (:VERB "hook"))

(define-category HOOK24001
  :mixins (STEAL-10.5-1)
  :realization (:VERB "hook"))

(define-category NAB23501
  :mixins (STEAL-10.5-1)
  :realization (:VERB "nab"))

(define-category PILFER24000
  :mixins (STEAL-10.5-1)
  :realization (:VERB "pilfer"))

(define-category PIRATE23500
  :mixins (STEAL-10.5-1)
  :realization (:VERB "pirate"))

(define-category SALVAGE24100
  :mixins (STEAL-10.5-1)
  :realization (:VERB "salvage"))

(define-category SHOPLIFT24000
  :mixins (STEAL-10.5-1)
  :realization (:VERB "shoplift"))

(define-category SMUGGLE24000
  :mixins (STEAL-10.5-1)
  :realization (:VERB "smuggle"))

(define-category SNATCH23501
  :mixins (STEAL-10.5-1)
  :realization (:VERB "snatch"))

(define-category SNATCH23500
  :mixins (STEAL-10.5-1)
  :realization (:VERB "snatch"))

(define-category SNEAK24000
  :mixins (STEAL-10.5-1)
  :realization (:VERB "sneak"))

(define-category STEAL24000
  :mixins (STEAL-10.5-1)
  :realization (:VERB "steal"))

(define-category SWIPE24000
  :mixins (STEAL-10.5-1)
  :realization (:VERB "swipe"))

(define-category WANGLE24100
  :mixins (STEAL-10.5-1)
  :realization (:VERB "wangle"))

(define-category INCITE23600
  :mixins (STIMULATE-59.4)
  :realization (:VERB "incite"))

(define-category JOLT23800
  :mixins (STIMULATE-59.4)
  :realization (:VERB "jolt"))

(define-category PROMPT23200
  :mixins (STIMULATE-59.4)
  :realization (:VERB "prompt"))

(define-category PROMPT23600
  :mixins (STIMULATE-59.4)
  :realization (:VERB "prompt"))

(define-category SPUR24100
  :mixins (STIMULATE-59.4)
  :realization (:VERB "spur"))

(define-category STIMULATE23200
  :mixins (STIMULATE-59.4)
  :realization (:VERB "stimulate"))

(define-category STIMULATE23201
  :mixins (STIMULATE-59.4)
  :realization (:VERB "stimulate"))

(define-category FEEL23909
  :mixins (STIMULUS_SUBJECT-30.4)
  :realization (:VERB "feel"))

(define-category FEEL24200
  :mixins (STIMULUS_SUBJECT-30.4)
  :realization (:VERB "feel"))

(define-category LOOK24202
  :mixins (STIMULUS_SUBJECT-30.4)
  :realization (:VERB "look"))

(define-category LOOK22900
  :mixins (STIMULUS_SUBJECT-30.4)
  :realization (:VERB "look"))

(define-category LOOK23901
  :mixins (STIMULUS_SUBJECT-30.4)
  :realization (:VERB "look"))

(define-category SMELL23902
  :mixins (STIMULUS_SUBJECT-30.4)
  :realization (:VERB "smell"))

(define-category SMELL23900
  :mixins (STIMULUS_SUBJECT-30.4)
  :realization (:VERB "smell"))

(define-category SOUND23903
  :mixins (STIMULUS_SUBJECT-30.4)
  :realization (:VERB "sound"))

(define-category TASTE23912
  :mixins (STIMULUS_SUBJECT-30.4)
  :realization (:VERB "taste"))

(define-category TASTE23902
  :mixins (STIMULUS_SUBJECT-30.4)
  :realization (:VERB "taste"))

(define-category CUT23000
  :mixins (STOP-55.4)
  :realization (:VERB "cut"))

(define-category RAISE23013
  :mixins (STOP-55.4)
  :realization (:VERB "raise"))

(define-category KILL23003
  :mixins (STOP-55.4)
  :realization (:VERB "kill"))

(define-category KILL23008
  :mixins (STOP-55.4)
  :realization (:VERB "kill"))

(define-category CLOSE23008
  :mixins (STOP-55.4-1)
  :realization (:VERB "close"))

(define-category CLOSE24201
  :mixins (STOP-55.4-1)
  :realization (:VERB "close"))

(define-category CLOSE24200
  :mixins (STOP-55.4-1)
  :realization (:VERB "close"))

(define-category CLOSE24101
  :mixins (STOP-55.4-1)
  :realization (:VERB "close"))

(define-category CUT_OFF23000
  :mixins (STOP-55.4-1)
  :realization (:VERB "cut_off"))

(define-category CUT_OFF23200
  :mixins (STOP-55.4-1)
  :realization (:VERB "cut_off"))

(define-category CUT_OUT23001
  :mixins (STOP-55.4-1)
  :realization (:VERB "cut_out"))

(define-category HALT24100
  :mixins (STOP-55.4-1)
  :realization (:VERB "halt"))

(define-category HALT23801
  :mixins (STOP-55.4-1)
  :realization (:VERB "halt"))

(define-category HALT23805
  :mixins (STOP-55.4-1)
  :realization (:VERB "halt"))

(define-category REPEAT24100
  :mixins (STOP-55.4-1)
  :realization (:VERB "repeat"))

(define-category REPEAT23000
  :mixins (STOP-55.4-1)
  :realization (:VERB "repeat"))

(define-category TERMINATE24205
  :mixins (STOP-55.4-1)
  :realization (:VERB "terminate"))

(define-category TERMINATE24200
  :mixins (STOP-55.4-1)
  :realization (:VERB "terminate"))

(define-category TERMINATE23001
  :mixins (STOP-55.4-1)
  :realization (:VERB "terminate"))

(define-category CEASE24200
  :mixins (STOP-55.4-1-1)
  :realization (:VERB "cease"))

(define-category CONCLUDE24202
  :mixins (STOP-55.4-1-1)
  :realization (:VERB "conclude"))

(define-category CONCLUDE23201
  :mixins (STOP-55.4-1-1)
  :realization (:VERB "conclude"))

(define-category CONCLUDE23101
  :mixins (STOP-55.4-1-1)
  :realization (:VERB "conclude"))

(define-category DISCONTINUE23000
  :mixins (STOP-55.4-1-1)
  :realization (:VERB "discontinue"))

(define-category DISCONTINUE24200
  :mixins (STOP-55.4-1-1)
  :realization (:VERB "discontinue"))

(define-category END23613
  :mixins (STOP-55.4-1-1)
  :realization (:VERB "end"))

(define-category END23001
  :mixins (STOP-55.4-1-1)
  :realization (:VERB "end"))

(define-category FINISH23003
  :mixins (STOP-55.4-1-1)
  :realization (:VERB "finish"))

(define-category FINISH23400
  :mixins (STOP-55.4-1-1)
  :realization (:VERB "finish"))

(define-category FINISH23002
  :mixins (STOP-55.4-1-1)
  :realization (:VERB "finish"))

(define-category STOP23300
  :mixins (STOP-55.4-1-1)
  :realization (:VERB "stop"))

(define-category STOP23005
  :mixins (STOP-55.4-1-1)
  :realization (:VERB "stop"))

(define-category STOP24200
  :mixins (STOP-55.4-1-1)
  :realization (:VERB "stop"))

(define-category STOP23800
  :mixins (STOP-55.4-1-1)
  :realization (:VERB "stop"))

(define-category QUIT24204
  :mixins (STOP-55.4-1-1)
  :realization (:VERB "quit"))

(define-category DISENFRANCHISE24100
  :mixins (SUBJUGATE-42.3)
  :realization (:VERB "disenfranchise"))

(define-category ENSLAVE24100
  :mixins (SUBJUGATE-42.3)
  :realization (:VERB "enslave"))

(define-category MOB23800
  :mixins (SUBJUGATE-42.3)
  :realization (:VERB "mob"))

(define-category NOURISH23400
  :mixins (SUBJUGATE-42.3)
  :realization (:VERB "nourish"))

(define-category SLAKE23000
  :mixins (SUBJUGATE-42.3)
  :realization (:VERB "slake"))

(define-category SLAKE23400
  :mixins (SUBJUGATE-42.3)
  :realization (:VERB "slake"))

(define-category WALK_OVER23300
  :mixins (SUBJUGATE-42.3)
  :realization (:VERB "walk_over"))

(define-category ANSWER24201
  :mixins (SUBORDINATE-95.2.1)
  :realization (:VERB "answer"))

(define-category REPORT23203
  :mixins (SUBORDINATE-95.2.1)
  :realization (:VERB "report"))

(define-category BEAD24200
  :mixins (SUBSTANCE_EMISSION-43.4-1)
  :realization (:VERB "bead"))

(define-category BELCH23000
  :mixins (SUBSTANCE_EMISSION-43.4-1)
  :realization (:VERB "belch"))

(define-category BELCH22900
  :mixins (SUBSTANCE_EMISSION-43.4-1)
  :realization (:VERB "belch"))

(define-category BUBBLE22900
  :mixins (SUBSTANCE_EMISSION-43.4-1)
  :realization (:VERB "bubble"))

(define-category BUBBLE23000
  :mixins (SUBSTANCE_EMISSION-43.4-1)
  :realization (:VERB "bubble"))

(define-category DRIBBLE22900
  :mixins (SUBSTANCE_EMISSION-43.4-1)
  :realization (:VERB "dribble"))

(define-category DRIBBLE23510
  :mixins (SUBSTANCE_EMISSION-43.4-1)
  :realization (:VERB "dribble"))

(define-category DRIP23510
  :mixins (SUBSTANCE_EMISSION-43.4-1)
  :realization (:VERB "drip"))

(define-category DRIP23800
  :mixins (SUBSTANCE_EMISSION-43.4-1)
  :realization (:VERB "drip"))

(define-category DROOL22900
  :mixins (SUBSTANCE_EMISSION-43.4-1)
  :realization (:VERB "drool"))

(define-category EMANATE22900
  :mixins (SUBSTANCE_EMISSION-43.4-1)
  :realization (:VERB "emanate"))

(define-category EMANATE23000
  :mixins (SUBSTANCE_EMISSION-43.4-1)
  :realization (:VERB "emanate"))

(define-category EXCRETE22900
  :mixins (SUBSTANCE_EMISSION-43.4-1)
  :realization (:VERB "excrete"))

(define-category EXUDE22900
  :mixins (SUBSTANCE_EMISSION-43.4-1)
  :realization (:VERB "exude"))

(define-category GUSH23500
  :mixins (SUBSTANCE_EMISSION-43.4-1)
  :realization (:VERB "gush"))

(define-category GUSH23800
  :mixins (SUBSTANCE_EMISSION-43.4-1)
  :realization (:VERB "gush"))

(define-category LEAK23004
  :mixins (SUBSTANCE_EMISSION-43.4-1)
  :realization (:VERB "leak"))

(define-category OOZE22900
  :mixins (SUBSTANCE_EMISSION-43.4-1)
  :realization (:VERB "ooze"))

(define-category OOZE23800
  :mixins (SUBSTANCE_EMISSION-43.4-1)
  :realization (:VERB "ooze"))

(define-category POUR23802
  :mixins (SUBSTANCE_EMISSION-43.4-1)
  :realization (:VERB "pour"))

(define-category POUR23804
  :mixins (SUBSTANCE_EMISSION-43.4-1)
  :realization (:VERB "pour"))

(define-category POUR23803
  :mixins (SUBSTANCE_EMISSION-43.4-1)
  :realization (:VERB "pour"))

(define-category PUFF23000
  :mixins (SUBSTANCE_EMISSION-43.4-1)
  :realization (:VERB "puff"))

(define-category RADIATE23002
  :mixins (SUBSTANCE_EMISSION-43.4-1)
  :realization (:VERB "radiate"))

(define-category RADIATE23900
  :mixins (SUBSTANCE_EMISSION-43.4-1)
  :realization (:VERB "radiate"))

(define-category RADIATE23000
  :mixins (SUBSTANCE_EMISSION-43.4-1)
  :realization (:VERB "radiate"))

(define-category RADIATE24300
  :mixins (SUBSTANCE_EMISSION-43.4-1)
  :realization (:VERB "radiate"))

(define-category SEEP23800
  :mixins (SUBSTANCE_EMISSION-43.4-1)
  :realization (:VERB "seep"))

(define-category SHED22900
  :mixins (SUBSTANCE_EMISSION-43.4-1)
  :realization (:VERB "shed"))

(define-category SHED23500
  :mixins (SUBSTANCE_EMISSION-43.4-1)
  :realization (:VERB "shed"))

(define-category SHED23502
  :mixins (SUBSTANCE_EMISSION-43.4-1)
  :realization (:VERB "shed"))

(define-category SLOP23501
  :mixins (SUBSTANCE_EMISSION-43.4-1)
  :realization (:VERB "slop"))

(define-category SLOP23500
  :mixins (SUBSTANCE_EMISSION-43.4-1)
  :realization (:VERB "slop"))

(define-category SPEW22900
  :mixins (SUBSTANCE_EMISSION-43.4-1)
  :realization (:VERB "spew"))

(define-category SPEW22902
  :mixins (SUBSTANCE_EMISSION-43.4-1)
  :realization (:VERB "spew"))

(define-category SPEW22901
  :mixins (SUBSTANCE_EMISSION-43.4-1)
  :realization (:VERB "spew"))

(define-category SPILL23501
  :mixins (SUBSTANCE_EMISSION-43.4-1)
  :realization (:VERB "spill"))

(define-category SPILL23500
  :mixins (SUBSTANCE_EMISSION-43.4-1)
  :realization (:VERB "spill"))

(define-category SPILL23800
  :mixins (SUBSTANCE_EMISSION-43.4-1)
  :realization (:VERB "spill"))

(define-category SPILL23504
  :mixins (SUBSTANCE_EMISSION-43.4-1)
  :realization (:VERB "spill"))

(define-category SPOUT23800
  :mixins (SUBSTANCE_EMISSION-43.4-1)
  :realization (:VERB "spout"))

(define-category SPROUT22901
  :mixins (SUBSTANCE_EMISSION-43.4-1)
  :realization (:VERB "sprout"))

(define-category SPROUT23000
  :mixins (SUBSTANCE_EMISSION-43.4-1)
  :realization (:VERB "sprout"))

(define-category SPURT23801
  :mixins (SUBSTANCE_EMISSION-43.4-1)
  :realization (:VERB "spurt"))

(define-category SQUIRT23500
  :mixins (SUBSTANCE_EMISSION-43.4-1)
  :realization (:VERB "squirt"))

(define-category STEAM24300
  :mixins (SUBSTANCE_EMISSION-43.4-1)
  :realization (:VERB "steam"))

(define-category STREAM22900
  :mixins (SUBSTANCE_EMISSION-43.4-1)
  :realization (:VERB "stream"))

(define-category SWEAT22900
  :mixins (SUBSTANCE_EMISSION-43.4-1)
  :realization (:VERB "sweat"))

(define-category BLEED23000
  :mixins (SUBSTANCE_EMISSION-43.4-1-1)
  :realization (:VERB "bleed"))

(define-category BLEED23800
  :mixins (SUBSTANCE_EMISSION-43.4-1-1)
  :realization (:VERB "bleed"))

(define-category BLEED22901
  :mixins (SUBSTANCE_EMISSION-43.4-1-1)
  :realization (:VERB "bleed"))

(define-category BLEED22900
  :mixins (SUBSTANCE_EMISSION-43.4-1-1)
  :realization (:VERB "bleed"))

(define-category SUBSTITUTE24000
  :mixins (SUBSTITUTE-13.6.2)
  :realization (:VERB "substitute"))

(define-category SWAP24000
  :mixins (SUBSTITUTE-13.6.2)
  :realization (:VERB "swap"))

(define-category SWITCH23000
  :mixins (SUBSTITUTE-13.6.2)
  :realization (:VERB "switch"))

(define-category SWITCH23001
  :mixins (SUBSTITUTE-13.6.2)
  :realization (:VERB "switch"))

(define-category SWITCH24000
  :mixins (SUBSTITUTE-13.6.2)
  :realization (:VERB "switch"))

(define-category SWITCH23003
  :mixins (SUBSTITUTE-13.6.2)
  :realization (:VERB "switch"))

(define-category REPLACE23000
  :mixins (SUBSTITUTE-13.6.2-1)
  :realization (:VERB "replace"))

(define-category SUPPLANT24100
  :mixins (SUBSTITUTE-13.6.2-1)
  :realization (:VERB "supplant"))

(define-category SUCCEED24100
  :mixins (SUCCEED-74-1)
  :realization (:VERB "succeed"))

(define-category EXCEL24200
  :mixins (SUCCEED-74-1)
  :realization (:VERB "excel"))

(define-category MANAGE24108
  :mixins (SUCCEED-74-1-1)
  :realization (:VERB "manage"))

(define-category MANAGE24109
  :mixins (SUCCEED-74-1-1)
  :realization (:VERB "manage"))

(define-category WIN24104
  :mixins (SUCCEED-74-2)
  :realization (:VERB "win"))

(define-category WIN23301
  :mixins (SUCCEED-74-2)
  :realization (:VERB "win"))

(define-category WIN23300
  :mixins (SUCCEED-74-2)
  :realization (:VERB "win"))

(define-category FALL24102
  :mixins (SUCCEED-74-3)
  :realization (:VERB "fall"))

(define-category FALL_OFF23000
  :mixins (SUCCEED-74-3)
  :realization (:VERB "fall_off"))

(define-category FALL_BY_THE_WAYSIDE23300
  :mixins (SUCCEED-74-3)
  :realization (:VERB "fall_by_the_wayside"))

(define-category LOSE23300
  :mixins (SUCCEED-74-3-1)
  :realization (:VERB "lose"))

(define-category FLUB24100
  :mixins (SUCCEED-74-3-1)
  :realization (:VERB "flub"))

(define-category FAIL24100
  :mixins (SUCCEED-74-3-1-1)
  :realization (:VERB "fail"))

(define-category ASPHYXIATE23501
  :mixins (SUFFOCATE-40.7)
  :realization (:VERB "asphyxiate"))

(define-category ASPHYXIATE23500
  :mixins (SUFFOCATE-40.7)
  :realization (:VERB "asphyxiate"))

(define-category CHOKE22901
  :mixins (SUFFOCATE-40.7)
  :realization (:VERB "choke"))

(define-category CHOKE23503
  :mixins (SUFFOCATE-40.7)
  :realization (:VERB "choke"))

(define-category CHOKE22903
  :mixins (SUFFOCATE-40.7)
  :realization (:VERB "choke"))

(define-category CHOKE22904
  :mixins (SUFFOCATE-40.7)
  :realization (:VERB "choke"))

(define-category CHOKE23502
  :mixins (SUFFOCATE-40.7)
  :realization (:VERB "choke"))

(define-category CHOKE23500
  :mixins (SUFFOCATE-40.7)
  :realization (:VERB "choke"))

(define-category CHOKE22900
  :mixins (SUFFOCATE-40.7)
  :realization (:VERB "choke"))

(define-category STIFLE23500
  :mixins (SUFFOCATE-40.7)
  :realization (:VERB "stifle"))

(define-category SUFFOCATE22901
  :mixins (SUFFOCATE-40.7)
  :realization (:VERB "suffocate"))

(define-category SUFFOCATE23002
  :mixins (SUFFOCATE-40.7)
  :realization (:VERB "suffocate"))

(define-category SUFFOCATE23501
  :mixins (SUFFOCATE-40.7)
  :realization (:VERB "suffocate"))

(define-category SUFFOCATE23500
  :mixins (SUFFOCATE-40.7)
  :realization (:VERB "suffocate"))

(define-category DIRECT23200
  :mixins (SUPERVISION-95.2.2)
  :realization (:VERB "direct"))

(define-category MANAGE24101
  :mixins (SUPERVISION-95.2.2)
  :realization (:VERB "manage"))

(define-category MANAGE24100
  :mixins (SUPERVISION-95.2.2)
  :realization (:VERB "manage"))

(define-category SUPERINTEND24100
  :mixins (SUPERVISION-95.2.2)
  :realization (:VERB "superintend"))

(define-category SUPERVISE23900
  :mixins (SUPERVISION-95.2.2)
  :realization (:VERB "supervise"))

(define-category SUPERVISE24100
  :mixins (SUPERVISION-95.2.2)
  :realization (:VERB "supervise"))

(define-category SUSPECT23202
  :mixins (SUSPECT-81)
  :realization (:VERB "suspect"))

(define-category ACCUSE23200
  :mixins (SUSPECT-81)
  :realization (:VERB "accuse"))

(define-category CONDEMN23201
  :mixins (SUSPECT-81)
  :realization (:VERB "condemn"))

(define-category CONDEMN24100
  :mixins (SUSPECT-81)
  :realization (:VERB "condemn"))

(define-category MAINTAIN23400
  :mixins (SUSTAIN-55.6)
  :realization (:VERB "maintain"))

(define-category SUSTAIN23400
  :mixins (SUSTAIN-55.6)
  :realization (:VERB "sustain"))

(define-category PROLONG24200
  :mixins (SUSTAIN-55.6)
  :realization (:VERB "prolong"))

(define-category PROTRACT23000
  :mixins (SUSTAIN-55.6)
  :realization (:VERB "protract"))

(define-category KEEP_UP24200
  :mixins (SUSTAIN-55.6)
  :realization (:VERB "keep_up"))

(define-category CONTINUE23200
  :mixins (SUSTAIN-55.6)
  :realization (:VERB "continue"))

(define-category CARRY_ON23200
  :mixins (SUSTAIN-55.6)
  :realization (:VERB "carry_on"))

(define-category KEEP23400
  :mixins (SUSTAIN-55.6-1)
  :realization (:VERB "keep"))

(define-category BUSTLE23800
  :mixins (SWARM-47.5.1-1)
  :realization (:VERB "bustle"))

(define-category CRAWL24200
  :mixins (SWARM-47.5.1-1)
  :realization (:VERB "crawl"))

(define-category CRAWL23800
  :mixins (SWARM-47.5.1-1)
  :realization (:VERB "crawl"))

(define-category CREEP23800
  :mixins (SWARM-47.5.1-1)
  :realization (:VERB "creep"))

(define-category HOP23804
  :mixins (SWARM-47.5.1-1)
  :realization (:VERB "hop"))

(define-category SWARM23800
  :mixins (SWARM-47.5.1-1)
  :realization (:VERB "swarm"))

(define-category SWARM24200
  :mixins (SWARM-47.5.1-1)
  :realization (:VERB "swarm"))

(define-category SWIM23800
  :mixins (SWARM-47.5.1-1)
  :realization (:VERB "swim"))

(define-category TEEM24200
  :mixins (SWARM-47.5.1-1)
  :realization (:VERB "teem"))

(define-category PULLULATE24200
  :mixins (SWARM-47.5.1-1)
  :realization (:VERB "pullulate"))

(define-category THRONG23800
  :mixins (SWARM-47.5.1-2)
  :realization (:VERB "throng"))

(define-category ABOUND24201
  :mixins (SWARM-47.5.1-2-1)
  :realization (:VERB "abound"))

(define-category ABOUND24200
  :mixins (SWARM-47.5.1-2-1)
  :realization (:VERB "abound"))

(define-category BITE23501
  :mixins (SWAT-18.2)
  :realization (:VERB "bite"))

(define-category BITE23500
  :mixins (SWAT-18.2)
  :realization (:VERB "bite"))

(define-category CHOP23501
  :mixins (SWAT-18.2)
  :realization (:VERB "chop"))

(define-category CLAW23500
  :mixins (SWAT-18.2)
  :realization (:VERB "claw"))

(define-category CLAW23501
  :mixins (SWAT-18.2)
  :realization (:VERB "claw"))

(define-category KICK23500
  :mixins (SWAT-18.2)
  :realization (:VERB "kick"))

(define-category KICK23800
  :mixins (SWAT-18.2)
  :realization (:VERB "kick"))

(define-category KICK23501
  :mixins (SWAT-18.2)
  :realization (:VERB "kick"))

(define-category PAW23501
  :mixins (SWAT-18.2)
  :realization (:VERB "paw"))

(define-category PECK23500
  :mixins (SWAT-18.2)
  :realization (:VERB "peck"))

(define-category PECK23501
  :mixins (SWAT-18.2)
  :realization (:VERB "peck"))

(define-category PUNCH23500
  :mixins (SWAT-18.2)
  :realization (:VERB "punch"))

(define-category SCRATCH23900
  :mixins (SWAT-18.2)
  :realization (:VERB "scratch"))

(define-category SCRATCH23500
  :mixins (SWAT-18.2)
  :realization (:VERB "scratch"))

(define-category SLICE23500
  :mixins (SWAT-18.2)
  :realization (:VERB "slice"))

(define-category SLICE23501
  :mixins (SWAT-18.2)
  :realization (:VERB "slice"))

(define-category SLUG23500
  :mixins (SWAT-18.2)
  :realization (:VERB "slug"))

(define-category STAB23501
  :mixins (SWAT-18.2)
  :realization (:VERB "stab"))

(define-category STAB23500
  :mixins (SWAT-18.2)
  :realization (:VERB "stab"))

(define-category STAB23502
  :mixins (SWAT-18.2)
  :realization (:VERB "stab"))

(define-category SWAT23500
  :mixins (SWAT-18.2)
  :realization (:VERB "swat"))

(define-category SWIPE23500
  :mixins (SWAT-18.2)
  :realization (:VERB "swipe"))

(define-category SPEAK23201
  :mixins (TALK-37.5)
  :realization (:VERB "speak"))

(define-category SPEAK23200
  :mixins (TALK-37.5)
  :realization (:VERB "speak"))

(define-category TALK23200
  :mixins (TALK-37.5)
  :realization (:VERB "talk"))

(define-category TALK23201
  :mixins (TALK-37.5)
  :realization (:VERB "talk"))

(define-category AFFIX23502
  :mixins (TAPE-22.4)
  :realization (:VERB "affix"))

(define-category AFFIX23501
  :mixins (TAPE-22.4)
  :realization (:VERB "affix"))

(define-category AFFIX23500
  :mixins (TAPE-22.4)
  :realization (:VERB "affix"))

(define-category ANCHOR23501
  :mixins (TAPE-22.4)
  :realization (:VERB "anchor"))

(define-category BAND23500
  :mixins (TAPE-22.4)
  :realization (:VERB "band"))

(define-category BELT23501
  :mixins (TAPE-22.4)
  :realization (:VERB "belt"))

(define-category BOND23500
  :mixins (TAPE-22.4)
  :realization (:VERB "bond"))

(define-category BOLT23500
  :mixins (TAPE-22.4)
  :realization (:VERB "bolt"))

(define-category BRACKET23500
  :mixins (TAPE-22.4)
  :realization (:VERB "bracket"))

(define-category BUCKLE23500
  :mixins (TAPE-22.4)
  :realization (:VERB "buckle"))

(define-category BUTTON23500
  :mixins (TAPE-22.4)
  :realization (:VERB "button"))

(define-category CABLE23500
  :mixins (TAPE-22.4)
  :realization (:VERB "cable"))

(define-category CEMENT23500
  :mixins (TAPE-22.4)
  :realization (:VERB "cement"))

(define-category CHAIN23500
  :mixins (TAPE-22.4)
  :realization (:VERB "chain"))

(define-category CINCH23500
  :mixins (TAPE-22.4)
  :realization (:VERB "cinch"))

(define-category CONNECT23500
  :mixins (TAPE-22.4)
  :realization (:VERB "connect"))

(define-category EPOXY23500
  :mixins (TAPE-22.4)
  :realization (:VERB "epoxy"))

(define-category FASTEN23501
  :mixins (TAPE-22.4)
  :realization (:VERB "fasten"))

(define-category FASTEN23500
  :mixins (TAPE-22.4)
  :realization (:VERB "fasten"))

(define-category FETTER23500
  :mixins (TAPE-22.4)
  :realization (:VERB "fetter"))

(define-category GLUE23500
  :mixins (TAPE-22.4)
  :realization (:VERB "glue"))

(define-category GUM23500
  :mixins (TAPE-22.4)
  :realization (:VERB "gum"))

(define-category HANDCUFF23500
  :mixins (TAPE-22.4)
  :realization (:VERB "handcuff"))

(define-category HARNESS23500
  :mixins (TAPE-22.4)
  :realization (:VERB "harness"))

(define-category HINGE23500
  :mixins (TAPE-22.4)
  :realization (:VERB "hinge"))

(define-category HOOK23500
  :mixins (TAPE-22.4)
  :realization (:VERB "hook"))

(define-category KNOT23500
  :mixins (TAPE-22.4)
  :realization (:VERB "knot"))

(define-category LACE23501
  :mixins (TAPE-22.4)
  :realization (:VERB "lace"))

(define-category LASH23502
  :mixins (TAPE-22.4)
  :realization (:VERB "lash"))

(define-category LASSO23500
  :mixins (TAPE-22.4)
  :realization (:VERB "lasso"))

(define-category LATCH23500
  :mixins (TAPE-22.4)
  :realization (:VERB "latch"))

(define-category LEASH23500
  :mixins (TAPE-22.4)
  :realization (:VERB "leash"))

(define-category LINK23502
  :mixins (TAPE-22.4)
  :realization (:VERB "link"))

(define-category LINK23500
  :mixins (TAPE-22.4)
  :realization (:VERB "link"))

(define-category LOCK23500
  :mixins (TAPE-22.4)
  :realization (:VERB "lock"))

(define-category LOOP23501
  :mixins (TAPE-22.4)
  :realization (:VERB "loop"))

(define-category MANACLE23500
  :mixins (TAPE-22.4)
  :realization (:VERB "manacle"))

(define-category MOOR23500
  :mixins (TAPE-22.4)
  :realization (:VERB "moor"))

(define-category MOOR23501
  :mixins (TAPE-22.4)
  :realization (:VERB "moor"))

(define-category MUZZLE23900
  :mixins (TAPE-22.4)
  :realization (:VERB "muzzle"))

(define-category MUZZLE24000
  :mixins (TAPE-22.4)
  :realization (:VERB "muzzle"))

(define-category NAIL23500
  :mixins (TAPE-22.4)
  :realization (:VERB "nail"))

(define-category PADLOCK23500
  :mixins (TAPE-22.4)
  :realization (:VERB "padlock"))

(define-category PASTE23500
  :mixins (TAPE-22.4)
  :realization (:VERB "paste"))

(define-category PEG23500
  :mixins (TAPE-22.4)
  :realization (:VERB "peg"))

(define-category PIN23501
  :mixins (TAPE-22.4)
  :realization (:VERB "pin"))

(define-category PLASTER23510
  :mixins (TAPE-22.4)
  :realization (:VERB "plaster"))

(define-category RIVET23500
  :mixins (TAPE-22.4)
  :realization (:VERB "rivet"))

(define-category ROPE23500
  :mixins (TAPE-22.4)
  :realization (:VERB "rope"))

(define-category SCREW23501
  :mixins (TAPE-22.4)
  :realization (:VERB "screw"))

(define-category SEAL23500
  :mixins (TAPE-22.4)
  :realization (:VERB "seal"))

(define-category SHACKLE23500
  :mixins (TAPE-22.4)
  :realization (:VERB "shackle"))

(define-category SHACKLE23501
  :mixins (TAPE-22.4)
  :realization (:VERB "shackle"))

(define-category SKEWER23500
  :mixins (TAPE-22.4)
  :realization (:VERB "skewer"))

(define-category SOLDER23500
  :mixins (TAPE-22.4)
  :realization (:VERB "solder"))

(define-category STAPLE23500
  :mixins (TAPE-22.4)
  :realization (:VERB "staple"))

(define-category STITCH23500
  :mixins (TAPE-22.4)
  :realization (:VERB "stitch"))

(define-category STRAP23500
  :mixins (TAPE-22.4)
  :realization (:VERB "strap"))

(define-category STRING23504
  :mixins (TAPE-22.4)
  :realization (:VERB "string"))

(define-category SUTURE23500
  :mixins (TAPE-22.4)
  :realization (:VERB "suture"))

(define-category TACK23500
  :mixins (TAPE-22.4)
  :realization (:VERB "tack"))

(define-category TAPE23500
  :mixins (TAPE-22.4)
  :realization (:VERB "tape"))

(define-category TETHER23500
  :mixins (TAPE-22.4)
  :realization (:VERB "tether"))

(define-category THUMBTACK23500
  :mixins (TAPE-22.4)
  :realization (:VERB "thumbtack"))

(define-category TIE23501
  :mixins (TAPE-22.4)
  :realization (:VERB "tie"))

(define-category TIE23500
  :mixins (TAPE-22.4)
  :realization (:VERB "tie"))

(define-category TRUSS23502
  :mixins (TAPE-22.4)
  :realization (:VERB "truss"))

(define-category WELD23500
  :mixins (TAPE-22.4)
  :realization (:VERB "weld"))

(define-category WIRE23500
  :mixins (TAPE-22.4)
  :realization (:VERB "wire"))

(define-category YOKE23500
  :mixins (TAPE-22.4)
  :realization (:VERB "yoke"))

(define-category YOKE23501
  :mixins (TAPE-22.4)
  :realization (:VERB "yoke"))

(define-category ZIP23500
  :mixins (TAPE-22.4)
  :realization (:VERB "zip"))

(define-category CLAMP23500
  :mixins (TAPE-22.4-1)
  :realization (:VERB "clamp"))

(define-category CLIP23501
  :mixins (TAPE-22.4-1)
  :realization (:VERB "clip"))

(define-category CLASP23502
  :mixins (TAPE-22.4-1)
  :realization (:VERB "clasp"))

(define-category CLASP23503
  :mixins (TAPE-22.4-1)
  :realization (:VERB "clasp"))

(define-category PASTE23501
  :mixins (TAPE-22.4-1)
  :realization (:VERB "paste"))

(define-category REEVE23500
  :mixins (TAPE-22.4-1)
  :realization (:VERB "reeve"))

(define-category REEVE23800
  :mixins (TAPE-22.4-1)
  :realization (:VERB "reeve"))

(define-category REEVE23801
  :mixins (TAPE-22.4-1)
  :realization (:VERB "reeve"))

(define-category BEGIN24200
  :mixins (TERMINUS-47.9)
  :realization (:VERB "begin"))

(define-category END24200
  :mixins (TERMINUS-47.9)
  :realization (:VERB "end"))

(define-category LEAD24203
  :mixins (TERMINUS-47.9)
  :realization (:VERB "lead"))

(define-category LEAD24200
  :mixins (TERMINUS-47.9)
  :realization (:VERB "lead"))

(define-category START24200
  :mixins (TERMINUS-47.9)
  :realization (:VERB "start"))

(define-category STOP24213
  :mixins (TERMINUS-47.9)
  :realization (:VERB "stop"))

(define-category TERMINATE24200
  :mixins (TERMINUS-47.9)
  :realization (:VERB "terminate"))

(define-category CAST23500
  :mixins (THROW-17.1)
  :realization (:VERB "cast"))

(define-category CAST23602
  :mixins (THROW-17.1)
  :realization (:VERB "cast"))

(define-category DISCARD24000
  :mixins (THROW-17.1)
  :realization (:VERB "discard"))

(define-category DRIVE23501
  :mixins (THROW-17.1)
  :realization (:VERB "drive"))

(define-category BASH23500
  :mixins (THROW-17.1-1)
  :realization (:VERB "bash"))

(define-category BAT23501
  :mixins (THROW-17.1-1)
  :realization (:VERB "bat"))

(define-category BUNT23501
  :mixins (THROW-17.1-1)
  :realization (:VERB "bunt"))

(define-category CHUCK23500
  :mixins (THROW-17.1-1)
  :realization (:VERB "chuck"))

(define-category FIRE23300
  :mixins (THROW-17.1-1)
  :realization (:VERB "fire"))

(define-category FIRE23301
  :mixins (THROW-17.1-1)
  :realization (:VERB "fire"))

(define-category FLICK23503
  :mixins (THROW-17.1-1)
  :realization (:VERB "flick"))

(define-category FLING23500
  :mixins (THROW-17.1-1)
  :realization (:VERB "fling"))

(define-category FLIP23503
  :mixins (THROW-17.1-1)
  :realization (:VERB "flip"))

(define-category FLIP23505
  :mixins (THROW-17.1-1)
  :realization (:VERB "flip"))

(define-category FLIP23802
  :mixins (THROW-17.1-1)
  :realization (:VERB "flip"))

(define-category FLIP23800
  :mixins (THROW-17.1-1)
  :realization (:VERB "flip"))

(define-category HIT23503
  :mixins (THROW-17.1-1)
  :realization (:VERB "hit"))

(define-category HURL23500
  :mixins (THROW-17.1-1)
  :realization (:VERB "hurl"))

(define-category KNOCK23504
  :mixins (THROW-17.1-1)
  :realization (:VERB "knock"))

(define-category LOB23500
  :mixins (THROW-17.1-1)
  :realization (:VERB "lob"))

(define-category LOFT23501
  :mixins (THROW-17.1-1)
  :realization (:VERB "loft"))

(define-category NUDGE23500
  :mixins (THROW-17.1-1)
  :realization (:VERB "nudge"))

(define-category PASS24001
  :mixins (THROW-17.1-1)
  :realization (:VERB "pass"))

(define-category PITCH23513
  :mixins (THROW-17.1-1)
  :realization (:VERB "pitch"))

(define-category PITCH23500
  :mixins (THROW-17.1-1)
  :realization (:VERB "pitch"))

(define-category PUNT23501
  :mixins (THROW-17.1-1)
  :realization (:VERB "punt"))

(define-category SHOOT23501
  :mixins (THROW-17.1-1)
  :realization (:VERB "shoot"))

(define-category SHOVE23801
  :mixins (THROW-17.1-1)
  :realization (:VERB "shove"))

(define-category SLAM23502
  :mixins (THROW-17.1-1)
  :realization (:VERB "slam"))

(define-category SLING23500
  :mixins (THROW-17.1-1)
  :realization (:VERB "sling"))

(define-category SMASH23500
  :mixins (THROW-17.1-1)
  :realization (:VERB "smash"))

(define-category BOOT23500
  :mixins (THROW-17.1-1)
  :realization (:VERB "boot"))

(define-category CATAPULT23501
  :mixins (THROW-17.1-1-1)
  :realization (:VERB "catapult"))

(define-category CATAPULT23500
  :mixins (THROW-17.1-1-1)
  :realization (:VERB "catapult"))

(define-category KICK23501
  :mixins (THROW-17.1-1-1)
  :realization (:VERB "kick"))

(define-category LAUNCH23504
  :mixins (THROW-17.1-1-1)
  :realization (:VERB "launch"))

(define-category LAUNCH23500
  :mixins (THROW-17.1-1-1)
  :realization (:VERB "launch"))

(define-category THROW23803
  :mixins (THROW-17.1-1-1)
  :realization (:VERB "throw"))

(define-category THROW23502
  :mixins (THROW-17.1-1-1)
  :realization (:VERB "throw"))

(define-category THROW23800
  :mixins (THROW-17.1-1-1)
  :realization (:VERB "throw"))

(define-category THROW23500
  :mixins (THROW-17.1-1-1)
  :realization (:VERB "throw"))

(define-category TOSS23505
  :mixins (THROW-17.1-1-1)
  :realization (:VERB "toss"))

(define-category TOSS23800
  :mixins (THROW-17.1-1-1)
  :realization (:VERB "toss"))

(define-category TOSS23504
  :mixins (THROW-17.1-1-1)
  :realization (:VERB "toss"))

(define-category ACHE23900
  :mixins (TINGLE-40.8.2)
  :realization (:VERB "ache"))

(define-category BURN23904
  :mixins (TINGLE-40.8.2)
  :realization (:VERB "burn"))

(define-category HUM23201
  :mixins (TINGLE-40.8.2)
  :realization (:VERB "hum"))

(define-category PALPITATE23800
  :mixins (TINGLE-40.8.2)
  :realization (:VERB "palpitate"))

(define-category PALPITATE23801
  :mixins (TINGLE-40.8.2)
  :realization (:VERB "palpitate"))

(define-category PALPITATE23802
  :mixins (TINGLE-40.8.2)
  :realization (:VERB "palpitate"))

(define-category POUND23800
  :mixins (TINGLE-40.8.2)
  :realization (:VERB "pound"))

(define-category PRICKLE23900
  :mixins (TINGLE-40.8.2)
  :realization (:VERB "prickle"))

(define-category PRICKLE23901
  :mixins (TINGLE-40.8.2)
  :realization (:VERB "prickle"))

(define-category PUCKER23502
  :mixins (TINGLE-40.8.2)
  :realization (:VERB "pucker"))

(define-category PUCKER23500
  :mixins (TINGLE-40.8.2)
  :realization (:VERB "pucker"))

(define-category REEL23803
  :mixins (TINGLE-40.8.2)
  :realization (:VERB "reel"))

(define-category SMART23900
  :mixins (TINGLE-40.8.2)
  :realization (:VERB "smart"))

(define-category SPIN23801
  :mixins (TINGLE-40.8.2)
  :realization (:VERB "spin"))

(define-category SPLIT23001
  :mixins (TINGLE-40.8.2)
  :realization (:VERB "split"))

(define-category SWIM24202
  :mixins (TINGLE-40.8.2)
  :realization (:VERB "swim"))

(define-category THROB23900
  :mixins (TINGLE-40.8.2)
  :realization (:VERB "throb"))

(define-category TWINGE23901
  :mixins (TINGLE-40.8.2)
  :realization (:VERB "twinge"))

(define-category TWINGE23900
  :mixins (TINGLE-40.8.2)
  :realization (:VERB "twinge"))

(define-category CARESS23500
  :mixins (TOUCH-20-1)
  :realization (:VERB "caress"))

(define-category FONDLE23500
  :mixins (TOUCH-20-1)
  :realization (:VERB "fondle"))

(define-category GRASP23500
  :mixins (TOUCH-20-1)
  :realization (:VERB "grasp"))

(define-category GRAZE23500
  :mixins (TOUCH-20-1)
  :realization (:VERB "graze"))

(define-category GRAZE23502
  :mixins (TOUCH-20-1)
  :realization (:VERB "graze"))

(define-category GRIP23700
  :mixins (TOUCH-20-1)
  :realization (:VERB "grip"))

(define-category GRIP23503
  :mixins (TOUCH-20-1)
  :realization (:VERB "grip"))

(define-category GRIP23500
  :mixins (TOUCH-20-1)
  :realization (:VERB "grip"))

(define-category GROPE23502
  :mixins (TOUCH-20-1)
  :realization (:VERB "grope"))

(define-category GROPE23501
  :mixins (TOUCH-20-1)
  :realization (:VERB "grope"))

(define-category KISS23501
  :mixins (TOUCH-20-1)
  :realization (:VERB "kiss"))

(define-category KISS23500
  :mixins (TOUCH-20-1)
  :realization (:VERB "kiss"))

(define-category KNEAD23501
  :mixins (TOUCH-20-1)
  :realization (:VERB "knead"))

(define-category KNEAD23500
  :mixins (TOUCH-20-1)
  :realization (:VERB "knead"))

(define-category LICK23500
  :mixins (TOUCH-20-1)
  :realization (:VERB "lick"))

(define-category MASSAGE22900
  :mixins (TOUCH-20-1)
  :realization (:VERB "massage"))

(define-category MASSAGE23500
  :mixins (TOUCH-20-1)
  :realization (:VERB "massage"))

(define-category NUDGE23500
  :mixins (TOUCH-20-1)
  :realization (:VERB "nudge"))

(define-category OSCULATE23500
  :mixins (TOUCH-20-1)
  :realization (:VERB "osculate"))

(define-category PAT23500
  :mixins (TOUCH-20-1)
  :realization (:VERB "pat"))

(define-category PAT23501
  :mixins (TOUCH-20-1)
  :realization (:VERB "pat"))

(define-category PAW23500
  :mixins (TOUCH-20-1)
  :realization (:VERB "paw"))

(define-category PAW23501
  :mixins (TOUCH-20-1)
  :realization (:VERB "paw"))

(define-category PECK23500
  :mixins (TOUCH-20-1)
  :realization (:VERB "peck"))

(define-category PET23500
  :mixins (TOUCH-20-1)
  :realization (:VERB "pet"))

(define-category PINCH23500
  :mixins (TOUCH-20-1)
  :realization (:VERB "pinch"))

(define-category PROD23501
  :mixins (TOUCH-20-1)
  :realization (:VERB "prod"))

(define-category PROD23502
  :mixins (TOUCH-20-1)
  :realization (:VERB "prod"))

(define-category RUB23900
  :mixins (TOUCH-20-1)
  :realization (:VERB "rub"))

(define-category RUB23501
  :mixins (TOUCH-20-1)
  :realization (:VERB "rub"))

(define-category RUB23500
  :mixins (TOUCH-20-1)
  :realization (:VERB "rub"))

(define-category SQUEEZE23504
  :mixins (TOUCH-20-1)
  :realization (:VERB "squeeze"))

(define-category SQUEEZE23502
  :mixins (TOUCH-20-1)
  :realization (:VERB "squeeze"))

(define-category SQUEEZE23500
  :mixins (TOUCH-20-1)
  :realization (:VERB "squeeze"))

(define-category SQUEEZE23505
  :mixins (TOUCH-20-1)
  :realization (:VERB "squeeze"))

(define-category STING23900
  :mixins (TOUCH-20-1)
  :realization (:VERB "sting"))

(define-category STING23501
  :mixins (TOUCH-20-1)
  :realization (:VERB "sting"))

(define-category STROKE23500
  :mixins (TOUCH-20-1)
  :realization (:VERB "stroke"))

(define-category TICKLE23500
  :mixins (TOUCH-20-1)
  :realization (:VERB "tickle"))

(define-category TICKLE23900
  :mixins (TOUCH-20-1)
  :realization (:VERB "tickle"))

(define-category TOUCH23500
  :mixins (TOUCH-20-1)
  :realization (:VERB "touch"))

(define-category TUG23501
  :mixins (TOUCH-20-1)
  :realization (:VERB "tug"))

(define-category TUG23502
  :mixins (TOUCH-20-1)
  :realization (:VERB "tug"))

(define-category TUG23500
  :mixins (TOUCH-20-1)
  :realization (:VERB "tug"))

(define-category TWEAK23501
  :mixins (TOUCH-20-1)
  :realization (:VERB "tweak"))

(define-category TWINGE23500
  :mixins (TOUCH-20-1)
  :realization (:VERB "twinge"))

(define-category WRING23500
  :mixins (TOUCH-20-1)
  :realization (:VERB "wring"))

(define-category CHAFE23000
  :mixins (TOUCH-20-1)
  :realization (:VERB "chafe"))

(define-category CHART23604
  :mixins (TRANSCRIBE-25.4)
  :realization (:VERB "chart"))

(define-category CHART23113
  :mixins (TRANSCRIBE-25.4)
  :realization (:VERB "chart"))

(define-category CHRONICLE23200
  :mixins (TRANSCRIBE-25.4)
  :realization (:VERB "chronicle"))

(define-category COPY23601
  :mixins (TRANSCRIBE-25.4)
  :realization (:VERB "copy"))

(define-category COPY23605
  :mixins (TRANSCRIBE-25.4)
  :realization (:VERB "copy"))

(define-category DOCUMENT23200
  :mixins (TRANSCRIBE-25.4)
  :realization (:VERB "document"))

(define-category DUPLICATE23601
  :mixins (TRANSCRIBE-25.4)
  :realization (:VERB "duplicate"))

(define-category FILM23600
  :mixins (TRANSCRIBE-25.4)
  :realization (:VERB "film"))

(define-category FILM23200
  :mixins (TRANSCRIBE-25.4)
  :realization (:VERB "film"))

(define-category FORGE23601
  :mixins (TRANSCRIBE-25.4)
  :realization (:VERB "forge"))

(define-category MICROFILM23600
  :mixins (TRANSCRIBE-25.4)
  :realization (:VERB "microfilm"))

(define-category PHOTOCOPY23600
  :mixins (TRANSCRIBE-25.4)
  :realization (:VERB "photocopy"))

(define-category PHOTOGRAPH23200
  :mixins (TRANSCRIBE-25.4)
  :realization (:VERB "photograph"))

(define-category RECORD23201
  :mixins (TRANSCRIBE-25.4)
  :realization (:VERB "record"))

(define-category TAPE23200
  :mixins (TRANSCRIBE-25.4)
  :realization (:VERB "tape"))

(define-category TAPE23203
  :mixins (TRANSCRIBE-25.4)
  :realization (:VERB "tape"))

(define-category TELEVISE23200
  :mixins (TRANSCRIBE-25.4)
  :realization (:VERB "televise"))

(define-category TRANSCRIBE23202
  :mixins (TRANSCRIBE-25.4)
  :realization (:VERB "transcribe"))

(define-category TRANSCRIBE23600
  :mixins (TRANSCRIBE-25.4)
  :realization (:VERB "transcribe"))

(define-category TRANSCRIBE23200
  :mixins (TRANSCRIBE-25.4)
  :realization (:VERB "transcribe"))

(define-category TRANSCRIBE23201
  :mixins (TRANSCRIBE-25.4)
  :realization (:VERB "transcribe"))

(define-category TYPE23200
  :mixins (TRANSCRIBE-25.4)
  :realization (:VERB "type"))

(define-category VIDEOTAPE23200
  :mixins (TRANSCRIBE-25.4)
  :realization (:VERB "videotape"))

(define-category WRITE_UP23600
  :mixins (TRANSCRIBE-25.4)
  :realization (:VERB "write_up"))

(define-category WRITE_OUT23600
  :mixins (TRANSCRIBE-25.4)
  :realization (:VERB "write_out"))

(define-category DEMONSTRATE23901
  :mixins (TRANSFER_MESG-37.1.1)
  :realization (:VERB "demonstrate"))

(define-category ELUCIDATE23100
  :mixins (TRANSFER_MESG-37.1.1)
  :realization (:VERB "elucidate"))

(define-category ELUCIDATE23200
  :mixins (TRANSFER_MESG-37.1.1)
  :realization (:VERB "elucidate"))

(define-category EXPLAIN23201
  :mixins (TRANSFER_MESG-37.1.1)
  :realization (:VERB "explain"))

(define-category EXPLAIN23200
  :mixins (TRANSFER_MESG-37.1.1)
  :realization (:VERB "explain"))

(define-category EXPLICATE23200
  :mixins (TRANSFER_MESG-37.1.1)
  :realization (:VERB "explicate"))

(define-category EXPOUND23200
  :mixins (TRANSFER_MESG-37.1.1)
  :realization (:VERB "expound"))

(define-category JUSTIFY23202
  :mixins (TRANSFER_MESG-37.1.1)
  :realization (:VERB "justify"))

(define-category NARRATE23200
  :mixins (TRANSFER_MESG-37.1.1)
  :realization (:VERB "narrate"))

(define-category POSE24200
  :mixins (TRANSFER_MESG-37.1.1)
  :realization (:VERB "pose"))

(define-category PREACH23202
  :mixins (TRANSFER_MESG-37.1.1)
  :realization (:VERB "preach"))

(define-category RECAP23200
  :mixins (TRANSFER_MESG-37.1.1)
  :realization (:VERB "recap"))

(define-category RECITE23201
  :mixins (TRANSFER_MESG-37.1.1)
  :realization (:VERB "recite"))

(define-category RECITE23600
  :mixins (TRANSFER_MESG-37.1.1)
  :realization (:VERB "recite"))

(define-category RECITE23200
  :mixins (TRANSFER_MESG-37.1.1)
  :realization (:VERB "recite"))

(define-category RELAY23200
  :mixins (TRANSFER_MESG-37.1.1)
  :realization (:VERB "relay"))

(define-category ILLUSTRATE23200
  :mixins (TRANSFER_MESG-37.1.1)
  :realization (:VERB "illustrate"))

(define-category VERIFY23203
  :mixins (TRANSFER_MESG-37.1.1)
  :realization (:VERB "verify"))

(define-category VERIFY23101
  :mixins (TRANSFER_MESG-37.1.1)
  :realization (:VERB "verify"))

(define-category CORROBORATE23200
  :mixins (TRANSFER_MESG-37.1.1)
  :realization (:VERB "corroborate"))

(define-category COMMUNICATE23200
  :mixins (TRANSFER_MESG-37.1.1)
  :realization (:VERB "communicate"))

(define-category COMMUNICATE23201
  :mixins (TRANSFER_MESG-37.1.1)
  :realization (:VERB "communicate"))

(define-category OUTLINE23200
  :mixins (TRANSFER_MESG-37.1.1)
  :realization (:VERB "outline"))

(define-category SUMMARIZE23200
  :mixins (TRANSFER_MESG-37.1.1)
  :realization (:VERB "summarize"))

(define-category SUM_UP23200
  :mixins (TRANSFER_MESG-37.1.1)
  :realization (:VERB "sum_up"))

(define-category BOIL_DOWN23003
  :mixins (TRANSFER_MESG-37.1.1)
  :realization (:VERB "boil_down"))

(define-category SNITCH23209
  :mixins (TRANSFER_MESG-37.1.1)
  :realization (:VERB "snitch"))

(define-category WRITE_IN23200
  :mixins (TRANSFER_MESG-37.1.1)
  :realization (:VERB "write_in"))

(define-category DICTATE23100
  :mixins (TRANSFER_MESG-37.1.1-1)
  :realization (:VERB "dictate"))

(define-category QUOTE23200
  :mixins (TRANSFER_MESG-37.1.1-1)
  :realization (:VERB "quote"))

(define-category READ23101
  :mixins (TRANSFER_MESG-37.1.1-1)
  :realization (:VERB "read"))

(define-category SHOW23201
  :mixins (TRANSFER_MESG-37.1.1-1-1)
  :realization (:VERB "show"))

(define-category TEACH23200
  :mixins (TRANSFER_MESG-37.1.1-1-1)
  :realization (:VERB "teach"))

(define-category TELL23201
  :mixins (TRANSFER_MESG-37.1.1-1-1)
  :realization (:VERB "tell"))

(define-category TELL23200
  :mixins (TRANSFER_MESG-37.1.1-1-1)
  :realization (:VERB "tell"))

(define-category TELL23204
  :mixins (TRANSFER_MESG-37.1.1-1-1)
  :realization (:VERB "tell"))

(define-category WRITE23201
  :mixins (TRANSFER_MESG-37.1.1-1-1)
  :realization (:VERB "write"))

(define-category WRITE23208
  :mixins (TRANSFER_MESG-37.1.1-1-1)
  :realization (:VERB "write"))

(define-category WRITE23200
  :mixins (TRANSFER_MESG-37.1.1-1-1)
  :realization (:VERB "write"))

(define-category BAMBOOZLE23200
  :mixins (TRICK-59.2)
  :realization (:VERB "bamboozle"))

(define-category COZEN24100
  :mixins (TRICK-59.2)
  :realization (:VERB "cozen"))

(define-category COZEN24101
  :mixins (TRICK-59.2)
  :realization (:VERB "cozen"))

(define-category FOX24100
  :mixins (TRICK-59.2)
  :realization (:VERB "fox"))

(define-category BULLSHIT23200
  :mixins (TRICK-59.2)
  :realization (:VERB "bullshit"))

(define-category BLUFF23200
  :mixins (TRICK-59.2)
  :realization (:VERB "bluff"))

(define-category BLUFF23300
  :mixins (TRICK-59.2)
  :realization (:VERB "bluff"))

(define-category BLACKMAIL24000
  :mixins (TRICK-59.2)
  :realization (:VERB "blackmail"))

(define-category BLACKMAIL24100
  :mixins (TRICK-59.2)
  :realization (:VERB "blackmail"))

(define-category CHEAT23300
  :mixins (TRICK-59.2)
  :realization (:VERB "cheat"))

(define-category CON24100
  :mixins (TRICK-59.2)
  :realization (:VERB "con"))

(define-category DECEIVE23200
  :mixins (TRICK-59.2)
  :realization (:VERB "deceive"))

(define-category DELUDE24100
  :mixins (TRICK-59.2)
  :realization (:VERB "delude"))

(define-category DUPE23200
  :mixins (TRICK-59.2)
  :realization (:VERB "dupe"))

(define-category ENSNARE24100
  :mixins (TRICK-59.2)
  :realization (:VERB "ensnare"))

(define-category ENTRAP24100
  :mixins (TRICK-59.2)
  :realization (:VERB "entrap"))

(define-category FOOL23201
  :mixins (TRICK-59.2)
  :realization (:VERB "fool"))

(define-category HOODWINK24100
  :mixins (TRICK-59.2)
  :realization (:VERB "hoodwink"))

(define-category MANIPULATE23700
  :mixins (TRICK-59.2)
  :realization (:VERB "manipulate"))

(define-category MANIPULATE24100
  :mixins (TRICK-59.2)
  :realization (:VERB "manipulate"))

(define-category MISLEAD23200
  :mixins (TRICK-59.2)
  :realization (:VERB "mislead"))

(define-category TRICK24100
  :mixins (TRICK-59.2)
  :realization (:VERB "trick"))

(define-category TRAP24100
  :mixins (TRICK-59.2)
  :realization (:VERB "trap"))

(define-category DALLY23101
  :mixins (TRIFLE-105.3)
  :realization (:VERB "dally"))

(define-category DALLY23200
  :mixins (TRIFLE-105.3)
  :realization (:VERB "dally"))

(define-category DALLY24100
  :mixins (TRIFLE-105.3)
  :realization (:VERB "dally"))

(define-category DIDDLE23500
  :mixins (TRIFLE-105.3)
  :realization (:VERB "diddle"))

(define-category FIDDLE23000
  :mixins (TRIFLE-105.3)
  :realization (:VERB "fiddle"))

(define-category FIDDLE23503
  :mixins (TRIFLE-105.3)
  :realization (:VERB "fiddle"))

(define-category FIDDLE23500
  :mixins (TRIFLE-105.3)
  :realization (:VERB "fiddle"))

(define-category PLAY24113
  :mixins (TRIFLE-105.3)
  :realization (:VERB "play"))

(define-category PLAY23101
  :mixins (TRIFLE-105.3)
  :realization (:VERB "play"))

(define-category PLAY23500
  :mixins (TRIFLE-105.3)
  :realization (:VERB "play"))

(define-category PLAY22900
  :mixins (TRIFLE-105.3)
  :realization (:VERB "play"))

(define-category TOY22900
  :mixins (TRIFLE-105.3)
  :realization (:VERB "toy"))

(define-category TOY23500
  :mixins (TRIFLE-105.3)
  :realization (:VERB "toy"))

(define-category TRIFLE23101
  :mixins (TRIFLE-105.3)
  :realization (:VERB "trifle"))

(define-category TRY24100
  :mixins (TRY-61.1)
  :realization (:VERB "try"))

(define-category ATTEMPT23600
  :mixins (TRY-61.1)
  :realization (:VERB "attempt"))

(define-category ATTEMPT24100
  :mixins (TRY-61.1)
  :realization (:VERB "attempt"))

(define-category INTEND23100
  :mixins (TRY-61.1)
  :realization (:VERB "intend"))

(define-category ALTER23001
  :mixins (TURN-26.6.1)
  :realization (:VERB "alter"))

(define-category METAMORPHOSE23000
  :mixins (TURN-26.6.1)
  :realization (:VERB "metamorphose"))

(define-category MORPH23000
  :mixins (TURN-26.6.1)
  :realization (:VERB "morph"))

(define-category MORPH23001
  :mixins (TURN-26.6.1)
  :realization (:VERB "morph"))

(define-category TRANSFORM23003
  :mixins (TURN-26.6.1)
  :realization (:VERB "transform"))

(define-category TRANSFORM23000
  :mixins (TURN-26.6.1)
  :realization (:VERB "transform"))

(define-category TRANSMUTE23002
  :mixins (TURN-26.6.1)
  :realization (:VERB "transmute"))

(define-category TRANSMUTE23000
  :mixins (TURN-26.6.1)
  :realization (:VERB "transmute"))

(define-category TRANSMUTE23001
  :mixins (TURN-26.6.1)
  :realization (:VERB "transmute"))

(define-category CHANGE23008
  :mixins (TURN-26.6.1-1)
  :realization (:VERB "change"))

(define-category CHANGE23001
  :mixins (TURN-26.6.1-1)
  :realization (:VERB "change"))

(define-category CHANGE23000
  :mixins (TURN-26.6.1-1)
  :realization (:VERB "change"))

(define-category CONVERT23004
  :mixins (TURN-26.6.1-1)
  :realization (:VERB "convert"))

(define-category CONVERT23007
  :mixins (TURN-26.6.1-1)
  :realization (:VERB "convert"))

(define-category CONVERT23002
  :mixins (TURN-26.6.1-1)
  :realization (:VERB "convert"))

(define-category CONVERT23001
  :mixins (TURN-26.6.1-1)
  :realization (:VERB "convert"))

(define-category CONVERT23000
  :mixins (TURN-26.6.1-1)
  :realization (:VERB "convert"))

(define-category CONVERT23003
  :mixins (TURN-26.6.1-1)
  :realization (:VERB "convert"))

(define-category TURN24213
  :mixins (TURN-26.6.1-1)
  :realization (:VERB "turn"))

(define-category TURN23009
  :mixins (TURN-26.6.1-1)
  :realization (:VERB "turn"))

(define-category TURN23003
  :mixins (TURN-26.6.1-1)
  :realization (:VERB "turn"))

(define-category TURN24200
  :mixins (TURN-26.6.1-1)
  :realization (:VERB "turn"))

(define-category CALL23215
  :mixins (URGE-58.1-1)
  :realization (:VERB "call"))

(define-category CALL23205
  :mixins (URGE-58.1-1)
  :realization (:VERB "call"))

(define-category DARE23200
  :mixins (URGE-58.1-1)
  :realization (:VERB "dare"))

(define-category EGG_ON23500
  :mixins (URGE-58.1-1)
  :realization (:VERB "egg_on"))

(define-category FORCE23500
  :mixins (URGE-58.1-1)
  :realization (:VERB "force"))

(define-category FORCE23600
  :mixins (URGE-58.1-1)
  :realization (:VERB "force"))

(define-category INVITE23700
  :mixins (URGE-58.1-1)
  :realization (:VERB "invite"))

(define-category PUSH23201
  :mixins (URGE-58.1-1)
  :realization (:VERB "push"))

(define-category PUSH23800
  :mixins (URGE-58.1-1)
  :realization (:VERB "push"))

(define-category SUMMON23502
  :mixins (URGE-58.1-1)
  :realization (:VERB "summon"))

(define-category SUMMON23205
  :mixins (URGE-58.1-1)
  :realization (:VERB "summon"))

(define-category TEMPT23204
  :mixins (URGE-58.1-1)
  :realization (:VERB "tempt"))

(define-category ADMONISH23201
  :mixins (URGE-58.1-1-1)
  :realization (:VERB "admonish"))

(define-category ADMONISH23202
  :mixins (URGE-58.1-1-1)
  :realization (:VERB "admonish"))

(define-category ASK23201
  :mixins (URGE-58.1-1-1)
  :realization (:VERB "ask"))

(define-category ENCOURAGE23200
  :mixins (URGE-58.1-1-1)
  :realization (:VERB "encourage"))

(define-category EXHORT23200
  :mixins (URGE-58.1-1-1)
  :realization (:VERB "exhort"))

(define-category ENTREAT23200
  :mixins (URGE-58.1-1-1)
  :realization (:VERB "entreat"))

(define-category IMPLORE23200
  :mixins (URGE-58.1-1-1)
  :realization (:VERB "implore"))

(define-category LOBBY24100
  :mixins (URGE-58.1-1-1)
  :realization (:VERB "lobby"))

(define-category PRESS23201
  :mixins (URGE-58.1-1-1)
  :realization (:VERB "press"))

(define-category PRESS23200
  :mixins (URGE-58.1-1-1)
  :realization (:VERB "press"))

(define-category PRESSURE24100
  :mixins (URGE-58.1-1-1)
  :realization (:VERB "pressure"))

(define-category PROD23500
  :mixins (URGE-58.1-1-1)
  :realization (:VERB "prod"))

(define-category URGE23203
  :mixins (URGE-58.1-1-1)
  :realization (:VERB "urge"))

(define-category URGE23200
  :mixins (URGE-58.1-1-1)
  :realization (:VERB "urge"))

(define-category USE23401
  :mixins (USE-105.1)
  :realization (:VERB "use"))

(define-category UTILIZE23400
  :mixins (USE-105.1)
  :realization (:VERB "utilize"))

(define-category APPLY23400
  :mixins (USE-105.1)
  :realization (:VERB "apply"))

(define-category EMPLOY23400
  :mixins (USE-105.1)
  :realization (:VERB "employ"))

(define-category EXERT24000
  :mixins (USE-105.1)
  :realization (:VERB "exert"))

(define-category EXERT23400
  :mixins (USE-105.1)
  :realization (:VERB "exert"))

(define-category EXPLOIT23401
  :mixins (USE-105.1)
  :realization (:VERB "exploit"))

(define-category EXPLOIT23400
  :mixins (USE-105.1)
  :realization (:VERB "exploit"))

(define-category REUSE23400
  :mixins (USE-105.1)
  :realization (:VERB "reuse"))

(define-category RUN23500
  :mixins (USE-105.1)
  :realization (:VERB "run"))

(define-category RUN23504
  :mixins (USE-105.1)
  :realization (:VERB "run"))

(define-category WORK24112
  :mixins (USE-105.1)
  :realization (:VERB "work"))

(define-category WORK24111
  :mixins (USE-105.1)
  :realization (:VERB "work"))

(define-category BALLOON23800
  :mixins (VEHICLE-51.4.1)
  :realization (:VERB "balloon"))

(define-category BOAT23800
  :mixins (VEHICLE-51.4.1)
  :realization (:VERB "boat"))

(define-category BOBSLED23800
  :mixins (VEHICLE-51.4.1)
  :realization (:VERB "bobsled"))

(define-category BUS23800
  :mixins (VEHICLE-51.4.1)
  :realization (:VERB "bus"))

(define-category BUS23801
  :mixins (VEHICLE-51.4.1)
  :realization (:VERB "bus"))

(define-category CHARIOT23800
  :mixins (VEHICLE-51.4.1)
  :realization (:VERB "chariot"))

(define-category CHARIOT23801
  :mixins (VEHICLE-51.4.1)
  :realization (:VERB "chariot"))

(define-category COACH23800
  :mixins (VEHICLE-51.4.1)
  :realization (:VERB "coach"))

(define-category FERRY23800
  :mixins (VEHICLE-51.4.1)
  :realization (:VERB "ferry"))

(define-category FERRY23801
  :mixins (VEHICLE-51.4.1)
  :realization (:VERB "ferry"))

(define-category JET23800
  :mixins (VEHICLE-51.4.1)
  :realization (:VERB "jet"))

(define-category MOTOR23800
  :mixins (VEHICLE-51.4.1)
  :realization (:VERB "motor"))

(define-category PARACHUTE23800
  :mixins (VEHICLE-51.4.1)
  :realization (:VERB "parachute"))

(define-category PUNT23500
  :mixins (VEHICLE-51.4.1)
  :realization (:VERB "punt"))

(define-category ROCKET23500
  :mixins (VEHICLE-51.4.1)
  :realization (:VERB "rocket"))

(define-category SLEDGE23801
  :mixins (VEHICLE-51.4.1)
  :realization (:VERB "sledge"))

(define-category SLEDGE23802
  :mixins (VEHICLE-51.4.1)
  :realization (:VERB "sledge"))

(define-category SLEIGH23800
  :mixins (VEHICLE-51.4.1)
  :realization (:VERB "sleigh"))

(define-category TAXI23800
  :mixins (VEHICLE-51.4.1)
  :realization (:VERB "taxi"))

(define-category YACHT23800
  :mixins (VEHICLE-51.4.1)
  :realization (:VERB "yacht"))

(define-category BICYCLE23800
  :mixins (VEHICLE-51.4.1-1)
  :realization (:VERB "bicycle"))

(define-category BIKE23800
  :mixins (VEHICLE-51.4.1-1)
  :realization (:VERB "bike"))

(define-category CANOE23800
  :mixins (VEHICLE-51.4.1-1)
  :realization (:VERB "canoe"))

(define-category CYCLE23801
  :mixins (VEHICLE-51.4.1-1)
  :realization (:VERB "cycle"))

(define-category CYCLE23800
  :mixins (VEHICLE-51.4.1-1)
  :realization (:VERB "cycle"))

(define-category KAYAK23800
  :mixins (VEHICLE-51.4.1-1)
  :realization (:VERB "kayak"))

(define-category MOTORBIKE23800
  :mixins (VEHICLE-51.4.1-1)
  :realization (:VERB "motorbike"))

(define-category MOTORCYCLE23800
  :mixins (VEHICLE-51.4.1-1)
  :realization (:VERB "motorcycle"))

(define-category RAFT23800
  :mixins (VEHICLE-51.4.1-1)
  :realization (:VERB "raft"))

(define-category RAFT23801
  :mixins (VEHICLE-51.4.1-1)
  :realization (:VERB "raft"))

(define-category SKATE23800
  :mixins (VEHICLE-51.4.1-1)
  :realization (:VERB "skate"))

(define-category SKATEBOARD23800
  :mixins (VEHICLE-51.4.1-1)
  :realization (:VERB "skateboard"))

(define-category SKI23800
  :mixins (VEHICLE-51.4.1-1)
  :realization (:VERB "ski"))

(define-category SLED23800
  :mixins (VEHICLE-51.4.1-1)
  :realization (:VERB "sled"))

(define-category TOBOGGAN23800
  :mixins (VEHICLE-51.4.1-1)
  :realization (:VERB "toboggan"))

(define-category TAKE23802
  :mixins (VEHICLE_PATH-51.4.3)
  :realization (:VERB "take"))

(define-category SAIL23802
  :mixins (VEHICLE_PATH-51.4.3)
  :realization (:VERB "sail"))

(define-category SAIL23800
  :mixins (VEHICLE_PATH-51.4.3)
  :realization (:VERB "sail"))

(define-category SAIL23803
  :mixins (VEHICLE_PATH-51.4.3)
  :realization (:VERB "sail"))

(define-category COAST23800
  :mixins (VEHICLE_PATH-51.4.3)
  :realization (:VERB "coast"))

(define-category ANNUL24100
  :mixins (VOID-106)
  :realization (:VERB "annul"))

(define-category QUASH24101
  :mixins (VOID-106)
  :realization (:VERB "quash"))

(define-category QUASH24100
  :mixins (VOID-106)
  :realization (:VERB "quash"))

(define-category VOID24100
  :mixins (VOID-106)
  :realization (:VERB "void"))

(define-category AVOID24100
  :mixins (VOID-106)
  :realization (:VERB "avoid"))

(define-category INVALIDATE23000
  :mixins (VOID-106)
  :realization (:VERB "invalidate"))

(define-category INVALIDATE24100
  :mixins (VOID-106)
  :realization (:VERB "invalidate"))

(define-category NULLIFY24100
  :mixins (VOID-106)
  :realization (:VERB "nullify"))

(define-category OFFER24100
  :mixins (VOLUNTEER-95.4)
  :realization (:VERB "offer"))

(define-category PROFFER24000
  :mixins (VOLUNTEER-95.4)
  :realization (:VERB "proffer"))

(define-category VOLUNTEER24100
  :mixins (VOLUNTEER-95.4-1)
  :realization (:VERB "volunteer"))

(define-category ENLIST24000
  :mixins (VOLUNTEER-95.4-1)
  :realization (:VERB "enlist"))

(define-category SIGN_UP23300
  :mixins (VOLUNTEER-95.4-1)
  :realization (:VERB "sign_up"))

(define-category BOOGIE23800
  :mixins (WALTZ-51.5)
  :realization (:VERB "boogie"))

(define-category BOP23800
  :mixins (WALTZ-51.5)
  :realization (:VERB "bop"))

(define-category CLOG23600
  :mixins (WALTZ-51.5)
  :realization (:VERB "clog"))

(define-category CONGA23800
  :mixins (WALTZ-51.5)
  :realization (:VERB "conga"))

(define-category DANCE23600
  :mixins (WALTZ-51.5)
  :realization (:VERB "dance"))

(define-category FOXTROT23800
  :mixins (WALTZ-51.5)
  :realization (:VERB "foxtrot"))

(define-category JIG23800
  :mixins (WALTZ-51.5)
  :realization (:VERB "jig"))

(define-category JITTERBUG23800
  :mixins (WALTZ-51.5)
  :realization (:VERB "jitterbug"))

(define-category JIVE23600
  :mixins (WALTZ-51.5)
  :realization (:VERB "jive"))

(define-category PIROUETTE23800
  :mixins (WALTZ-51.5)
  :realization (:VERB "pirouette"))

(define-category POLKA23800
  :mixins (WALTZ-51.5)
  :realization (:VERB "polka"))

(define-category QUICKSTEP23800
  :mixins (WALTZ-51.5)
  :realization (:VERB "quickstep"))

(define-category RUMBA23800
  :mixins (WALTZ-51.5)
  :realization (:VERB "rumba"))

(define-category SAMBA23800
  :mixins (WALTZ-51.5)
  :realization (:VERB "samba"))

(define-category TANGO23800
  :mixins (WALTZ-51.5)
  :realization (:VERB "tango"))

(define-category TAPDANCE23800
  :mixins (WALTZ-51.5)
  :realization (:VERB "tapdance"))

(define-category WALTZ23800
  :mixins (WALTZ-51.5)
  :realization (:VERB "waltz"))

(define-category COVET23700
  :mixins (WANT-32.1)
  :realization (:VERB "covet"))

(define-category CRAVE23400
  :mixins (WANT-32.1)
  :realization (:VERB "crave"))

(define-category FANCY23700
  :mixins (WANT-32.1)
  :realization (:VERB "fancy"))

(define-category LOVE23702
  :mixins (WANT-32.1)
  :realization (:VERB "love"))

(define-category WANT24201
  :mixins (WANT-32.1-1-1)
  :realization (:VERB "want"))

(define-category WANT23500
  :mixins (WANT-32.1-1-1)
  :realization (:VERB "want"))

(define-category WANT23101
  :mixins (WANT-32.1-1-1)
  :realization (:VERB "want"))

(define-category WANT23400
  :mixins (WANT-32.1-1-1)
  :realization (:VERB "want"))

(define-category WANT23700
  :mixins (WANT-32.1-1-1)
  :realization (:VERB "want"))

(define-category NEED23401
  :mixins (WANT-32.1-1-1)
  :realization (:VERB "need"))

(define-category NEED23400
  :mixins (WANT-32.1-1-1)
  :realization (:VERB "need"))

(define-category DESIRE23701
  :mixins (WANT-32.1-1-1)
  :realization (:VERB "desire"))

(define-category DESIRE23700
  :mixins (WANT-32.1-1-1)
  :realization (:VERB "desire"))

(define-category BLOW24300
  :mixins (WEATHER-57)
  :realization (:VERB "blow"))

(define-category CLEAR24300
  :mixins (WEATHER-57)
  :realization (:VERB "clear"))

(define-category DRIZZLE24300
  :mixins (WEATHER-57)
  :realization (:VERB "drizzle"))

(define-category FOG23900
  :mixins (WEATHER-57)
  :realization (:VERB "fog"))

(define-category FREEZE24310
  :mixins (WEATHER-57)
  :realization (:VERB "freeze"))

(define-category HAIL24300
  :mixins (WEATHER-57)
  :realization (:VERB "hail"))

(define-category HOWL23201
  :mixins (WEATHER-57)
  :realization (:VERB "howl"))

(define-category MIST23000
  :mixins (WEATHER-57)
  :realization (:VERB "mist"))

(define-category MIZZLE24300
  :mixins (WEATHER-57)
  :realization (:VERB "mizzle"))

(define-category PELT24300
  :mixins (WEATHER-57)
  :realization (:VERB "pelt"))

(define-category POUR24300
  :mixins (WEATHER-57)
  :realization (:VERB "pour"))

(define-category PRECIPITATE24300
  :mixins (WEATHER-57)
  :realization (:VERB "precipitate"))

(define-category RAIN24300
  :mixins (WEATHER-57)
  :realization (:VERB "rain"))

(define-category ROAR23201
  :mixins (WEATHER-57)
  :realization (:VERB "roar"))

(define-category SHOWER24300
  :mixins (WEATHER-57)
  :realization (:VERB "shower"))

(define-category SLEET24300
  :mixins (WEATHER-57)
  :realization (:VERB "sleet"))

(define-category SNOW24300
  :mixins (WEATHER-57)
  :realization (:VERB "snow"))

(define-category SPIT24300
  :mixins (WEATHER-57)
  :realization (:VERB "spit"))

(define-category SPOT23001
  :mixins (WEATHER-57)
  :realization (:VERB "spot"))

(define-category SPRINKLE24300
  :mixins (WEATHER-57)
  :realization (:VERB "sprinkle"))

(define-category STORM24300
  :mixins (WEATHER-57)
  :realization (:VERB "storm"))

(define-category STORM24301
  :mixins (WEATHER-57)
  :realization (:VERB "storm"))

(define-category SWELTER22901
  :mixins (WEATHER-57)
  :realization (:VERB "swelter"))

(define-category TEEM24200
  :mixins (WEATHER-57)
  :realization (:VERB "teem"))

(define-category THAW23000
  :mixins (WEATHER-57)
  :realization (:VERB "thaw"))

(define-category THUNDER24300
  :mixins (WEATHER-57)
  :realization (:VERB "thunder"))

(define-category HOLIDAY24200
  :mixins (WEEKEND-56)
  :realization (:VERB "holiday"))

(define-category HONEYMOON24200
  :mixins (WEEKEND-56)
  :realization (:VERB "honeymoon"))

(define-category JUNKET23800
  :mixins (WEEKEND-56)
  :realization (:VERB "junket"))

(define-category SOJOURN24200
  :mixins (WEEKEND-56)
  :realization (:VERB "sojourn"))

(define-category SUMMER24200
  :mixins (WEEKEND-56)
  :realization (:VERB "summer"))

(define-category VACATION24200
  :mixins (WEEKEND-56)
  :realization (:VERB "vacation"))

(define-category WEEKEND24200
  :mixins (WEEKEND-56)
  :realization (:VERB "weekend"))

(define-category WINTER24200
  :mixins (WEEKEND-56)
  :realization (:VERB "winter"))

(define-category BLINK22901
  :mixins (WINK-40.3.1)
  :realization (:VERB "blink"))

(define-category BLINK22900
  :mixins (WINK-40.3.1)
  :realization (:VERB "blink"))

(define-category CLAP22900
  :mixins (WINK-40.3.1)
  :realization (:VERB "clap"))

(define-category NOD22903
  :mixins (WINK-40.3.1)
  :realization (:VERB "nod"))

(define-category NOD23200
  :mixins (WINK-40.3.1)
  :realization (:VERB "nod"))

(define-category POINT23310
  :mixins (WINK-40.3.1)
  :realization (:VERB "point"))

(define-category POINT23200
  :mixins (WINK-40.3.1)
  :realization (:VERB "point"))

(define-category SHRUG22900
  :mixins (WINK-40.3.1)
  :realization (:VERB "shrug"))

(define-category SQUINT22900
  :mixins (WINK-40.3.1)
  :realization (:VERB "squint"))

(define-category WAVE23200
  :mixins (WINK-40.3.1)
  :realization (:VERB "wave"))

(define-category WINK22901
  :mixins (WINK-40.3.1)
  :realization (:VERB "wink"))

(define-category WINK22900
  :mixins (WINK-40.3.1)
  :realization (:VERB "wink"))

(define-category WINK22902
  :mixins (WINK-40.3.1)
  :realization (:VERB "wink"))

(define-category FILE23500
  :mixins (WIPE_INSTR-10.4.2)
  :realization (:VERB "file"))

(define-category FILTER23500
  :mixins (WIPE_INSTR-10.4.2)
  :realization (:VERB "filter"))

(define-category HOOVER23500
  :mixins (WIPE_INSTR-10.4.2)
  :realization (:VERB "hoover"))

(define-category IRON23500
  :mixins (WIPE_INSTR-10.4.2)
  :realization (:VERB "iron"))

(define-category PLOUGH23600
  :mixins (WIPE_INSTR-10.4.2)
  :realization (:VERB "plough"))

(define-category SANDPAPER23500
  :mixins (WIPE_INSTR-10.4.2)
  :realization (:VERB "sandpaper"))

(define-category SPONGE23501
  :mixins (WIPE_INSTR-10.4.2)
  :realization (:VERB "sponge"))

(define-category SPONGE23500
  :mixins (WIPE_INSTR-10.4.2)
  :realization (:VERB "sponge"))

(define-category SQUEEGEE23500
  :mixins (WIPE_INSTR-10.4.2)
  :realization (:VERB "squeegee"))

(define-category TOWEL23500
  :mixins (WIPE_INSTR-10.4.2)
  :realization (:VERB "towel"))

(define-category BRUSH23000
  :mixins (WIPE_INSTR-10.4.2-1)
  :realization (:VERB "brush"))

(define-category BRUSH23502
  :mixins (WIPE_INSTR-10.4.2-1)
  :realization (:VERB "brush"))

(define-category BRUSH23501
  :mixins (WIPE_INSTR-10.4.2-1)
  :realization (:VERB "brush"))

(define-category COMB22900
  :mixins (WIPE_INSTR-10.4.2-1)
  :realization (:VERB "comb"))

(define-category HOSE23000
  :mixins (WIPE_INSTR-10.4.2-1)
  :realization (:VERB "hose"))

(define-category MOP23501
  :mixins (WIPE_INSTR-10.4.2-1)
  :realization (:VERB "mop"))

(define-category PLOW23600
  :mixins (WIPE_INSTR-10.4.2-1)
  :realization (:VERB "plow"))

(define-category RAKE23500
  :mixins (WIPE_INSTR-10.4.2-1)
  :realization (:VERB "rake"))

(define-category RAKE23501
  :mixins (WIPE_INSTR-10.4.2-1)
  :realization (:VERB "rake"))

(define-category SHEAR23501
  :mixins (WIPE_INSTR-10.4.2-1)
  :realization (:VERB "shear"))

(define-category SHEAR23502
  :mixins (WIPE_INSTR-10.4.2-1)
  :realization (:VERB "shear"))

(define-category SHEAR23500
  :mixins (WIPE_INSTR-10.4.2-1)
  :realization (:VERB "shear"))

(define-category SHOVEL23500
  :mixins (WIPE_INSTR-10.4.2-1)
  :realization (:VERB "shovel"))

(define-category SIPHON23800
  :mixins (WIPE_INSTR-10.4.2-1)
  :realization (:VERB "siphon"))

(define-category VACUUM23500
  :mixins (WIPE_INSTR-10.4.2-1)
  :realization (:VERB "vacuum"))

(define-category BUFF23500
  :mixins (WIPE_MANNER-10.4.1)
  :realization (:VERB "buff"))

(define-category DISTILL23003
  :mixins (WIPE_MANNER-10.4.1)
  :realization (:VERB "distill"))

(define-category DISTIL23002
  :mixins (WIPE_MANNER-10.4.1)
  :realization (:VERB "distil"))

(define-category EXORCISE23500
  :mixins (WIPE_MANNER-10.4.1)
  :realization (:VERB "exorcise"))

(define-category EXPUNGE23500
  :mixins (WIPE_MANNER-10.4.1)
  :realization (:VERB "expunge"))

(define-category EXPURGATE23000
  :mixins (WIPE_MANNER-10.4.1)
  :realization (:VERB "expurgate"))

(define-category FLUSH23001
  :mixins (WIPE_MANNER-10.4.1)
  :realization (:VERB "flush"))

(define-category LEACH23000
  :mixins (WIPE_MANNER-10.4.1)
  :realization (:VERB "leach"))

(define-category OFFLOAD23500
  :mixins (WIPE_MANNER-10.4.1)
  :realization (:VERB "offload"))

(define-category POLISH23500
  :mixins (WIPE_MANNER-10.4.1)
  :realization (:VERB "polish"))

(define-category PURGE22900
  :mixins (WIPE_MANNER-10.4.1)
  :realization (:VERB "purge"))

(define-category PURGE23000
  :mixins (WIPE_MANNER-10.4.1)
  :realization (:VERB "purge"))

(define-category SHAVE23503
  :mixins (WIPE_MANNER-10.4.1)
  :realization (:VERB "shave"))

(define-category SHAVE23502
  :mixins (WIPE_MANNER-10.4.1)
  :realization (:VERB "shave"))

(define-category SHAVE23501
  :mixins (WIPE_MANNER-10.4.1)
  :realization (:VERB "shave"))

(define-category SHAVE22900
  :mixins (WIPE_MANNER-10.4.1)
  :realization (:VERB "shave"))

(define-category SMOOTH23500
  :mixins (WIPE_MANNER-10.4.1)
  :realization (:VERB "smooth"))

(define-category SKIM23501
  :mixins (WIPE_MANNER-10.4.1)
  :realization (:VERB "skim"))

(define-category SOAK23001
  :mixins (WIPE_MANNER-10.4.1)
  :realization (:VERB "soak"))

(define-category STRAIN23510
  :mixins (WIPE_MANNER-10.4.1)
  :realization (:VERB "strain"))

(define-category STRAIN23500
  :mixins (WIPE_MANNER-10.4.1)
  :realization (:VERB "strain"))

(define-category STRAIN23501
  :mixins (WIPE_MANNER-10.4.1)
  :realization (:VERB "strain"))

(define-category TRIM23501
  :mixins (WIPE_MANNER-10.4.1)
  :realization (:VERB "trim"))

(define-category TRIM23502
  :mixins (WIPE_MANNER-10.4.1)
  :realization (:VERB "trim"))

(define-category TRIM23000
  :mixins (WIPE_MANNER-10.4.1)
  :realization (:VERB "trim"))

(define-category TRIM23503
  :mixins (WIPE_MANNER-10.4.1)
  :realization (:VERB "trim"))

(define-category UNLOAD23500
  :mixins (WIPE_MANNER-10.4.1)
  :realization (:VERB "unload"))

(define-category WEED23000
  :mixins (WIPE_MANNER-10.4.1)
  :realization (:VERB "weed"))

(define-category WHISK23501
  :mixins (WIPE_MANNER-10.4.1)
  :realization (:VERB "whisk"))

(define-category WINNOW23000
  :mixins (WIPE_MANNER-10.4.1)
  :realization (:VERB "winnow"))

(define-category WINNOW23505
  :mixins (WIPE_MANNER-10.4.1)
  :realization (:VERB "winnow"))

(define-category WRING23502
  :mixins (WIPE_MANNER-10.4.1)
  :realization (:VERB "wring"))

(define-category BAIL23001
  :mixins (WIPE_MANNER-10.4.1-1)
  :realization (:VERB "bail"))

(define-category BAIL23002
  :mixins (WIPE_MANNER-10.4.1-1)
  :realization (:VERB "bail"))

(define-category DAB23500
  :mixins (WIPE_MANNER-10.4.1-1)
  :realization (:VERB "dab"))

(define-category DAB23501
  :mixins (WIPE_MANNER-10.4.1-1)
  :realization (:VERB "dab"))

(define-category DUST23500
  :mixins (WIPE_MANNER-10.4.1-1)
  :realization (:VERB "dust"))

(define-category ERASE23500
  :mixins (WIPE_MANNER-10.4.1-1)
  :realization (:VERB "erase"))

(define-category LICK23500
  :mixins (WIPE_MANNER-10.4.1-1)
  :realization (:VERB "lick"))

(define-category PLUCK23501
  :mixins (WIPE_MANNER-10.4.1-1)
  :realization (:VERB "pluck"))

(define-category PLUCK23503
  :mixins (WIPE_MANNER-10.4.1-1)
  :realization (:VERB "pluck"))

(define-category PLUCK23500
  :mixins (WIPE_MANNER-10.4.1-1)
  :realization (:VERB "pluck"))

(define-category PRUNE23500
  :mixins (WIPE_MANNER-10.4.1-1)
  :realization (:VERB "prune"))

(define-category RINSE23500
  :mixins (WIPE_MANNER-10.4.1-1)
  :realization (:VERB "rinse"))

(define-category RUB23500
  :mixins (WIPE_MANNER-10.4.1-1)
  :realization (:VERB "rub"))

(define-category SCOUR23500
  :mixins (WIPE_MANNER-10.4.1-1)
  :realization (:VERB "scour"))

(define-category SCOUR23501
  :mixins (WIPE_MANNER-10.4.1-1)
  :realization (:VERB "scour"))

(define-category SCRAPE23502
  :mixins (WIPE_MANNER-10.4.1-1)
  :realization (:VERB "scrape"))

(define-category SCRATCH23500
  :mixins (WIPE_MANNER-10.4.1-1)
  :realization (:VERB "scratch"))

(define-category SCRUB23500
  :mixins (WIPE_MANNER-10.4.1-1)
  :realization (:VERB "scrub"))

(define-category SQUEEZE23505
  :mixins (WIPE_MANNER-10.4.1-1)
  :realization (:VERB "squeeze"))

(define-category STRIP23012
  :mixins (WIPE_MANNER-10.4.1-1)
  :realization (:VERB "strip"))

(define-category STRIP23002
  :mixins (WIPE_MANNER-10.4.1-1)
  :realization (:VERB "strip"))

(define-category STRIP23501
  :mixins (WIPE_MANNER-10.4.1-1)
  :realization (:VERB "strip"))

(define-category STRIP23005
  :mixins (WIPE_MANNER-10.4.1-1)
  :realization (:VERB "strip"))

(define-category STRIP23006
  :mixins (WIPE_MANNER-10.4.1-1)
  :realization (:VERB "strip"))

(define-category STRIP23500
  :mixins (WIPE_MANNER-10.4.1-1)
  :realization (:VERB "strip"))

(define-category SUCK23404
  :mixins (WIPE_MANNER-10.4.1-1)
  :realization (:VERB "suck"))

(define-category SUCTION22900
  :mixins (WIPE_MANNER-10.4.1-1)
  :realization (:VERB "suction"))

(define-category SUCTION23800
  :mixins (WIPE_MANNER-10.4.1-1)
  :realization (:VERB "suction"))

(define-category SWAB23500
  :mixins (WIPE_MANNER-10.4.1-1)
  :realization (:VERB "swab"))

(define-category SWEEP23501
  :mixins (WIPE_MANNER-10.4.1-1)
  :realization (:VERB "sweep"))

(define-category SWEEP23500
  :mixins (WIPE_MANNER-10.4.1-1)
  :realization (:VERB "sweep"))

(define-category WASH23005
  :mixins (WIPE_MANNER-10.4.1-1)
  :realization (:VERB "wash"))

(define-category WASH23501
  :mixins (WIPE_MANNER-10.4.1-1)
  :realization (:VERB "wash"))

(define-category WASH23500
  :mixins (WIPE_MANNER-10.4.1-1)
  :realization (:VERB "wash"))

(define-category WEAR23000
  :mixins (WIPE_MANNER-10.4.1-1)
  :realization (:VERB "wear"))

(define-category WIPE23500
  :mixins (WIPE_MANNER-10.4.1-1)
  :realization (:VERB "wipe"))

(define-category EXPECT23200
  :mixins (WISH-62)
  :realization (:VERB "expect"))

(define-category WISH23702
  :mixins (WISH-62)
  :realization (:VERB "wish"))

(define-category INTEND23100
  :mixins (WISH-62)
  :realization (:VERB "intend"))

(define-category PLAN23101
  :mixins (WISH-62)
  :realization (:VERB "plan"))

(define-category PROPOSE23101
  :mixins (WISH-62)
  :realization (:VERB "propose"))

(define-category THINK23103
  :mixins (WISH-62)
  :realization (:VERB "think"))

(define-category AIM23101
  :mixins (WISH-62)
  :realization (:VERB "aim"))

(define-category DREAM23600
  :mixins (WISH-62)
  :realization (:VERB "dream"))

(define-category IMAGINE23101
  :mixins (WISH-62)
  :realization (:VERB "imagine"))

(define-category YEN23700
  :mixins (WISH-62)
  :realization (:VERB "yen"))

(define-category BACK_OUT23200
  :mixins (WITHDRAW-82-1)
  :realization (:VERB "back_out"))

(define-category CHICKEN_OUT24100
  :mixins (WITHDRAW-82-1)
  :realization (:VERB "chicken_out"))

(define-category GET_OUT23203
  :mixins (WITHDRAW-82-1)
  :realization (:VERB "get_out"))

(define-category BOW_OUT24100
  :mixins (WITHDRAW-82-1)
  :realization (:VERB "bow_out"))

(define-category BOW_OUT24101
  :mixins (WITHDRAW-82-1)
  :realization (:VERB "bow_out"))

(define-category PULL_OUT24100
  :mixins (WITHDRAW-82-1)
  :realization (:VERB "pull_out"))

(define-category GET_AWAY23200
  :mixins (WITHDRAW-82-2)
  :realization (:VERB "get_away"))

(define-category BACK_OFF24100
  :mixins (WITHDRAW-82-2)
  :realization (:VERB "back_off"))

(define-category WITHDRAW23200
  :mixins (WITHDRAW-82-3)
  :realization (:VERB "withdraw"))

(define-category WITHDRAW24101
  :mixins (WITHDRAW-82-3)
  :realization (:VERB "withdraw"))

(define-category RETREAT23200
  :mixins (WITHDRAW-82-3)
  :realization (:VERB "retreat"))

(define-category PULL_AWAY23800
  :mixins (WITHDRAW-82-3)
  :realization (:VERB "pull_away"))

(define-category RETIRE24102
  :mixins (WITHDRAW-82-3)
  :realization (:VERB "retire"))

(define-category LABOR24100
  :mixins (WORK-73.2)
  :realization (:VERB "labor"))

(define-category LABOR24101
  :mixins (WORK-73.2)
  :realization (:VERB "labor"))

(define-category LABOUR24100
  :mixins (WORK-73.2)
  :realization (:VERB "labour"))

(define-category LABOUR24101
  :mixins (WORK-73.2)
  :realization (:VERB "labour"))

(define-category PLUG_AWAY23000
  :mixins (WORK-73.2)
  :realization (:VERB "plug_away"))

(define-category SLOG24100
  :mixins (WORK-73.2)
  :realization (:VERB "slog"))

(define-category WORK24101
  :mixins (WORK-73.2)
  :realization (:VERB "work"))

(define-category WORK23802
  :mixins (WORK-73.2)
  :realization (:VERB "work"))

(define-category WORK24104
  :mixins (WORK-73.2)
  :realization (:VERB "work"))

(define-category WORK22900
  :mixins (WORK-73.2)
  :realization (:VERB "work"))

(define-category WORK24100
  :mixins (WORK-73.2)
  :realization (:VERB "work"))

(define-category WORK24102
  :mixins (WORK-73.2)
  :realization (:VERB "work"))
