;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:SPARSER -*-
;;; copyright (c) 2014-2015 David D. McDonald  -- all rights reserved
;;;
;;;     File:  "relations"
;;;   Module:  "model;core:mid-level::"
;;;  version:  December 2015 

;; Initiated 12/3/15

(in-package :sparser)
(define-category accelerate :specializes perdurant
    :binds
    ((subject endurant)
     (object endurant)) 
    :realization 
      (:verb "accelerate"
      :ETF (svo-passive)
      :S SUBJECT
      :O OBJECT))

(define-category acclimate :specializes perdurant
    :binds
    ((subject endurant)
     (to endurant)) 
    :realization 
      (:verb "acclimate"
      :ETF (sv)
      :S SUBJECT
      :TO TO))

(define-category accompany :specializes perdurant
    :binds
    ((subject endurant)
     (object endurant)) 
    :realization 
      (:verb "accompany"
      :ETF (svo-passive)
      :S SUBJECT
      :O OBJECT))

(define-category accord :specializes perdurant
    :binds
    ((subject endurant)
     (to endurant)) 
    :realization 
      (:verb "accord"
      :ETF (sv)
      :S SUBJECT
      :TO TO))

(define-category account :specializes perdurant
    :binds
    ((subject endurant)
     (for endurant)) 
    :realization 
      (:verb "account"
      :ETF (sv)
      :S SUBJECT
      :FOR FOR))

(define-category achieve :specializes perdurant
    :binds
    ((subject endurant)
     (object endurant)) 
    :realization 
      (:verb "achieve"
      :ETF (svo-passive)
      :S SUBJECT
      :O OBJECT))

(define-category adapt :specializes perdurant
    :binds
    ((subject endurant)
     (object endurant)
     (for endurant)
     (from endurant)) 
    :realization 
      (:verb "adapt"
      :ETF (svo-passive)
      :S SUBJECT
      :O OBJECT
      :FOR FOR
      :FROM FROM))

(define-category add :specializes perdurant
    :binds
    ((subject endurant)
     (object endurant)
     (to endurant)) 
    :realization 
      (:verb "add"
      :ETF (svo-passive)
      :S SUBJECT
      :O OBJECT
      :TO TO))

(define-category address :specializes perdurant
    :binds
    ((subject endurant)
     (object endurant)) 
    :realization 
      (:verb "address"
      :ETF (svo-passive)
      :S SUBJECT
      :O OBJECT))

(define-category advance :specializes perdurant
    :binds
    ((subject endurant)
     (toward endurant)
     (in endurant)) 
    :realization 
      (:verb "advance"
      :ETF (sv)
      :S SUBJECT
      :TOWARD TOWARD
      :IN IN))

(define-category age :specializes perdurant
    :binds
    ((subject endurant)
     (of endurant)
     (in endurant)) 
    :realization 
      (:verb "age"
      :ETF (sv)
      :S SUBJECT
      :OF OF
      :IN IN))

(define-category anesthetize :specializes perdurant
    :binds
    ((subject endurant)
     (with endurant)) 
    :realization 
      (:verb "anesthetize"
      :ETF (sv)
      :S SUBJECT
      :WITH WITH))

(define-category anticipate :specializes perdurant
    :binds
    ((subject endurant)) 
    :realization 
      (:verb "anticipate"
      :ETF (sv)
      :S SUBJECT))

(define-category apply :specializes perdurant
    :binds
    ((subject endurant)
     (object endurant)
     (for endurant)
     (to endurant)) 
    :realization 
      (:verb "apply"
      :ETF (svo-passive)
      :S SUBJECT
      :O OBJECT
      :FOR FOR
      :TO TO))

(define-category appose :specializes perdurant
    :binds
    ((subject endurant)
     (object endurant)
     (to endurant)
     (by endurant)) 
    :realization 
      (:verb "appose"
      :ETF (svo-passive)
      :S SUBJECT
      :O OBJECT
      :TO TO
      :BY BY))

(define-category approve :specializes perdurant
    :binds
    ((subject endurant)
     (object endurant)
     (by endurant)) 
    :realization 
      (:verb "approve"
      :ETF (svo-passive)
      :S SUBJECT
      :O OBJECT
      :BY BY))

(define-category arise :specializes perdurant
    :binds
    ((subject endurant)
     (object endurant)
     (during endurant)
     (by endurant)
     (from endurant)) 
    :realization 
      (:verb "arise"
      :ETF (svo-passive)
      :S SUBJECT
      :O OBJECT
      :DURING DURING
      :BY BY
      :FROM FROM))

(define-category attach :specializes perdurant
    :binds
    ((subject endurant)
     (object endurant)
     (to endurant)
     (with endurant)) 
    :realization 
      (:verb "attach"
      :ETF (svo-passive)
      :S SUBJECT
      :O OBJECT
      :TO TO
      :WITH WITH))

(define-category attempt :specializes perdurant
    :binds
    ((subject endurant)) 
    :realization 
      (:verb "attempt"
      :ETF (sv)
      :S SUBJECT))

(define-category augment :specializes perdurant
    :binds
    ((subject endurant)
     (object endurant)) 
    :realization 
      (:verb "augment"
      :ETF (svo-passive)
      :S SUBJECT
      :O OBJECT))

(define-category author :specializes perdurant
    :binds
    ((subject endurant)
     (of endurant)) 
    :realization 
      (:verb "author"
      :ETF (sv)
      :S SUBJECT
      :OF OF))

(define-category average :specializes perdurant
    :binds
    ((subject endurant)) 
    :realization 
      (:verb "average"
      :ETF (sv)
      :S SUBJECT))

(define-category avoid :specializes perdurant
    :binds
    ((subject endurant)
     (object endurant)) 
    :realization 
      (:verb "avoid"
      :ETF (svo-passive)
      :S SUBJECT
      :O OBJECT))

(define-category back :specializes perdurant
    :binds
    ((subject endurant)) 
    :realization 
      (:verb "back"
      :ETF (sv)
      :S SUBJECT))

(define-category bandage :specializes perdurant
    :binds
    ((subject endurant)) 
    :realization 
      (:verb "bandage"
      :ETF (sv)
      :S SUBJECT))

(define-category become :specializes perdurant
    :binds
    ((subject endurant)
     (object endurant)) 
    :realization 
      (:verb "become"
      :ETF (svo-passive)
      :S SUBJECT
      :O OBJECT))

(define-category begin :specializes perdurant
    :binds
    ((subject endurant)) 
    :realization 
      (:verb "begin"
      :ETF (sv)
      :S SUBJECT))

(define-category believe :specializes perdurant
    :binds
    ((subject endurant)
     (object endurant)) 
    :realization 
      (:verb "believe"
      :ETF (svo-passive)
      :S SUBJECT
      :O OBJECT))

(define-category blockade :specializes perdurant
    :binds
    ((subject endurant)
     (of endurant)) 
    :realization 
      (:verb "blockade"
      :ETF (sv)
      :S SUBJECT
      :OF OF))

(define-category blot :specializes perdurant
    :binds
    ((subject endurant)
     (with endurant)) 
    :realization 
      (:verb "blot"
      :ETF (sv)
      :S SUBJECT
      :WITH WITH))

(define-category border :specializes perdurant
    :binds
    ((subject endurant)
     (in endurant)) 
    :realization 
      (:verb "border"
      :ETF (sv)
      :S SUBJECT
      :IN IN))

(define-category bottom :specializes perdurant
    :binds
    ((subject endurant)) 
    :realization 
      (:verb "bottom"
      :ETF (sv)
      :S SUBJECT))

(define-category brain :specializes perdurant
    :binds
    ((subject endurant)
     (of endurant)) 
    :realization 
      (:verb "brain"
      :ETF (sv)
      :S SUBJECT
      :OF OF))

(define-category branch :specializes perdurant
    :binds
    ((subject endurant)
     (of endurant)) 
    :realization 
      (:verb "branch"
      :ETF (sv)
      :S SUBJECT
      :OF OF))

(define-category breach :specializes perdurant
    :binds
    ((subject endurant)
     (object endurant)) 
    :realization 
      (:verb "breach"
      :ETF (svo-passive)
      :S SUBJECT
      :O OBJECT))

(define-category brief :specializes perdurant
    :binds
    ((subject endurant)) 
    :realization 
      (:verb "brief"
      :ETF (sv)
      :S SUBJECT))

(define-category calculate :specializes perdurant
    :binds
    ((subject endurant)
     (object endurant)
     (in endurant)
     (by endurant)
     (as endurant)
     (for endurant)) 
    :realization 
      (:verb "calculate"
      :ETF (svo-passive)
      :S SUBJECT
      :O OBJECT
      :IN IN
      :BY BY
      :AS AS
      :FOR FOR))

(define-category capture :specializes perdurant
    :binds
    ((subject endurant)
     (object endurant)
     (in endurant)
     (by endurant)
     (with endurant)) 
    :realization 
      (:verb "capture"
      :ETF (svo-passive)
      :S SUBJECT
      :O OBJECT
      :IN IN
      :BY BY
      :WITH WITH))

(define-category care :specializes perdurant
    :binds
    ((subject endurant)
     (of endurant)) 
    :realization 
      (:verb "care"
      :ETF (sv)
      :S SUBJECT
      :OF OF))

(define-category carry :specializes perdurant
    :binds
    ((subject endurant)
     (object endurant)) 
    :realization 
      (:verb "carry"
      :ETF (svo-passive)
      :S SUBJECT
      :O OBJECT))

(define-category case :specializes perdurant
    :binds
    ((subject endurant)
     (of endurant)
     (in endurant)) 
    :realization 
      (:verb "case"
      :ETF (sv)
      :S SUBJECT
      :OF OF
      :IN IN))

(define-category center :specializes perdurant
    :binds
    ((subject endurant)
     (for endurant)
     (of endurant)) 
    :realization 
      (:verb "center"
      :ETF (sv)
      :S SUBJECT
      :FOR FOR
      :OF OF))

(define-category chain :specializes perdurant
    :binds
    ((subject endurant)
     (of endurant)) 
    :realization 
      (:verb "chain"
      :ETF (sv)
      :S SUBJECT
      :OF OF))

(define-category change :specializes perdurant
    :binds
    ((subject endurant)
     (during endurant)
     (in endurant)) 
    :realization 
      (:verb "change"
      :ETF (sv)
      :S SUBJECT
      :DURING DURING
      :IN IN))

