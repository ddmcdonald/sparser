;; Charlie Greenbacker's workspace

#|
:ld ~/Sparser/load-nlp.lisp
:ld ~/Sparser/proposal.lisp
(in-package :sparser)
(cfg-setting)
|#

; (load "~/Sparser/Sparser/code/s/grammar/model/sl/ERN/per-share1.lisp")
; (load "~/Sparser/Sparser/code/s/grammar/rules/syntax/articles.lisp")
(in-package :sparser)
; (cfg-setting)

;; utils

(defun de (edge)
  (d (e# edge)))

(defun der (edge)
  (d (edge-referent (e# edge))))

(defun med-full ()
  (p "Will Medtronic's pulse quicken?

Medical device giant Medtronic (MDT), the leader in defibrillators and pacemakers, has been a market laggard. The stock slumped from 60 in January to 49.19 on May 17. But some investors say it may beat analysts' consensus forecast of 62 cents a share when it reports earnings for its fiscal fourth quarter on May 23. Among the few bulls: Investment firm Harris Nesbitt's Joanne Wuensch, who continues to rate it \"outperform,\" with a 12-month target of 62. Still, some worry Medtronic may deliver bad news. Not only has growth slowed in the cardiology market, but rival St. Jude Medical (SJM) also missed its quarterly sales forecast. Wuensch counters that Medtronic is \"more insulated from the implantable-device market sways than its brethren.\" It generates 27% of revenues from them, vs. St. Jude's 36%. Wuensch sees Medtronic earning $2.09 a share on sales of $11.3 billion this year, and $2.38 on $12.6 billion in 2007. David Sowerby, portfolio manager at investment firm Loomis Sayles, which owns shares, says the stock is \"compelling\" near its 10-year low, especially as he expects Medtronic to gain market share and show double-digit earnings growth in 2007."))

(defun med-0 ()
  (p "Will Medtronic's pulse quicken?"))

(defun med-1 ()
  (p "Medical device giant Medtronic (MDT), the leader in defibrillators and pacemakers, has been a market laggard."))

(defun med-2 ()
  (p "The stock slumped from 60 in January to 49.19 on May 17."))

(defun med-3 ()
  (p "But some investors say it may beat analysts' consensus forecast of 62 cents a share when it reports earnings for its fiscal fourth quarter on May 23."))

(defun med-4 ()
  (p "Among the few bulls: Investment firm Harris Nesbitt's Joanne Wuensch, who continues to rate it \"outperform,\" with a 12-month target of 62."))

(defun med-5()
  (p "Still, some worry Medtronic may deliver bad news."))

(defun med-6 ()
  (p "Not only has growth slowed in the cardiology market, but rival St. Jude Medical (SJM) also missed its quarterly sales forecast."))

(defun med-7 ()
  (p "Wuensch counters that Medtronic is \"more insulated from the implantable-device market sways than its brethren.\""))

(defun med-8 ()
  (p "It generates 27% of revenues from them, vs. St. Jude's 36%."))

(defun med-9 ()
  (p "Wuensch sees Medtronic earning $2.09 a share on sales of $11.3 billion this year, and $2.38 on $12.6 billion in 2007."))

(defun med-10 ()
  (p "David Sowerby, portfolio manager at investment firm Loomis Sayles, which owns shares, says the stock is \"compelling\" near its 10-year low, especially as he expects Medtronic to gain market share and show double-digit earnings growth in 2007."))

(defun med-all ()
  (med-0)
  (med-1)
  (med-2)
  (med-3)
  (med-4)
  (med-5)
  (med-6)
  (med-7)
  (med-8)
  (med-9)
  (med-10))

#| GRAMMAR |#

(define-company "Medtronic" :aliases '("MDT")) ;; actually it the stock ticker symbol

#|
;; stock ticker symbol

The parenthesis handler can do the work of this (ran without
defining Medtronic or anything else):

sparser> (p " device giant Medtronic (MDT),")
 device giant Medtronic (MDT),

                                 source-start
                                 "device"
                                 "giant"
e0    capitalized-word        3 "medtronic" 4
e2    single-capitalized-word-in-parentheses  4 "( mdt )" 7
e3                               "comma"
                                 end-of-source

So it's a matter of having a rule that recognizes that pattern
and concludes that the 'single-capitalized-word' must be the
company's ticker symbol. 

;; (define-category stock-symbol
;;   :binds ((ticker)))

;; (def-cfr stock-symbol (name close-paren)
;;   :form noun
;;   :referent (:instantiate-individual stock-symbol
;; 	     :with (ticker left-edge)))

;; ;; duplicated because of how rules are made for  names & name-words
;; (def-cfr stock-symbol (name-word close-paren)
;;   :form noun
;;   :referent (:instantiate-individual stock-symbol
;; 	     :with (ticker left-edge)))

;; (def-cfr stock-symbol (open-paren stock-symbol)
;;   :form noun
;;   :referent (:head right-edge))
|#
#|
(define-category market-leader
  :binds ((market)))

(def-cfr market-leader ("leader" dual-relative-location)
  :form np
  :referent (:instantiate-individual market-leader
	     :with (market right-edge)))

(define-category dual-relative-location
  :specializes relative-location
  :instantiates :self
  :binds ((place2)))

(def-cfr and-np ("and" np)
  :referent (:daughter right-edge))

(def-cfr dual-relative-location (relative-location and-np)
  :form np
  :referent (:instantiate-individual dual-relative-location
	     :head left-edge
	     :bind (place2 . right-edge)))
|#
#| didn't work as an n-ary rule, etypecase error
(def-cfr stock-symbol (open-paren name close-paren)
  :form noun
  :referent (:instantiate-individual stock-symbol
	     :with (ticker second)))

(def-cfr compound-noun (np "and" np)
  :form np
  :referent (:instantiate-individual compound-noun
	     :with (thing1 first
		    thing2 third)))
|#

;; (p "The stock slumped from 60 in January to 49.19 on May 17.")

;; ranges of datapoints composed of a value & time

; (define-category range
;  :binds ((start)
;	  (end)
;	  (delta)))

;; "60 in January"  "49.19 on May 17."
;; Replaces datapoint
;;; moved to core/amounts/rules1
;; (define-category amount-at-time
;; ;;  :specializes 
;;   :instantiates amount
;;   :binds ((amount . (:or amount number))
;;           (time . time))
;;   :realization ((:tree-family np-and-postmodifier
;;                  :mapping ((np . :self) ;; not working with this corrected head
;;                            (np-head . number)
;;                            (phrase . (:or time
;;                                           weekday ;; Tuesday
;;                                           prep-time)) ;; on May 17
;;                            (type . :self)
;;                            (np-var . amount)
;;                            (modifier-var . time)))))
#|       
(define-category datapoint
  :binds ((value)
	  (time)))                    

(def-cfr datapoint (number time)
  :form np
  :referent (:instantiate-individual datapoint
	     :with (value left-edge
		    time right-edge)))

(def-cfr start-range ("from" datapoint)
  :form pp
  :referent (:head right-edge))

(def-cfr end-range ("to" datapoint)
  :form pp
  :referent (:head right-edge))

(def-cfr range (start-range end-range)
  :form pp
  :referent (:instantiate-individual range
	     :with (start left-edge
		    end right-edge)))
|#


;; stock price change events

;; [2011/12/08:ddm] Need to get schemas into change-in-amount forms
;;  see core/amounts/amount-change-verbs 
;;    and especially dossiers/change-in-amount-verbs for nominalization forms

;; Look at core/amounts/amount-change-verbs and amount-chg-relation
;; since slumped is like the others in dossiers/change-in-amount-verbs

;; Want an all-in-one form for both nouns & verbs in amount-change-verbs
;; but the existing schemes for single-word realizations can't be given
;; two (or more) cases. Need a new sort of mechanism for this -- one that
;; can be quickly recognized and dispatch off to all the individual cases

(define-category stock-price-change
  :specializes event
  :binds ((mode)
          (range)))

(def-cfr stock-price-change (stock-symbol slump)
  :form s
  :referent (:instantiate-individual stock-price-change
	     :with (mode right-edge)))

(def-cfr stock-price-change (stock-price-change range)
  :form s
  :referent (:head left-edge
             :bind (mode . right-edge)))

(define-category slump
  :specializes event)

(def-cfr slump ("slumped")
  :form verb+ed
  :referent (:instantiate-individual slump))

;; Replaced with simple schema version in /model/core/finance/stock.lisp
;; (def-cfr stock-symbol ("stock")
;;   :form noun
;;   :referent (:instantiate-individual stock-symbol))



;;; Moved to /model/core/finance/target.lisp
;; ;;-------- "12 month target of 62"
;; (define-category target ;; the word by itself
;;   :instantiates self
;;   :realization ((:common-noun "target")))
;; (define-category target-at-time
;;   :specializes target
;;   :instantiates target
;;   :binds ((target . target)
;;           (time . time))  ;; "12-month" means '12 months from now'
;;        ;; and that needs to be here in the construstrual of the
;;        ;; time interval to get the full generality on the NLG side
;;   :realization ((:tree-family modifier-creates-individual
;;                  :mapping ((n-bar . target)
;;                            (subtyping-modifier . (:or time amount-of-time))
;;                            (np-head . target)
;;                            (result-category . :self)
;;                            (modifier . time)
;;                            (head . target)))))
;; (define-category stock-price-target
;;   :specializes target
;;   :instantiates self
;;   :binds ((value . number) ;; it's a reduction of a stock price
;;           ;; but that's a metonomy that we don't need yet.
;;           (target . target))
;;   :realization ((:tree-family simple-of-complement
;;                  :mapping ((np . target)
;;                            (base-np . target)
;;                            (complement . number)
;;                            (result-type . :self)
;;                            (np-item . target)
;;                            (of-item . value)))))

;; "she expects a 12-month target of 60"
(define-category expect-target
    ;; N.b. "expect" has a much richer set of complements
    ;; "expect <subj> to do something", "expect Alice to ..."
    ;; "expect that ..." all of which the Mumble side can
    ;; handle, but the Sparser side is very weak on because
    ;; it needs events that will fill the traces, and there could
    ;; be timing issues
  :instantiates self
  :specializes nil  ;; event, but have to check
  :binds ((person . person) ;; broader? Like maybe animate?
          ;; need the v/r check to accept subtypes, but need
          ;; that supertype.
          (target . target))
  :realization ((:tree-family  transitive
                :mapping ((s . event) ;; see rules/syntax/tense.lisp
                          (vp . event/subject) ;; ?? by analogy to job-event treaement
                          (vg . :self)
                          (np/subject . (pronoun ;; she -- form rule ?????
                                         person ))
                          (np/object . target) ;; cheating horribly
                          (agent . person)
                          (patient . target))
                :main-verb "expect")))


(define-category  device
  :instantiates self  ;; what generalization would make sense?
  ;; in which case we'd make this an instantiable class and put
  ;; the realization in via a binding to a "word"
  :realization (:common-noun "device"))

(define-category medical-device 
    ;; obviously a generic composition would be better
    ;; (via form rule an 'device' or a generalization over what 'medical'
    ;; denotes. The bindings are a start on this, though the very specific
    ;; mapping makes them gratuitous
  :specializes device
  :instantiates device
  :binds ((device . device)
          (kind-of-device))
  :realization ((:tree-family modifier-creates-individual
                 :mapping ((n-bar . :self)
                           (subtyping-modifier . "medical")
                           (np-head . :self)
                           (result-category . :self)
                           (modifier . kind-of-device)
                           (head . device)))))

(define-category giant  ;; qua-descriptor
    ;; The noun version, as opposed to the adjective "James and the Giant Peach"
    ;; The meaning ought to be the same since this is a matter of presentation
    ;; and tacitly implies that the company is gigantic (at what it does)
    ;; Should have it specialize/instantiate a company-adjective class.
    ;; This would be the basis of a classic company-referencing defNP. 
    ;;/// notice this treatment is like "medical device"
  :instantiates self
  :realization (:common-noun "giant"))

(define-category giant-in-field
  :specializes giant
  :instantiates giant
  :binds ((head . giant)
          (field))
  :realization ((:tree-family modifier-creates-individual
                 :mapping ((n-bar . :self)
                           (subtyping-modifier . device)
                           (np-head . :self)
                           (result-category . :self)
                           (modifier . field)
                           (head . head)))))

;; In "the medical device giant"
;; psi trace says that the head var of giant is being bound to nil,
;; which probably portends an issue that will trip things up.

#|
   The determiner bound to the first np, not the larger enclosing
 NP (and therefore this edge has the form n-bar rather than NP).
 Interesting question of timing to be sorted out here soonish.

e6    giant                   1 "the medical device giant" 5
                                 end-of-source
:done-printing
sparser> (ie 6)
#<edge6 1 giant 5> is a structure of type edge.  It has these slots:
 category           #<ref-category giant>
 form               #<ref-category n-bar>
 referent           #<psi giant 54>
 starts-at          #<edges starting at 1>
 ends-at            #<edges ending at 5>
 rule               #<PSR2237  giant ->  device giant>
 left-daughter      #<edge4 1 device 4>
 right-daughter     #<edge5 4 giant 5>
 used-in            nil
 position-in-resource-array  6
 constituents       nil
 spanned-words      nil
#<edge6 1 giant 5>

|#

                          