(define-category channel :specializes perdurant
    :binds
    ((subject endurant)
     (into endurant)
     (from endurant)
     (in endurant)) 
    :realization 
      (:verb "channel"
      :ETF (sv)
      :S SUBJECT
      :INTO INTO
      :FROM FROM
      :IN IN))

(define-category characterize :specializes perdurant
    :binds
    ((subject endurant)
     (object endurant)
     (as endurant)
     (in endurant)
     (by endurant)) 
    :realization 
      (:verb "characterize"
      :ETF (svo-passive)
      :S SUBJECT
      :O OBJECT
      :AS AS
      :IN IN
      :BY BY))

(define-category charge :specializes perdurant
    :binds
    ((subject endurant)) 
    :realization 
      (:verb "charge"
      :ETF (sv)
      :S SUBJECT))

(define-category circle :specializes perdurant
    :binds
    ((subject endurant)) 
    :realization 
      (:verb "circle"
      :ETF (sv)
      :S SUBJECT))

(define-category claim :specializes perdurant
    :binds
    ((subject endurant)) 
    :realization 
      (:verb "claim"
      :ETF (sv)
      :S SUBJECT))

(define-category cleave :specializes perdurant
    :binds
    ((subject endurant)
     (object endurant)) 
    :realization 
      (:verb "cleave"
      :ETF (svo-passive)
      :S SUBJECT
      :O OBJECT))

(define-category cluster :specializes perdurant
    :binds
    ((subject endurant)
     (object endurant)) 
    :realization 
      (:verb "cluster"
      :ETF (svo-passive)
      :S SUBJECT
      :O OBJECT))

(define-category code :specializes perdurant
    :binds
    ((subject endurant)
     (object endurant)) 
    :realization 
      (:verb "code"
      :ETF (svo-passive)
      :S SUBJECT
      :O OBJECT))

(define-category coincide :specializes perdurant
    :binds
    ((subject endurant)
     (with endurant)) 
    :realization 
      (:verb "coincide"
      :ETF (sv)
      :S SUBJECT
      :WITH WITH))

(define-category colocalize :specializes perdurant
    :binds
    ((subject endurant)
     (with endurant)) 
    :realization 
      (:verb "colocalize"
      :ETF (sv)
      :S SUBJECT
      :WITH WITH))

(define-category combine :specializes perdurant
    :binds
    ((subject endurant)
     (object endurant)
     (with endurant)) 
    :realization 
      (:verb "combine"
      :ETF (svo-passive)
      :S SUBJECT
      :O OBJECT
      :WITH WITH))

(define-category come :specializes perdurant
    :binds
    ((subject endurant)
     (to endurant)
     (from endurant)) 
    :realization 
      (:verb "come"
      :ETF (sv)
      :S SUBJECT
      :TO TO
      :FROM FROM))

(define-category compound :specializes perdurant
    :binds
    ((subject endurant)) 
    :realization 
      (:verb "compound"
      :ETF (sv)
      :S SUBJECT))

(define-category comprise :specializes perdurant
    :binds
    ((subject endurant)
     (object endurant)
     (of endurant)) 
    :realization 
      (:verb "comprise"
      :ETF (svo-passive)
      :S SUBJECT
      :O OBJECT
      :OF OF))

(define-category conceive :specializes perdurant
    :binds
    ((subject endurant)
     (object endurant)
     (by endurant)) 
    :realization 
      (:verb "conceive"
      :ETF (svo-passive)
      :S SUBJECT
      :O OBJECT
      :BY BY))

(define-category concern :specializes perdurant
    :binds
    ((subject endurant)
     (object endurant)) 
    :realization 
      (:verb "concern"
      :ETF (svo-passive)
      :S SUBJECT
      :O OBJECT))

(define-category concert :specializes perdurant
    :binds
    ((subject endurant)) 
    :realization 
      (:verb "concert"
      :ETF (sv)
      :S SUBJECT))

(define-category condition :specializes perdurant
    :binds
    ((subject endurant)
     (for endurant)
     (of endurant)) 
    :realization 
      (:verb "condition"
      :ETF (sv)
      :S SUBJECT
      :FOR FOR
      :OF OF))

(define-category confirm :specializes perdurant
    :binds
    ((subject endurant)
     (object endurant)
     (by endurant)) 
    :realization 
      (:verb "confirm"
      :ETF (svo-passive)
      :S SUBJECT
      :O OBJECT
      :BY BY))

(define-category conjugate :specializes perdurant
    :binds
    ((subject endurant)
     (object endurant)
     (to endurant)) 
    :realization 
      (:verb "conjugate"
      :ETF (svo-passive)
      :S SUBJECT
      :O OBJECT
      :TO TO))

(define-category connect :specializes perdurant
    :binds
    ((subject endurant)
     (object endurant)) 
    :realization 
      (:verb "connect"
      :ETF (svo-passive)
      :S SUBJECT
      :O OBJECT))

(define-category consist :specializes perdurant
    :binds
    ((subject endurant)
     (of endurant)) 
    :realization 
      (:verb "consist"
      :ETF (sv)
      :S SUBJECT
      :OF OF))

(define-category contact :specializes perdurant
    :binds
    ((subject endurant)
     (between endurant)) 
    :realization 
      (:verb "contact"
      :ETF (sv)
      :S SUBJECT
      :BETWEEN BETWEEN))

(define-category contract :specializes perdurant
    :binds
    ((subject endurant)
     (object endurant)) 
    :realization 
      (:verb "contract"
      :ETF (svo-passive)
      :S SUBJECT
      :O OBJECT))

(define-category contradict :specializes perdurant
    :binds
    ((subject endurant)
     (object endurant)) 
    :realization 
      (:verb "contradict"
      :ETF (svo-passive)
      :S SUBJECT
      :O OBJECT))

(define-category convert :specializes perdurant
    :binds
    ((subject endurant)
     (object endurant)
     (from endurant)
     (to endurant)) 
    :realization 
      (:verb "convert"
      :ETF (svo-passive)
      :S SUBJECT
      :O OBJECT
      :FROM FROM
      :TO TO))

(define-category coordinate :specializes perdurant
    :binds
    ((subject endurant)
     (object endurant)
     (with endurant)) 
    :realization 
      (:verb "coordinate"
      :ETF (svo-passive)
      :S SUBJECT
      :O OBJECT
      :WITH WITH))

(define-category cord :specializes perdurant
    :binds
    ((subject endurant)
     (in endurant)
     (of endurant)) 
    :realization 
      (:verb "cord"
      :ETF (sv)
      :S SUBJECT
      :IN IN
      :OF OF))

(define-category correct :specializes perdurant
    :binds
    ((subject endurant)
     (object endurant)) 
    :realization 
      (:verb "correct"
      :ETF (svo-passive)
      :S SUBJECT
      :O OBJECT))

(define-category correlate :specializes perdurant
    :binds
    ((subject endurant)
     (object endurant)
     (with endurant)) 
    :realization 
      (:verb "correlate"
      :ETF (svo-passive)
      :S SUBJECT
      :O OBJECT
      :WITH WITH))

(define-category count :specializes perdurant
    :binds
    ((subject endurant)
     (object endurant)
     (after endurant)
     (with endurant)
     (in endurant)) 
    :realization 
      (:verb "count"
      :ETF (svo-passive)
      :S SUBJECT
      :O OBJECT
      :AFTER AFTER
      :WITH WITH
      :IN IN))

(define-category couple :specializes perdurant
    :binds
    ((subject endurant)
     (object endurant)
     (with endurant)) 
    :realization 
      (:verb "couple"
      :ETF (svo-passive)
      :S SUBJECT
      :O OBJECT
      :WITH WITH))

(define-category course :specializes perdurant
    :binds
    ((subject endurant)
     (of endurant)) 
    :realization 
      (:verb "course"
      :ETF (sv)
      :S SUBJECT
      :OF OF))

(define-category curve :specializes perdurant
    :binds
    ((subject endurant)
     (from endurant)
     (of endurant)) 
    :realization 
      (:verb "curve"
      :ETF (sv)
      :S SUBJECT
      :FROM FROM
      :OF OF))

(define-category cut :specializes perdurant
    :binds
    ((subject endurant)
     (object endurant)
     (to endurant)
     (in endurant)) 
    :realization 
      (:verb "cut"
      :ETF (svo-passive)
      :S SUBJECT
      :O OBJECT
      :TO TO
      :IN IN))

(define-category declare :specializes perdurant
    :binds
    ((subject endurant)
     (object endurant)) 
    :realization 
      (:verb "declare"
      :ETF (svo-passive)
      :S SUBJECT
      :O OBJECT))

(define-category define :specializes perdurant
    :binds
    ((subject endurant)
     (object endurant)
     (by endurant)
     (as endurant)) 
    :realization 
      (:verb "define"
      :ETF (svo-passive)
      :S SUBJECT
      :O OBJECT
      :BY BY
      :AS AS))

(define-category delete :specializes perdurant
    :binds
    ((subject endurant)
     (object endurant)) 
    :realization 
      (:verb "delete"
      :ETF (svo-passive)
      :S SUBJECT
      :O OBJECT))

(define-category demarcate :specializes perdurant
    :binds
    ((subject endurant)
     (object endurant)) 
    :realization 
      (:verb "demarcate"
      :ETF (svo-passive)
      :S SUBJECT
      :O OBJECT))

(define-category deregulate :specializes perdurant
    :binds
    ((subject endurant)
     (object endurant)) 
    :realization 
      (:verb "deregulate"
      :ETF (svo-passive)
      :S SUBJECT
      :O OBJECT))

(define-category derive :specializes perdurant
    :binds
    ((subject endurant)
     (object endurant)
     (from endurant)) 
    :realization 
      (:verb "derive"
      :ETF (svo-passive)
      :S SUBJECT
      :O OBJECT
      :FROM FROM))

(define-category design :specializes perdurant
    :binds
    ((subject endurant)
     (object endurant)
     (toward endurant)
     (into endurant)
     (by endurant)
     (against endurant)) 
    :realization 
      (:verb "design"
      :ETF (svo-passive)
      :S SUBJECT
      :O OBJECT
      :TOWARD TOWARD
      :INTO INTO
      :BY BY
      :AGAINST AGAINST))

(define-category detail :specializes perdurant
    :binds
    ((subject endurant)
     (about endurant)
     (of endurant)) 
    :realization 
      (:verb "detail"
      :ETF (sv)
      :S SUBJECT
      :ABOUT ABOUT
      :OF OF))

(define-category differentiate :specializes perdurant
    :binds
    ((subject endurant)
     (object endurant)
     (in endurant)
     (into endurant)) 
    :realization 
      (:verb "differentiate"
      :ETF (svo-passive)
      :S SUBJECT
      :O OBJECT
      :IN IN
      :INTO INTO))

(define-category direct :specializes perdurant
    :binds
    ((subject endurant)
     (object endurant)
     (by endurant)
     (toward endurant)
     (against endurant)) 
    :realization 
      (:verb "direct"
      :ETF (svo-passive)
      :S SUBJECT
      :O OBJECT
      :BY BY
      :TOWARD TOWARD
      :AGAINST AGAINST))

(define-category dish :specializes perdurant
    :binds
    ((subject endurant)
     (with endurant)) 
    :realization 
      (:verb "dish"
      :ETF (sv)
      :S SUBJECT
      :WITH WITH))

(define-category disorder :specializes perdurant
    :binds
    ((subject endurant)) 
    :realization 
      (:verb "disorder"
      :ETF (sv)
      :S SUBJECT))

(define-category distinguish :specializes perdurant
    :binds
    ((subject endurant)
     (object endurant)
     (by endurant)
     (between endurant)) 
    :realization 
      (:verb "distinguish"
      :ETF (svo-passive)
      :S SUBJECT
      :O OBJECT
      :BY BY
      :BETWEEN BETWEEN))

(define-category divide :specializes perdurant
    :binds
    ((subject endurant)
     (object endurant)
     (by endurant)
     (into endurant)) 
    :realization 
      (:verb "divide"
      :ETF (svo-passive)
      :S SUBJECT
      :O OBJECT
      :BY BY
      :INTO INTO))

(define-category donate :specializes perdurant
    :binds
    ((subject endurant)
     (object endurant)
     (by endurant)) 
    :realization 
      (:verb "donate"
      :ETF (svo-passive)
      :S SUBJECT
      :O OBJECT
      :BY BY))

(define-category dose :specializes perdurant
    :binds
    ((subject endurant)
     (of endurant)) 
    :realization 
      (:verb "dose"
      :ETF (sv)
      :S SUBJECT
      :OF OF))

(define-category drop :specializes perdurant
    :binds
    ((subject endurant)
     (in endurant)) 
    :realization 
      (:verb "drop"
      :ETF (sv)
      :S SUBJECT
      :IN IN))

(define-category dry :specializes perdurant
    :binds
    ((subject endurant)
     (at endurant)) 
    :realization 
      (:verb "dry"
      :ETF (sv)
      :S SUBJECT
      :AT AT))

(define-category dye :specializes perdurant
    :binds
    ((subject endurant)) 
    :realization 
      (:verb "dye"
      :ETF (sv)
      :S SUBJECT))

(define-category edge :specializes perdurant
    :binds
    ((subject endurant)
     (of endurant)) 
    :realization 
      (:verb "edge"
      :ETF (sv)
      :S SUBJECT
      :OF OF))

(define-category emerge :specializes perdurant
    :binds
    ((subject endurant)
     (object endurant)
     (as endurant)) 
    :realization 
      (:verb "emerge"
      :ETF (svo-passive)
      :S SUBJECT
      :O OBJECT
      :AS AS))

(define-category empty :specializes perdurant
    :binds
    ((subject endurant)) 
    :realization 
      (:verb "empty"
      :ETF (sv)
      :S SUBJECT))

(define-category enable :specializes perdurant
    :binds
    ((subject endurant)
     (object endurant)
     (by endurant)) 
    :realization 
      (:verb "enable"
      :ETF (svo-passive)
      :S SUBJECT
      :O OBJECT
      :BY BY))

(define-category engineer :specializes perdurant
    :binds
    ((subject endurant)
     (object endurant)
     (before endurant)) 
    :realization 
      (:verb "engineer"
      :ETF (svo-passive)
      :S SUBJECT
      :O OBJECT
      :BEFORE BEFORE))

(define-category enlarge :specializes perdurant
    :binds
    ((subject endurant)) 
    :realization 
      (:verb "enlarge"
      :ETF (sv)
      :S SUBJECT))

(define-category enrich :specializes perdurant
    :binds
    ((subject endurant)
     (object endurant)
     (for endurant)
     (from endurant)
     (in endurant)) 
    :realization 
      (:verb "enrich"
      :ETF (svo-passive)
      :S SUBJECT
      :O OBJECT
      :FOR FOR
      :FROM FROM
      :IN IN))

(define-category equip :specializes perdurant
    :binds
    ((subject endurant)
     (object endurant)
     (with endurant)) 
    :realization 
      (:verb "equip"
      :ETF (svo-passive)
      :S SUBJECT
      :O OBJECT
      :WITH WITH))

(define-category estimate :specializes perdurant
    :binds
    ((subject endurant)
     (object endurant)) 
    :realization 
      (:verb "estimate"
      :ETF (svo-passive)
      :S SUBJECT
      :O OBJECT))

(define-category evaluate :specializes perdurant
    :binds
    ((subject endurant)
     (object endurant)
     (in endurant)
     (by endurant)) 
    :realization 
      (:verb "evaluate"
      :ETF (svo-passive)
      :S SUBJECT
      :O OBJECT
      :IN IN
      :BY BY))

(define-category evidence :specializes perdurant
    :binds
    ((subject endurant)
     (of endurant)
     (for endurant)) 
    :realization 
      (:verb "evidence"
      :ETF (sv)
      :S SUBJECT
      :OF OF
      :FOR FOR))

(define-category evoke :specializes perdurant
    :binds
    ((subject endurant)
     (by endurant)) 
    :realization 
      (:verb "evoke"
      :ETF (sv)
      :S SUBJECT
      :BY BY))

(define-category evolve :specializes perdurant
    :binds
    ((subject endurant)
     (as endurant)
     (from endurant)) 
    :realization 
      (:verb "evolve"
      :ETF (sv)
      :S SUBJECT
      :AS AS
      :FROM FROM))

(define-category exacerbate :specializes perdurant
    :binds
    ((subject endurant)
     (object endurant)
     (by endurant)) 
    :realization 
      (:verb "exacerbate"
      :ETF (svo-passive)
      :S SUBJECT
      :O OBJECT
      :BY BY))

(define-category exact :specializes perdurant
    :binds
    ((subject endurant)) 
    :realization 
      (:verb "exact"
      :ETF (sv)
      :S SUBJECT))

(define-category excise :specializes perdurant
    :binds
    ((subject endurant)
     (object endurant)) 
    :realization 
      (:verb "excise"
      :ETF (svo-passive)
      :S SUBJECT
      :O OBJECT))

(define-category exclude :specializes perdurant
    :binds
    ((subject endurant)
     (object endurant)) 
    :realization 
      (:verb "exclude"
      :ETF (svo-passive)
      :S SUBJECT
      :O OBJECT))

(define-category exert :specializes perdurant
    :binds
    ((subject endurant)
     (object endurant)) 
    :realization 
      (:verb "exert"
      :ETF (svo-passive)
      :S SUBJECT
      :O OBJECT))

(define-category exit :specializes perdurant
    :binds
    ((subject endurant)) 
    :realization 
      (:verb "exit"
      :ETF (sv)
      :S SUBJECT))

(define-category expand :specializes perdurant
    :binds
    ((subject endurant)
     (object endurant)) 
    :realization 
      (:verb "expand"
      :ETF (svo-passive)
      :S SUBJECT
      :O OBJECT))

(define-category exploit :specializes perdurant
    :binds
    ((subject endurant)) 
    :realization 
      (:verb "exploit"
      :ETF (sv)
      :S SUBJECT))

(define-category explore :specializes perdurant
    :binds
    ((subject endurant)
     (about endurant)) 
    :realization 
      (:verb "explore"
      :ETF (sv)
      :S SUBJECT
      :ABOUT ABOUT))

(define-category expose :specializes perdurant
    :binds
    ((subject endurant)
     (object endurant)
     (to endurant)) 
    :realization 
      (:verb "expose"
      :ETF (svo-passive)
      :S SUBJECT
      :O OBJECT
      :TO TO))

(define-category extend :specializes perdurant
    :binds
    ((subject endurant)
     (object endurant)
     (into endurant)) 
    :realization 
      (:verb "extend"
      :ETF (svo-passive)
      :S SUBJECT
      :O OBJECT
      :INTO INTO))

(define-category extract :specializes perdurant
    :binds
    ((subject endurant)
     (object endurant)
     (with endurant)
     (from endurant)) 
    :realization 
      (:verb "extract"
      :ETF (svo-passive)
      :S SUBJECT
      :O OBJECT
      :WITH WITH
      :FROM FROM))

(define-category fabricate :specializes perdurant
    :binds
    ((subject endurant)
     (object endurant)) 
    :realization 
      (:verb "fabricate"
      :ETF (svo-passive)
      :S SUBJECT
      :O OBJECT))

(define-category facilitate :specializes perdurant
    :binds
    ((subject endurant)
     (object endurant)) 
    :realization 
      (:verb "facilitate"
      :ETF (svo-passive)
      :S SUBJECT
      :O OBJECT))

(define-category faint :specializes perdurant
    :binds
    ((subject endurant)) 
    :realization 
      (:verb "faint"
      :ETF (sv)
      :S SUBJECT))

(define-category farm :specializes perdurant
    :binds
    ((subject endurant)) 
    :realization 
      (:verb "farm"
      :ETF (sv)
      :S SUBJECT))

(define-category fast :specializes perdurant
    :binds
    ((subject endurant)) 
    :realization 
      (:verb "fast"
      :ETF (sv)
      :S SUBJECT))

(define-category fat :specializes perdurant
    :binds
    ((subject endurant)) 
    :realization 
      (:verb "fat"
      :ETF (sv)
      :S SUBJECT))

(define-category field :specializes perdurant
    :binds
    ((subject endurant)
     (for endurant)
     (of endurant)) 
    :realization 
      (:verb "field"
      :ETF (sv)
      :S SUBJECT
      :FOR FOR
      :OF OF))

(define-category file :specializes perdurant
    :binds
    ((subject endurant)) 
    :realization 
      (:verb "file"
      :ETF (sv)
      :S SUBJECT))

(define-category fill :specializes perdurant
    :binds
    ((subject endurant)
     (object endurant)
     (with endurant)) 
    :realization 
      (:verb "fill"
      :ETF (svo-passive)
      :S SUBJECT
      :O OBJECT
      :WITH WITH))

(define-category film :specializes perdurant
    :binds
    ((subject endurant)) 
    :realization 
      (:verb "film"
      :ETF (sv)
      :S SUBJECT))

(define-category filter :specializes perdurant
    :binds
    ((subject endurant)
     (for endurant)) 
    :realization 
      (:verb "filter"
      :ETF (sv)
      :S SUBJECT
      :FOR FOR))

(define-category flank :specializes perdurant
    :binds
    ((subject endurant)
     (object endurant)) 
    :realization 
      (:verb "flank"
      :ETF (svo-passive)
      :S SUBJECT
      :O OBJECT))

(define-category fold :specializes perdurant
    :binds
    ((subject endurant)) 
    :realization 
      (:verb "fold"
      :ETF (sv)
      :S SUBJECT))

(define-category force :specializes perdurant
    :binds
    ((subject endurant)) 
    :realization 
      (:verb "force"
      :ETF (sv)
      :S SUBJECT))

(define-category form :specializes perdurant
    :binds
    ((subject endurant)
     (object endurant)
     (for endurant)
     (by endurant)
     (from endurant)) 
    :realization 
      (:verb "form"
      :ETF (svo-passive)
      :S SUBJECT
      :O OBJECT
      :FOR FOR
      :BY BY
      :FROM FROM))

(define-category formulate :specializes perdurant
    :binds
    ((subject endurant)) 
    :realization 
      (:verb "formulate"
      :ETF (sv)
      :S SUBJECT))

(define-category front :specializes perdurant
    :binds
    ((subject endurant)
     (of endurant)) 
    :realization 
      (:verb "front"
      :ETF (sv)
      :S SUBJECT
      :OF OF))

(define-category function :specializes perdurant
    :binds
    ((subject endurant)
     (during endurant)
     (to endurant)
     (with endurant)
     (at endurant)
     (through endurant)
     (for endurant)
     (as endurant)
     (before endurant)
     (of endurant)
     (in endurant)) 
    :realization 
      (:verb "function"
      :ETF (sv)
      :S SUBJECT
      :DURING DURING
      :TO TO
      :WITH WITH
      :AT AT
      :THROUGH THROUGH
      :FOR FOR
      :AS AS
      :BEFORE BEFORE
      :OF OF
      :IN IN))

(define-category fuse :specializes perdurant
    :binds
    ((subject endurant)
     (object endurant)
     (to endurant)
     (with endurant)
     (of endurant)) 
    :realization 
      (:verb "fuse"
      :ETF (svo-passive)
      :S SUBJECT
      :O OBJECT
      :TO TO
      :WITH WITH
      :OF OF))

(define-category gain :specializes perdurant
    :binds
    ((subject endurant)
     (of endurant)) 
    :realization 
      (:verb "gain"
      :ETF (sv)
      :S SUBJECT
      :OF OF))

(define-category gate :specializes perdurant
    :binds
    ((subject endurant)) 
    :realization 
      (:verb "gate"
      :ETF (sv)
      :S SUBJECT))

(define-category gel :specializes perdurant
    :binds
    ((subject endurant)
     (for endurant)) 
    :realization 
      (:verb "gel"
      :ETF (sv)
      :S SUBJECT
      :FOR FOR))

(define-category gift :specializes perdurant
    :binds
    ((subject endurant)
     (of endurant)
     (from endurant)) 
    :realization 
      (:verb "gift"
      :ETF (sv)
      :S SUBJECT
      :OF OF
      :FROM FROM))

(define-category glass :specializes perdurant
    :binds
    ((subject endurant)) 
    :realization 
      (:verb "glass"
      :ETF (sv)
      :S SUBJECT))

(define-category grade :specializes perdurant
    :binds
    ((subject endurant)) 
    :realization 
      (:verb "grade"
      :ETF (sv)
      :S SUBJECT))

(define-category graft :specializes perdurant
    :binds
    ((subject endurant)) 
    :realization 
      (:verb "graft"
      :ETF (sv)
      :S SUBJECT))

(define-category harbor :specializes perdurant
    :binds
    ((subject endurant)
     (object endurant)) 
    :realization 
      (:verb "harbor"
      :ETF (svo-passive)
      :S SUBJECT
      :O OBJECT))

(define-category harvest :specializes perdurant
    :binds
    ((subject endurant)
     (object endurant)
     (by endurant)
     (from endurant)) 
    :realization 
      (:verb "harvest"
      :ETF (svo-passive)
      :S SUBJECT
      :O OBJECT
      :BY BY
      :FROM FROM))

(define-category head :specializes perdurant
    :binds
    ((subject endurant)
     (to endurant)
     (of endurant)
     (toward endurant)) 
    :realization 
      (:verb "head"
      :ETF (sv)
      :S SUBJECT
      :TO TO
      :OF OF
      :TOWARD TOWARD))

(define-category heat :specializes perdurant
    :binds
    ((subject endurant)) 
    :realization 
      (:verb "heat"
      :ETF (sv)
      :S SUBJECT))

(define-category help :specializes perdurant
    :binds
    ((subject endurant)
     (with endurant)
     (in endurant)) 
    :realization 
      (:verb "help"
      :ETF (sv)
      :S SUBJECT
      :WITH WITH
      :IN IN))

(define-category highlight :specializes perdurant
    :binds
    ((subject endurant)
     (object endurant)
     (in endurant)) 
    :realization 
      (:verb "highlight"
      :ETF (svo-passive)
      :S SUBJECT
      :O OBJECT
      :IN IN))

(define-category hold :specializes perdurant
    :binds
    ((subject endurant)
     (object endurant)
     (at endurant)) 
    :realization 
      (:verb "hold"
      :ETF (svo-passive)
      :S SUBJECT
      :O OBJECT
      :AT AT))

(define-category ice :specializes perdurant
    :binds
    ((subject endurant)
     (for endurant)) 
    :realization 
      (:verb "ice"
      :ETF (sv)
      :S SUBJECT
      :FOR FOR))

(define-category ignal :specializes perdurant
    :binds
    ((subject endurant)) 
    :realization 
      (:verb "ignal"
      :ETF (sv)
      :S SUBJECT))

(define-category image :specializes perdurant
    :binds
    ((subject endurant)
     (in endurant)
     (from endurant)
     (of endurant)) 
    :realization 
      (:verb "image"
      :ETF (sv)
      :S SUBJECT
      :IN IN
      :FROM FROM
      :OF OF))

(define-category immobilize :specializes perdurant
    :binds
    ((subject endurant)
     (object endurant)
     (in endurant)
     (with endurant)) 
    :realization 
      (:verb "immobilize"
      :ETF (svo-passive)
      :S SUBJECT
      :O OBJECT
      :IN IN
      :WITH WITH))

(define-category immortalize :specializes perdurant
    :binds
    ((subject endurant)
     (object endurant)) 
    :realization 
      (:verb "immortalize"
      :ETF (svo-passive)
      :S SUBJECT
      :O OBJECT))

(define-category implicate :specializes perdurant
    :binds
    ((subject endurant)
     (object endurant)
     (in endurant)) 
    :realization 
      (:verb "implicate"
      :ETF (svo-passive)
      :S SUBJECT
      :O OBJECT
      :IN IN))

(define-category imply :specializes perdurant
    :binds
    ((subject endurant)) 
    :realization 
      (:verb "imply"
      :ETF (sv)
      :S SUBJECT))

(define-category include :specializes perdurant
    :binds
    ((subject endurant)
     (object endurant)
     (in endurant)) 
    :realization 
      (:verb "include"
      :ETF (svo-passive)
      :S SUBJECT
      :O OBJECT
      :IN IN))

(define-category infect :specializes perdurant
    :binds
    ((subject endurant)
     (object endurant)
     (with endurant)) 
    :realization 
      (:verb "infect"
      :ETF (svo-passive)
      :S SUBJECT
      :O OBJECT
      :WITH WITH))

(define-category infiltrate :specializes perdurant
    :binds
    ((subject endurant)
     (object endurant)) 
    :realization 
      (:verb "infiltrate"
      :ETF (svo-passive)
      :S SUBJECT
      :O OBJECT))

(define-category initiate :specializes perdurant
    :binds
    ((subject endurant)
     (object endurant)
     (as endurant)
     (at endurant)
     (with endurant)) 
    :realization 
      (:verb "initiate"
      :ETF (svo-passive)
      :S SUBJECT
      :O OBJECT
      :AS AS
      :AT AT
      :WITH WITH))

(define-category inject :specializes perdurant
    :binds
    ((subject endurant)
     (object endurant)
     (in endurant)
     (into endurant)
     (at endurant)
     (with endurant)) 
    :realization 
      (:verb "inject"
      :ETF (svo-passive)
      :S SUBJECT
      :O OBJECT
      :IN IN
      :INTO INTO
      :AT AT
      :WITH WITH))

(define-category insert :specializes perdurant
    :binds
    ((subject endurant)
     (in endurant)) 
    :realization 
      (:verb "insert"
      :ETF (sv)
      :S SUBJECT
      :IN IN))

(define-category inset :specializes perdurant
    :binds
    ((subject endurant)) 
    :realization 
      (:verb "inset"
      :ETF (sv)
      :S SUBJECT))

(define-category integrate :specializes perdurant
    :binds
    ((subject endurant)
     (object endurant)
     (with endurant)
     (into endurant)) 
    :realization 
      (:verb "integrate"
      :ETF (svo-passive)
      :S SUBJECT
      :O OBJECT
      :WITH WITH
      :INTO INTO))

(define-category interest :specializes perdurant
    :binds
    ((subject endurant)
     (for endurant)
     (in endurant)) 
    :realization 
      (:verb "interest"
      :ETF (sv)
      :S SUBJECT
      :FOR FOR
      :IN IN))

(define-category internalize :specializes perdurant
    :binds
    ((subject endurant)
     (object endurant)
     (by endurant)
     (via endurant)) 
    :realization 
      (:verb "internalize"
      :ETF (svo-passive)
      :S SUBJECT
      :O OBJECT
      :BY BY
      :VIA VIA))

(define-category interrupt :specializes perdurant
    :binds
    ((subject endurant)
     (object endurant)
     (by endurant)) 
    :realization 
      (:verb "interrupt"
      :ETF (svo-passive)
      :S SUBJECT
      :O OBJECT
      :BY BY))

(define-category introduce :specializes perdurant
    :binds
    ((subject endurant)
     (object endurant)
     (in endurant)
     (into endurant)) 
    :realization 
      (:verb "introduce"
      :ETF (svo-passive)
      :S SUBJECT
      :O OBJECT
      :IN IN
      :INTO INTO))

(define-category invade :specializes perdurant
    :binds
    ((subject endurant)
     (object endurant)
     (into endurant)
     (through endurant)) 
    :realization 
      (:verb "invade"
      :ETF (svo-passive)
      :S SUBJECT
      :O OBJECT
      :INTO INTO
      :THROUGH THROUGH))

(define-category invoke :specializes perdurant
    :binds
    ((subject endurant)
     (object endurant)) 
    :realization 
      (:verb "invoke"
      :ETF (svo-passive)
      :S SUBJECT
      :O OBJECT))

(define-category isolate :specializes perdurant
    :binds
    ((subject endurant)
     (object endurant)
     (by endurant)
     (for endurant)
     (in endurant)
     (from endurant)) 
    :realization 
      (:verb "isolate"
      :ETF (svo-passive)
      :S SUBJECT
      :O OBJECT
      :BY BY
      :FOR FOR
      :IN IN
      :FROM FROM))

(define-category issue :specializes perdurant
    :binds
    ((subject endurant)) 
    :realization 
      (:verb "issue"
      :ETF (sv)
      :S SUBJECT))

(define-category judge :specializes perdurant
    :binds
    ((subject endurant)
     (object endurant)
     (by endurant)) 
    :realization 
      (:verb "judge"
      :ETF (svo-passive)
      :S SUBJECT
      :O OBJECT
      :BY BY))

(define-category kill :specializes perdurant
    :binds
    ((subject endurant)
     (object endurant)
     (by endurant)) 
    :realization 
      (:verb "kill"
      :ETF (svo-passive)
      :S SUBJECT
      :O OBJECT
      :BY BY))

(define-category kit :specializes perdurant
    :binds
    ((subject endurant)
     (with endurant)) 
    :realization 
      (:verb "kit"
      :ETF (sv)
      :S SUBJECT
      :WITH WITH))

(define-category knock :specializes perdurant
    :binds
    ((subject endurant)
     (object endurant)) 
    :realization 
      (:verb "knock"
      :ETF (svo-passive)
      :S SUBJECT
      :O OBJECT))

(define-category lack :specializes perdurant
    :binds
    ((subject endurant)
     (object endurant)) 
    :realization 
      (:verb "lack"
      :ETF (svo-passive)
      :S SUBJECT
      :O OBJECT))

(define-category last :specializes perdurant
    :binds
    ((subject endurant)) 
    :realization 
      (:verb "last"
      :ETF (sv)
      :S SUBJECT))

(define-category layer :specializes perdurant
    :binds
    ((subject endurant)
     (of endurant)) 
    :realization 
      (:verb "layer"
      :ETF (sv)
      :S SUBJECT
      :OF OF))

(define-category learn :specializes perdurant
    :binds
    ((subject endurant)
     (object endurant)) 
    :realization 
      (:verb "learn"
      :ETF (svo-passive)
      :S SUBJECT
      :O OBJECT))

(define-category leave :specializes perdurant
    :binds
    ((subject endurant)
     (object endurant)) 
    :realization 
      (:verb "leave"
      :ETF (svo-passive)
      :S SUBJECT
      :O OBJECT))

(define-category light :specializes perdurant
    :binds
    ((subject endurant)) 
    :realization 
      (:verb "light"
      :ETF (sv)
      :S SUBJECT))

(define-category link :specializes perdurant
    :binds
    ((subject endurant)
     (object endurant)
     (in endurant)
     (to endurant)) 
    :realization 
      (:verb "link"
      :ETF (svo-passive)
      :S SUBJECT
      :O OBJECT
      :IN IN
      :TO TO))

(define-category load :specializes perdurant
    :binds
    ((subject endurant)
     (object endurant)
     (onto endurant)
     (with endurant)) 
    :realization 
      (:verb "load"
      :ETF (svo-passive)
      :S SUBJECT
      :O OBJECT
      :ONTO ONTO
      :WITH WITH))

(define-category localize :specializes perdurant
    :binds
    ((subject endurant)
     (object endurant)
     (on endurant)
     (in endurant)
     (to endurant)) 
    :realization 
      (:verb "localize"
      :ETF (svo-passive)
      :S SUBJECT
      :O OBJECT
      :ON ON
      :IN IN
      :TO TO))

(define-category machine :specializes perdurant
    :binds
    ((subject endurant)) 
    :realization 
      (:verb "machine"
      :ETF (sv)
      :S SUBJECT))

(define-category magnify :specializes perdurant
    :binds
    ((subject endurant)
     (object endurant)) 
    :realization 
      (:verb "magnify"
      :ETF (svo-passive)
      :S SUBJECT
      :O OBJECT))

(define-category make :specializes perdurant
    :binds
    ((subject endurant)
     (object endurant)
     (to endurant)
     (for endurant)
     (from endurant)
     (by endurant)) 
    :realization 
      (:verb "make"
      :ETF (svo-passive)
      :S SUBJECT
      :O OBJECT
      :TO TO
      :FOR FOR
      :FROM FROM
      :BY BY))

(define-category manifest :specializes perdurant
    :binds
    ((subject endurant)
     (object endurant)) 
    :realization 
      (:verb "manifest"
      :ETF (svo-passive)
      :S SUBJECT
      :O OBJECT))

(define-category manipulate :specializes perdurant
    :binds
    ((subject endurant)
     (object endurant)) 
    :realization 
      (:verb "manipulate"
      :ETF (svo-passive)
      :S SUBJECT
      :O OBJECT))

(define-category map :specializes perdurant
    :binds
    ((subject endurant)
     (object endurant)
     (to endurant)) 
    :realization 
      (:verb "map"
      :ETF (svo-passive)
      :S SUBJECT
      :O OBJECT
      :TO TO))

(define-category mature :specializes perdurant
    :binds
    ((subject endurant)) 
    :realization 
      (:verb "mature"
      :ETF (sv)
      :S SUBJECT))

(define-category mean :specializes perdurant
    :binds
    ((subject endurant)
     (object endurant)) 
    :realization 
      (:verb "mean"
      :ETF (svo-passive)
      :S SUBJECT
      :O OBJECT))

(define-category mention :specializes perdurant
    :binds
    ((subject endurant)
     (object endurant)) 
    :realization 
      (:verb "mention"
      :ETF (svo-passive)
      :S SUBJECT
      :O OBJECT))

(define-category mimick :specializes perdurant
    :binds
    ((subject endurant)
     (object endurant)) 
    :realization 
      (:verb "mimick"
      :ETF (svo-passive)
      :S SUBJECT
      :O OBJECT))

(define-category mix :specializes perdurant
    :binds
    ((subject endurant)
     (object endurant)
     (with endurant)) 
    :realization 
      (:verb "mix"
      :ETF (svo-passive)
      :S SUBJECT
      :O OBJECT
      :WITH WITH))

(define-category mock :specializes perdurant
    :binds
    ((subject endurant)) 
    :realization 
      (:verb "mock"
      :ETF (sv)
      :S SUBJECT))

(define-category motor :specializes perdurant
    :binds
    ((subject endurant)
     (for endurant)
     (in endurant)) 
    :realization 
      (:verb "motor"
      :ETF (sv)
      :S SUBJECT
      :FOR FOR
      :IN IN))

(define-category mount :specializes perdurant
    :binds
    ((subject endurant)
     (object endurant)
     (onto endurant)
     (with endurant)) 
    :realization 
      (:verb "mount"
      :ETF (svo-passive)
      :S SUBJECT
      :O OBJECT
      :ONTO ONTO
      :WITH WITH))

(define-category move :specializes perdurant
    :binds
    ((subject endurant)
     (object endurant)
     (from endurant)
     (with endurant)
     (in endurant)) 
    :realization 
      (:verb "move"
      :ETF (svo-passive)
      :S SUBJECT
      :O OBJECT
      :FROM FROM
      :WITH WITH
      :IN IN))

(define-category neck :specializes perdurant
    :binds
    ((subject endurant)) 
    :realization 
      (:verb "neck"
      :ETF (sv)
      :S SUBJECT))

(define-category normalize :specializes perdurant
    :binds
    ((subject endurant)
     (object endurant)
     (for endurant)
     (to endurant)) 
    :realization 
      (:verb "normalize"
      :ETF (svo-passive)
      :S SUBJECT
      :O OBJECT
      :FOR FOR
      :TO TO))

(define-category note :specializes perdurant
    :binds
    ((subject endurant)
     (object endurant)
     (with endurant)) 
    :realization 
      (:verb "note"
      :ETF (svo-passive)
      :S SUBJECT
      :O OBJECT
      :WITH WITH))

#+ignore
(define-category number :specializes perdurant
    :binds
    ((subject endurant)
     (on endurant)
     (as endurant)
     (to endurant)
     (at endurant)
     (in endurant)
     (of endurant)) 
    :realization 
      (:verb "number"
      :ETF (sv)
      :S SUBJECT
      :ON ON
      :AS AS
      :TO TO
      :AT AT
      :IN IN
      :OF OF))

(define-category occlude :specializes perdurant
    :binds
    ((subject endurant)
     (object endurant)
     (by endurant)) 
    :realization 
      (:verb "occlude"
      :ETF (svo-passive)
      :S SUBJECT
      :O OBJECT
      :BY BY))

(define-category oil :specializes perdurant
    :binds
    ((subject endurant)
     (from endurant)) 
    :realization 
      (:verb "oil"
      :ETF (sv)
      :S SUBJECT
      :FROM FROM))

(define-category oppose :specializes perdurant
    :binds
    ((subject endurant)
     (object endurant)) 
    :realization 
      (:verb "oppose"
      :ETF (svo-passive)
      :S SUBJECT
      :O OBJECT))

(define-category orchestrate :specializes perdurant
    :binds
    ((subject endurant)) 
    :realization 
      (:verb "orchestrate"
      :ETF (sv)
      :S SUBJECT))

(define-category order :specializes perdurant
    :binds
    ((subject endurant)
     (for endurant)
     (from endurant)) 
    :realization 
      (:verb "order"
      :ETF (sv)
      :S SUBJECT
      :FOR FOR
      :FROM FROM))

(define-category overlap :specializes perdurant
    :binds
    ((subject endurant)
     (object endurant)) 
    :realization 
      (:verb "overlap"
      :ETF (svo-passive)
      :S SUBJECT
      :O OBJECT))

(define-category oxygenate :specializes perdurant
    :binds
    ((subject endurant)
     (object endurant)) 
    :realization 
      (:verb "oxygenate"
      :ETF (svo-passive)
      :S SUBJECT
      :O OBJECT))

(define-category pack :specializes perdurant
    :binds
    ((subject endurant)
     (object endurant)) 
    :realization 
      (:verb "pack"
      :ETF (svo-passive)
      :S SUBJECT
      :O OBJECT))

(define-category pad :specializes perdurant
    :binds
    ((subject endurant)
     (of endurant)) 
    :realization 
      (:verb "pad"
      :ETF (sv)
      :S SUBJECT
      :OF OF))

(define-category pair :specializes perdurant
    :binds
    ((subject endurant)
     (object endurant)
     (with endurant)
     (in endurant)) 
    :realization 
      (:verb "pair"
      :ETF (svo-passive)
      :S SUBJECT
      :O OBJECT
      :WITH WITH
      :IN IN))

(define-category paper :specializes perdurant
    :binds
    ((subject endurant)) 
    :realization 
      (:verb "paper"
      :ETF (sv)
      :S SUBJECT))

(define-category part :specializes perdurant
    :binds
    ((subject endurant)
     (through endurant)
     (of endurant)
     (via endurant)
     (by endurant)) 
    :realization 
      (:verb "part"
      :ETF (sv)
      :S SUBJECT
      :THROUGH THROUGH
      :OF OF
      :VIA VIA
      :BY BY))

(define-category participate :specializes perdurant
    :binds
    ((subject endurant)
     (in endurant)) 
    :realization 
      (:verb "participate"
      :ETF (sv)
      :S SUBJECT
      :IN IN))

(define-category patch :specializes perdurant
    :binds
    ((subject endurant)) 
    :realization 
      (:verb "patch"
      :ETF (sv)
      :S SUBJECT))

(define-category pattern :specializes perdurant
    :binds
    ((subject endurant)
     (within endurant)
     (for endurant)
     (in endurant)
     (of endurant)) 
    :realization 
      (:verb "pattern"
      :ETF (sv)
      :S SUBJECT
      :WITHIN WITHIN
      :FOR FOR
      :IN IN
      :OF OF))

(define-category pause :specializes perdurant
    :binds
    ((subject endurant)) 
    :realization 
      (:verb "pause"
      :ETF (sv)
      :S SUBJECT))

(define-category pearl :specializes perdurant
    :binds
    ((subject endurant)) 
    :realization 
      (:verb "pearl"
      :ETF (sv)
      :S SUBJECT))

(define-category perfuse :specializes perdurant
    :binds
    ((subject endurant)
     (object endurant)
     (at endurant)
     (throughout endurant)) 
    :realization 
      (:verb "perfuse"
      :ETF (svo-passive)
      :S SUBJECT
      :O OBJECT
      :AT AT
      :THROUGHOUT THROUGHOUT))

(define-category permeate :specializes perdurant
    :binds
    ((subject endurant)
     (object endurant)) 
    :realization 
      (:verb "permeate"
      :ETF (svo-passive)
      :S SUBJECT
      :O OBJECT))

(define-category permit :specializes perdurant
    :binds
    ((subject endurant)
     (object endurant)
     (in endurant)) 
    :realization 
      (:verb "permit"
      :ETF (svo-passive)
      :S SUBJECT
      :O OBJECT
      :IN IN))

(define-category phase :specializes perdurant
    :binds
    ((subject endurant)) 
    :realization 
      (:verb "phase"
      :ETF (sv)
      :S SUBJECT))

(define-category photoconvert :specializes perdurant
    :binds
    ((subject endurant)) 
    :realization 
      (:verb "photoconvert"
      :ETF (sv)
      :S SUBJECT))

(define-category piece :specializes perdurant
    :binds
    ((subject endurant)
     (of endurant)) 
    :realization 
      (:verb "piece"
      :ETF (sv)
      :S SUBJECT
      :OF OF))

(define-category plane :specializes perdurant
    :binds
    ((subject endurant)) 
    :realization 
      (:verb "plane"
      :ETF (sv)
      :S SUBJECT))

(define-category plate :specializes perdurant
    :binds
    ((subject endurant)
     (without endurant)
     (with endurant)
     (for endurant)
     (in endurant)) 
    :realization 
      (:verb "plate"
      :ETF (sv)
      :S SUBJECT
      :WITHOUT WITHOUT
      :WITH WITH
      :FOR FOR
      :IN IN))

(define-category play :specializes perdurant
    :binds
    ((subject endurant)
     (object endurant)
     (in endurant)) 
    :realization 
      (:verb "play"
      :ETF (svo-passive)
      :S SUBJECT
      :O OBJECT
      :IN IN))

(define-category point :specializes perdurant
    :binds
    ((subject endurant)) 
    :realization 
      (:verb "point"
      :ETF (sv)
      :S SUBJECT))

(define-category pool :specializes perdurant
    :binds
    ((subject endurant)
     (of endurant)) 
    :realization 
      (:verb "pool"
      :ETF (sv)
      :S SUBJECT
      :OF OF))

(define-category populate :specializes perdurant
    :binds
    ((subject endurant)
     (object endurant)
     (with endurant)) 
    :realization 
      (:verb "populate"
      :ETF (svo-passive)
      :S SUBJECT
      :O OBJECT
      :WITH WITH))

(define-category position :specializes perdurant
    :binds
    ((subject endurant)
     (at endurant)
     (of endurant)) 
    :realization 
      (:verb "position"
      :ETF (sv)
      :S SUBJECT
      :AT AT
      :OF OF))

(define-category possess :specializes perdurant
    :binds
    ((subject endurant)
     (object endurant)) 
    :realization 
      (:verb "possess"
      :ETF (svo-passive)
      :S SUBJECT
      :O OBJECT))

(define-category pour :specializes perdurant
    :binds
    ((subject endurant)
     (object endurant)) 
    :realization 
      (:verb "pour"
      :ETF (svo-passive)
      :S SUBJECT
      :O OBJECT))

(define-category power :specializes perdurant
    :binds
    ((subject endurant)) 
    :realization 
      (:verb "power"
      :ETF (sv)
      :S SUBJECT))

(define-category preclude :specializes perdurant
    :binds
    ((subject endurant)
     (object endurant)) 
    :realization 
      (:verb "preclude"
      :ETF (svo-passive)
      :S SUBJECT
      :O OBJECT))

(define-category predominate :specializes perdurant
    :binds
    ((subject endurant)
     (in endurant)) 
    :realization 
      (:verb "predominate"
      :ETF (sv)
      :S SUBJECT
      :IN IN))

(define-category prepare :specializes perdurant
    :binds
    ((subject endurant)
     (object endurant)
     (for endurant)
     (by endurant)
     (from endurant)) 
    :realization 
      (:verb "prepare"
      :ETF (svo-passive)
      :S SUBJECT
      :O OBJECT
      :FOR FOR
      :BY BY
      :FROM FROM))

(define-category produce :specializes perdurant
    :binds
    ((subject endurant)
     (object endurant)
     (from endurant)) 
    :realization 
      (:verb "produce"
      :ETF (svo-passive)
      :S SUBJECT
      :O OBJECT
      :FROM FROM))

(define-category progress :specializes perdurant
    :binds
    ((subject endurant)
     (to endurant)) 
    :realization 
      (:verb "progress"
      :ETF (sv)
      :S SUBJECT
      :TO TO))

(define-category project :specializes perdurant
    :binds
    ((subject endurant)
     (of endurant)) 
    :realization 
      (:verb "project"
      :ETF (sv)
      :S SUBJECT
      :OF OF))

(define-category publish :specializes perdurant
    :binds
    ((subject endurant)
     (object endurant)) 
    :realization 
      (:verb "publish"
      :ETF (svo-passive)
      :S SUBJECT
      :O OBJECT))

(define-category pulse :specializes perdurant
    :binds
    ((subject endurant)) 
    :realization 
      (:verb "pulse"
      :ETF (sv)
      :S SUBJECT))

(define-category put :specializes perdurant
    :binds
    ((subject endurant)
     (object endurant)
     (under endurant)) 
    :realization 
      (:verb "put"
      :ETF (svo-passive)
      :S SUBJECT
      :O OBJECT
      :UNDER UNDER))

(define-category quadruplicate :specializes perdurant
    :binds
    ((subject endurant)) 
    :realization 
      (:verb "quadruplicate"
      :ETF (sv)
      :S SUBJECT))

(define-category quantify :specializes perdurant
    :binds
    ((subject endurant)
     (object endurant)
     (on endurant)
     (at endurant)
     (from endurant)
     (in endurant)
     (after endurant)
     (by endurant)) 
    :realization 
      (:verb "quantify"
      :ETF (svo-passive)
      :S SUBJECT
      :O OBJECT
      :ON ON
      :AT AT
      :FROM FROM
      :IN IN
      :AFTER AFTER
      :BY BY))

(define-category quantitate :specializes perdurant
    :binds
    ((subject endurant)
     (object endurant)) 
    :realization 
      (:verb "quantitate"
      :ETF (svo-passive)
      :S SUBJECT
      :O OBJECT))

(define-category range :specializes perdurant
    :binds
    ((subject endurant)) 
    :realization 
      (:verb "range"
      :ETF (sv)
      :S SUBJECT))

(define-category reach :specializes perdurant
    :binds
    ((subject endurant)
     (object endurant)) 
    :realization 
      (:verb "reach"
      :ETF (svo-passive)
      :S SUBJECT
      :O OBJECT))

(define-category record :specializes perdurant
    :binds
    ((subject endurant)
     (object endurant)) 
    :realization 
      (:verb "record"
      :ETF (svo-passive)
      :S SUBJECT
      :O OBJECT))

(define-category recover :specializes perdurant
    :binds
    ((subject endurant)
     (object endurant)
     (before endurant)
     (on endurant)
     (by endurant)) 
    :realization 
      (:verb "recover"
      :ETF (svo-passive)
      :S SUBJECT
      :O OBJECT
      :BEFORE BEFORE
      :ON ON
      :BY BY))

(define-category recycle :specializes perdurant
    :binds
    ((subject endurant)
     (object endurant)
     (to endurant)) 
    :realization 
      (:verb "recycle"
      :ETF (svo-passive)
      :S SUBJECT
      :O OBJECT
      :TO TO))

(define-category refer :specializes perdurant
    :binds
    ((subject endurant)
     (to endurant)) 
    :realization 
      (:verb "refer"
      :ETF (sv)
      :S SUBJECT
      :TO TO))

(define-category render :specializes perdurant
    :binds
    ((subject endurant)
     (object endurant)) 
    :realization 
      (:verb "render"
      :ETF (svo-passive)
      :S SUBJECT
      :O OBJECT))

(define-category repeat :specializes perdurant
    :binds
    ((subject endurant)
     (object endurant)) 
    :realization 
      (:verb "repeat"
      :ETF (svo-passive)
      :S SUBJECT
      :O OBJECT))

(define-category reproduce :specializes perdurant
    :binds
    ((subject endurant)
     (object endurant)) 
    :realization 
      (:verb "reproduce"
      :ETF (svo-passive)
      :S SUBJECT
      :O OBJECT))

(define-category request :specializes perdurant
    :binds
    ((subject endurant)) 
    :realization 
      (:verb "request"
      :ETF (sv)
      :S SUBJECT))

(define-category rescue :specializes perdurant
    :binds
    ((subject endurant)
     (object endurant)
     (by endurant)) 
    :realization 
      (:verb "rescue"
      :ETF (svo-passive)
      :S SUBJECT
      :O OBJECT
      :BY BY))

(define-category research :specializes perdurant
    :binds
    ((subject endurant)) 
    :realization 
      (:verb "research"
      :ETF (sv)
      :S SUBJECT))

(define-category respond :specializes perdurant
    :binds
    ((subject endurant)
     (upon endurant)
     (to endurant)) 
    :realization 
      (:verb "respond"
      :ETF (sv)
      :S SUBJECT
      :UPON UPON
      :TO TO))

(define-category restore :specializes perdurant
    :binds
    ((subject endurant)
     (object endurant)
     (to endurant)
     (by endurant)) 
    :realization 
      (:verb "restore"
      :ETF (svo-passive)
      :S SUBJECT
      :O OBJECT
      :TO TO
      :BY BY))

(define-category restrict :specializes perdurant
    :binds
    ((subject endurant)
     (object endurant)
     (to endurant)) 
    :realization 
      (:verb "restrict"
      :ETF (svo-passive)
      :S SUBJECT
      :O OBJECT
      :TO TO))

(define-category resume :specializes perdurant
    :binds
    ((subject endurant)) 
    :realization 
      (:verb "resume"
      :ETF (sv)
      :S SUBJECT))

(define-category retain :specializes perdurant
    :binds
    ((subject endurant)
     (object endurant)
     (for endurant)) 
    :realization 
      (:verb "retain"
      :ETF (svo-passive)
      :S SUBJECT
      :O OBJECT
      :FOR FOR))

(define-category retrograde :specializes perdurant
    :binds
    ((subject endurant)) 
    :realization 
      (:verb "retrograde"
      :ETF (sv)
      :S SUBJECT))

(define-category reverse :specializes perdurant
    :binds
    ((subject endurant)
     (object endurant)
     (in endurant)
     (by endurant)) 
    :realization 
      (:verb "reverse"
      :ETF (svo-passive)
      :S SUBJECT
      :O OBJECT
      :IN IN
      :BY BY))

(define-category revert :specializes perdurant
    :binds
    ((subject endurant)
     (object endurant)) 
    :realization 
      (:verb "revert"
      :ETF (svo-passive)
      :S SUBJECT
      :O OBJECT))

(define-category review :specializes perdurant
    :binds
    ((subject endurant)
     (of endurant)) 
    :realization 
      (:verb "review"
      :ETF (sv)
      :S SUBJECT
      :OF OF))

(define-category ring :specializes perdurant
    :binds
    ((subject endurant)) 
    :realization 
      (:verb "ring"
      :ETF (sv)
      :S SUBJECT))

(define-category risk :specializes perdurant
    :binds
    ((subject endurant)
     (for endurant)
     (of endurant)) 
    :realization 
      (:verb "risk"
      :ETF (sv)
      :S SUBJECT
      :FOR FOR
      :OF OF))

(define-category room :specializes perdurant
    :binds
    ((subject endurant)) 
    :realization 
      (:verb "room"
      :ETF (sv)
      :S SUBJECT))

(define-category rule :specializes perdurant
    :binds
    ((subject endurant)) 
    :realization 
      (:verb "rule"
      :ETF (sv)
      :S SUBJECT))

(define-category run :specializes perdurant
    :binds
    ((subject endurant)) 
    :realization 
      (:verb "run"
      :ETF (sv)
      :S SUBJECT))

(define-category sacrifice :specializes perdurant
    :binds
    ((subject endurant)
     (object endurant)) 
    :realization 
      (:verb "sacrifice"
      :ETF (svo-passive)
      :S SUBJECT
      :O OBJECT))

(define-category saturate :specializes perdurant
    :binds
    ((subject endurant)
     (object endurant)) 
    :realization 
      (:verb "saturate"
      :ETF (svo-passive)
      :S SUBJECT
      :O OBJECT))

(define-category scan :specializes perdurant
    :binds
    ((subject endurant)
     (of endurant)) 
    :realization 
      (:verb "scan"
      :ETF (sv)
      :S SUBJECT
      :OF OF))

(define-category score :specializes perdurant
    :binds
    ((subject endurant)) 
    :realization 
      (:verb "score"
      :ETF (sv)
      :S SUBJECT))

(define-category scrape :specializes perdurant
    :binds
    ((subject endurant)) 
    :realization 
      (:verb "scrape"
      :ETF (sv)
      :S SUBJECT))

(define-category screen :specializes perdurant
    :binds
    ((subject endurant)
     (as endurant)
     (of endurant)
     (for endurant)) 
    :realization 
      (:verb "screen"
      :ETF (sv)
      :S SUBJECT
      :AS AS
      :OF OF
      :FOR FOR))

(define-category section :specializes perdurant
    :binds
    ((subject endurant)
     (of endurant)
     (from endurant)) 
    :realization 
      (:verb "section"
      :ETF (sv)
      :S SUBJECT
      :OF OF
      :FROM FROM))

(define-category seed :specializes perdurant
    :binds
    ((subject endurant)
     (object endurant)
     (onto endurant)
     (on endurant)
     (into endurant)
     (in endurant)) 
    :realization 
      (:verb "seed"
      :ETF (svo-passive)
      :S SUBJECT
      :O OBJECT
      :ONTO ONTO
      :ON ON
      :INTO INTO
      :IN IN))

(define-category seek :specializes perdurant
    :binds
    ((subject endurant)) 
    :realization 
      (:verb "seek"
      :ETF (sv)
      :S SUBJECT))

(define-category send :specializes perdurant
    :binds
    ((subject endurant)
     (object endurant)
     (to endurant)
     (in endurant)) 
    :realization 
      (:verb "send"
      :ETF (svo-passive)
      :S SUBJECT
      :O OBJECT
      :TO TO
      :IN IN))

(define-category sensitize :specializes perdurant
    :binds
    ((subject endurant)
     (object endurant)) 
    :realization 
      (:verb "sensitize"
      :ETF (svo-passive)
      :S SUBJECT
      :O OBJECT))

(define-category separate :specializes perdurant
    :binds
    ((subject endurant)
     (object endurant)
     (from endurant)) 
    :realization 
      (:verb "separate"
      :ETF (svo-passive)
      :S SUBJECT
      :O OBJECT
      :FROM FROM))

(define-category set :specializes perdurant
    :binds
    ((subject endurant)
     (object endurant)
     (for endurant)
     (of endurant)
     (in endurant)) 
    :realization 
      (:verb "set"
      :ETF (svo-passive)
      :S SUBJECT
      :O OBJECT
      :FOR FOR
      :OF OF
      :IN IN))

(define-category shed :specializes perdurant
    :binds
    ((subject endurant)
     (object endurant)
     (from endurant)
     (of endurant)) 
    :realization 
      (:verb "shed"
      :ETF (svo-passive)
      :S SUBJECT
      :O OBJECT
      :FROM FROM
      :OF OF))

(define-category shift :specializes perdurant
    :binds
    ((subject endurant)
     (object endurant)) 
    :realization 
      (:verb "shift"
      :ETF (svo-passive)
      :S SUBJECT
      :O OBJECT))

(define-category shock :specializes perdurant
    :binds
    ((subject endurant)
     (of endurant)) 
    :realization 
      (:verb "shock"
      :ETF (sv)
      :S SUBJECT
      :OF OF))

(define-category silence :specializes perdurant
    :binds
    ((subject endurant)
     (object endurant)
     (of endurant)
     (in endurant)) 
    :realization 
      (:verb "silence"
      :ETF (svo-passive)
      :S SUBJECT
      :O OBJECT
      :OF OF
      :IN IN))

(define-category single :specializes perdurant
    :binds
    ((subject endurant)) 
    :realization 
      (:verb "single"
      :ETF (sv)
      :S SUBJECT))

(define-category skin :specializes perdurant
    :binds
    ((subject endurant)) 
    :realization 
      (:verb "skin"
      :ETF (sv)
      :S SUBJECT))

(define-category slice :specializes perdurant
    :binds
    ((subject endurant)
     (of endurant)
     (with endurant)
     (from endurant)) 
    :realization 
      (:verb "slice"
      :ETF (sv)
      :S SUBJECT
      :OF OF
      :WITH WITH
      :FROM FROM))

(define-category sort :specializes perdurant
    :binds
    ((subject endurant)
     (object endurant)
     (at endurant)
     (by endurant)
     (of endurant)) 
    :realization 
      (:verb "sort"
      :ETF (svo-passive)
      :S SUBJECT
      :O OBJECT
      :AT AT
      :BY BY
      :OF OF))

(define-category spin :specializes perdurant
    :binds
    ((subject endurant)) 
    :realization 
      (:verb "spin"
      :ETF (sv)
      :S SUBJECT))

(define-category splice :specializes perdurant
    :binds
    ((subject endurant)
     (object endurant)
     (into endurant)
     (of endurant)) 
    :realization 
      (:verb "splice"
      :ETF (svo-passive)
      :S SUBJECT
      :O OBJECT
      :INTO INTO
      :OF OF))

(define-category spread :specializes perdurant
    :binds
    ((subject endurant)
     (of endurant)) 
    :realization 
      (:verb "spread"
      :ETF (sv)
      :S SUBJECT
      :OF OF))

(define-category square :specializes perdurant
    :binds
    ((subject endurant)) 
    :realization 
      (:verb "square"
      :ETF (sv)
      :S SUBJECT))

(define-category stack :specializes perdurant
    :binds
    ((subject endurant)
     (of endurant)) 
    :realization 
      (:verb "stack"
      :ETF (sv)
      :S SUBJECT
      :OF OF))

(define-category stage :specializes perdurant
    :binds
    ((subject endurant)
     (in endurant)
     (of endurant)) 
    :realization 
      (:verb "stage"
      :ETF (sv)
      :S SUBJECT
      :IN IN
      :OF OF))

(define-category stain :specializes perdurant
    :binds
    ((subject endurant)
     (object endurant)
     (to endurant)
     (at endurant)
     (for endurant)
     (from endurant)
     (in endurant)
     (of endurant)
     (with endurant)) 
    :realization 
      (:verb "stain"
      :ETF (svo-passive)
      :S SUBJECT
      :O OBJECT
      :TO TO
      :AT AT
      :FOR FOR
      :FROM FROM
      :IN IN
      :OF OF
      :WITH WITH))

(define-category start :specializes perdurant
    :binds
    ((subject endurant)
     (for endurant)) 
    :realization 
      (:verb "start"
      :ETF (sv)
      :S SUBJECT
      :FOR FOR))

(define-category state :specializes perdurant
    :binds
    ((subject endurant)
     (of endurant)
     (in endurant)) 
    :realization 
      (:verb "state"
      :ETF (sv)
      :S SUBJECT
      :OF OF
      :IN IN))

(define-category steer :specializes perdurant
    :binds
    ((subject endurant)
     (object endurant)) 
    :realization 
      (:verb "steer"
      :ETF (svo-passive)
      :S SUBJECT
      :O OBJECT))

(define-category stop :specializes perdurant
    :binds
    ((subject endurant)) 
    :realization 
      (:verb "stop"
      :ETF (sv)
      :S SUBJECT))

(define-category strain :specializes perdurant
    :binds
    ((subject endurant)
     (by endurant)
     (at endurant)) 
    :realization 
      (:verb "strain"
      :ETF (sv)
      :S SUBJECT
      :BY BY
      :AT AT))

(define-category strand :specializes perdurant
    :binds
    ((subject endurant)
     (object endurant)) 
    :realization 
      (:verb "strand"
      :ETF (svo-passive)
      :S SUBJECT
      :O OBJECT))

(define-category stratify :specializes perdurant
    :binds
    ((subject endurant)
     (object endurant)) 
    :realization 
      (:verb "stratify"
      :ETF (svo-passive)
      :S SUBJECT
      :O OBJECT))

(define-category structure :specializes perdurant
    :binds
    ((subject endurant)
     (at endurant)
     (in endurant)
     (of endurant)) 
    :realization 
      (:verb "structure"
      :ETF (sv)
      :S SUBJECT
      :AT AT
      :IN IN
      :OF OF))

(define-category subject :specializes perdurant
    :binds
    ((subject endurant)
     (object endurant)
     (to endurant)) 
    :realization 
      (:verb "subject"
      :ETF (svo-passive)
      :S SUBJECT
      :O OBJECT
      :TO TO))

(define-category submerge :specializes perdurant
    :binds
    ((subject endurant)
     (for endurant)
     (in endurant)) 
    :realization 
      (:verb "submerge"
      :ETF (sv)
      :S SUBJECT
      :FOR FOR
      :IN IN))

(define-category supplement :specializes perdurant
    :binds
    ((subject endurant)
     (object endurant)
     (with endurant)) 
    :realization 
      (:verb "supplement"
      :ETF (svo-passive)
      :S SUBJECT
      :O OBJECT
      :WITH WITH))

(define-category support :specializes perdurant
    :binds
    ((subject endurant)
     (object endurant)
     (in endurant)
     (by endurant)) 
    :realization 
      (:verb "support"
      :ETF (svo-passive)
      :S SUBJECT
      :O OBJECT
      :IN IN
      :BY BY))

(define-category surround :specializes perdurant
    :binds
    ((subject endurant)
     (object endurant)) 
    :realization 
      (:verb "surround"
      :ETF (svo-passive)
      :S SUBJECT
      :O OBJECT))

(define-category survey :specializes perdurant
    :binds
    ((subject endurant)
     (of endurant)) 
    :realization 
      (:verb "survey"
      :ETF (sv)
      :S SUBJECT
      :OF OF))

(define-category synchronize :specializes perdurant
    :binds
    ((subject endurant)
     (object endurant)) 
    :realization 
      (:verb "synchronize"
      :ETF (svo-passive)
      :S SUBJECT
      :O OBJECT))

(define-category synthesize :specializes perdurant
    :binds
    ((subject endurant)
     (object endurant)
     (by endurant)
     (as endurant)) 
    :realization 
      (:verb "synthesize"
      :ETF (svo-passive)
      :S SUBJECT
      :O OBJECT
      :BY BY
      :AS AS))

(define-category tail :specializes perdurant
    :binds
    ((subject endurant)
     (toward endurant)
     (in endurant)
     (of endurant)) 
    :realization 
      (:verb "tail"
      :ETF (sv)
      :S SUBJECT
      :TOWARD TOWARD
      :IN IN
      :OF OF))

(define-category take :specializes perdurant
    :binds
    ((subject endurant)
     (object endurant)
     (with endurant)
     (of endurant)) 
    :realization 
      (:verb "take"
      :ETF (svo-passive)
      :S SUBJECT
      :O OBJECT
      :WITH WITH
      :OF OF))

(define-category time :specializes perdurant
    :binds
    ((subject endurant)
     (for endurant)
     (in endurant)
     (with endurant)
     (of endurant)) 
    :realization 
      (:verb "time"
      :ETF (sv)
      :S SUBJECT
      :FOR FOR
      :IN IN
      :WITH WITH
      :OF OF))

(define-category tool :specializes perdurant
    :binds
    ((subject endurant)
     (in endurant)) 
    :realization 
      (:verb "tool"
      :ETF (sv)
      :S SUBJECT
      :IN IN))

(define-category total :specializes perdurant
    :binds
    ((subject endurant)) 
    :realization 
      (:verb "total"
      :ETF (sv)
      :S SUBJECT))

(define-category traffick :specializes perdurant
    :binds
    ((subject endurant)
     (object endurant)
     (between endurant)
     (to endurant)) 
    :realization 
      (:verb "traffick"
      :ETF (svo-passive)
      :S SUBJECT
      :O OBJECT
      :BETWEEN BETWEEN
      :TO TO))

(define-category transfer :specializes perdurant
    :binds
    ((subject endurant)
     (object endurant)
     (to endurant)
     (onto endurant)) 
    :realization 
      (:verb "transfer"
      :ETF (svo-passive)
      :S SUBJECT
      :O OBJECT
      :TO TO
      :ONTO ONTO))

(define-category transmit :specializes perdurant
    :binds
    ((subject endurant)
     (object endurant)) 
    :realization 
      (:verb "transmit"
      :ETF (svo-passive)
      :S SUBJECT
      :O OBJECT))

(define-category transplant :specializes perdurant
    :binds
    ((subject endurant)
     (object endurant)
     (at endurant)
     (to endurant)
     (onto endurant)) 
    :realization 
      (:verb "transplant"
      :ETF (svo-passive)
      :S SUBJECT
      :O OBJECT
      :AT AT
      :TO TO
      :ONTO ONTO))

(define-category transport :specializes perdurant
    :binds
    ((subject endurant)
     (toward endurant)
     (to endurant)
     (into endurant)
     (through endurant)
     (in endurant)
     (of endurant)) 
    :realization 
      (:verb "transport"
      :ETF (sv)
      :S SUBJECT
      :TOWARD TOWARD
      :TO TO
      :INTO INTO
      :THROUGH THROUGH
      :IN IN
      :OF OF))

(define-category trigger :specializes perdurant
    :binds
    ((subject endurant)
     (object endurant)) 
    :realization 
      (:verb "trigger"
      :ETF (svo-passive)
      :S SUBJECT
      :O OBJECT))

(define-category trim :specializes perdurant
    :binds
    ((subject endurant)
     (object endurant)) 
    :realization 
      (:verb "trim"
      :ETF (svo-passive)
      :S SUBJECT
      :O OBJECT))

(define-category turn :specializes perdurant
    :binds
    ((subject endurant)) 
    :realization 
      (:verb "turn"
      :ETF (sv)
      :S SUBJECT))

(define-category type :specializes perdurant
    :binds
    ((subject endurant)
     (in endurant)
     (with endurant)
     (of endurant)) 
    :realization 
      (:verb "type"
      :ETF (sv)
      :S SUBJECT
      :IN IN
      :WITH WITH
      :OF OF))

(define-category utilize :specializes perdurant
    :binds
    ((subject endurant)
     (object endurant)) 
    :realization 
      (:verb "utilize"
      :ETF (svo-passive)
      :S SUBJECT
      :O OBJECT))

#+ignore
(define-category value :specializes perdurant
    :binds
    ((subject endurant)
     (from endurant)
     (to endurant)
     (for endurant)) 
    :realization 
      (:verb "value"
      :ETF (sv)
      :S SUBJECT
      :FROM FROM
      :TO TO
      :FOR FOR))

(define-category visualize :specializes perdurant
    :binds
    ((subject endurant)
     (object endurant)) 
    :realization 
      (:verb "visualize"
      :ETF (svo-passive)
      :S SUBJECT
      :O OBJECT))

(define-category wash :specializes perdurant
    :binds
    ((subject endurant)
     (object endurant)
     (in endurant)
     (with endurant)) 
    :realization 
      (:verb "wash"
      :ETF (svo-passive)
      :S SUBJECT
      :O OBJECT
      :IN IN
      :WITH WITH))

(define-category work :specializes perdurant
    :binds
    ((subject endurant)
     (in endurant)) 
    :realization 
      (:verb "work"
      :ETF (sv)
      :S SUBJECT
      :IN IN))

(define-category wound :specializes perdurant
    :binds
    ((subject endurant)) 
    :realization 
      (:verb "wound"
      :ETF (sv)
      :S SUBJECT))

(define-category write :specializes perdurant
    :binds
    ((subject endurant)
     (object endurant)) 
    :realization 
      (:verb "write"
      :ETF (svo-passive)
      :S SUBJECT
      :O OBJECT))

