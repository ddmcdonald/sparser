;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:SPARSER -*-
;;; copyright (c) 1995,2012  David D. McDonald  -- all rights reserved
;;;
;;;     File:  "dm&p"
;;;   Module:  "init;workspaces:"
;;;  version:  January 2013

;; broken out from [init;versions:v2.3a:workspace:in progress] 1/30/95.
;; Added another test case 1/19/13.

(in-package :sparser)

;;;--------------------------
;;; traces / switch settings
;;;--------------------------

;(setq *do-domain-modeling-and-population* t)
;(setq *do-domain-modeling-and-population* nil)
;(setq *trace-DM&P* t)
;(setq *trace-DM&P* nil)
;(debris-analysis-setting)
;(DM&P-setting)
;(top-edges-setting/ddm)

;(setq *break-on-pattern-outside-coverage?* t)
;(setq *break-on-pattern-outside-coverage?* nil)
;(ed "objects;traces:DM&P") <<< wrap ed in an expander

;*switch-setting*
;*current-analysis-mode*

;//// make a custom version
;(switch-settings)
;(setq *annotate-realizations* nil)


;;;--------------
;;; test / to-do
;;;--------------

;; 1/11/94
(defun p/br (s)
  (pp s)
  (display-bracketed-segments))

;; (p/br "(J), page b1")
;;   the comma should stand by itself. Consider timing problem
;;   with processing of the parenthesis


;; 12/30/93
(defun fw (p)
  (setup-for-DJNS/1990-91)
  (f p))

;(fw "feb0;WSJ021.TXT")
;;  waiting on paragraph operations.
;;  Dies on "NL After Mr. Kennedy", where the preposition needs to
;;   be appreciated as such. 

;;;------------
;;; test cases
;;;------------

(defun fire ()
;; Fire ravages London cinema
;; London -- 
  (pp "Fire swept through a private theater in central London
yesterday, killing at least seven people and injuring more 
than 20, fire officials said.  A Fire Brigade spokesman said
about 50 firefighters were at the four-story building, where
the cinema club occupied the top floor.  After three hours
the fire was under control, but not out.  It was not known
how many people were in the building at the time of the fire.  
The cinema was a small private club showing pornographic files,
according to initial reports."))  ;; (Reuters)

(defun medtronic ()
  ;; from Charlie G.'s summarization set. 
  (pp "Will Medtronic's pulse quicken?
Medical device giant Medtronic (MDT), the leader in 
defibrillators and pacemakers, has been a market laggard. 
The stock slumped from 60 in January to 49.19 on May 17. 
But some investors say it may beat analysts' consensus forecast 
of 62 cents a share when it reports earnings for 
its fiscal fourth quarter on May 23. Among the few bulls: 
Investment firm Harris Nesbitt's Joanne Wuensch, 
who continues to rate it \"outperform,\" with 
a 12-month target of 62. Still, some worry Medtronic 
may deliver bad news. Not only has growth slowed in 
the cardiology market, but rival St. Jude Medical (SJM) 
also missed its quarterly sales forecast. 
Wuensch counters that Medtronic is \"more insulated 
from the implantable-device market sways than its brethren.\" 
It generates 27% of revenues from them, vs. St. Jude's 36%. 
Wuensch sees Medtronic earning $2.09 a share on sales 
of $11.3 billion this year, and $2.38 on $12.6 billion in 2007. 
David Sowerby, portfolio manager at investment firm Loomis Sayles, 
which owns shares, says the stock is \"compelling\" near 
its 10-year low, especially as he expects Medtronic to 
gain market share and show double-digit earnings growth in 2007."))


;; Cases from TB that turned up as errors
#|

(p "Rolls-Royce Motor Cars Inc. said it expects its U.S. sales to remain steady at about 1,200 cars in 1990")
[rolls-royce motor cars inc.][ said][ it][ expects][ its u.s. sales] 
to [ remain][ steady] at [ about 1,200 cars] in [ 1990]
                                 source-start
e7    COMPANY                 1 "rolls - royce motor cars inc ." 8
e12   SOMEONE-REPORTS         8 "said it" 10
e11   EXPECT                  10 "expects" 11
e14   COMPANY-S               11 "its" 12
e16   COUNTRY                 12 "u . s ." 16
e17   SALE                    16 "sales" 17
e18 e19                          "to" :: to, TO
e20   REMAIN                  18 "remain" 19
e21 e22 e23 e24                  "steady" :: STEADY-EVENT, STEADY-KIND, STEADY-ADVERBIAL, STEADY-MODIFIER
e25 e26                          "at" :: at, AT
e27   ABOUT                   21 "about" 22
e31   NUMBER                  22 "1 , 200" 25
e32   CAR                     25 "cars" 26
e36   PREP-TIME               26 "in 1990" 28


(p "Howard Mosher, president and chief executive officer, said he anticipates growth 
for the luxury auto maker in Britain and Europe, and in far eastern markets.")

[howard mosher], [ president] and [ chief executive officer], 
[ said][ he][ anticipates][ growth] for [ the luxury auto maker] 
in [ britain] and [ europe], and in far [ eastern markets][.]

                                 source-start
e2    NAME                    1 "howard mosher" 3
e3                               "COMMA"
e4    SINGLE-WORD-TITLE       4 "president" 5
e5                               "and"
e12   TITLE                   6 "chief executive officer" 9
e13                              "COMMA"
e14   REPORT-VERB             10 "said" 11
e15   PRONOUN/MALE            11 "he" 12
e16   ANTICIPATE              12 "anticipates" 13
e17   GROWTH                  13 "growth" 14
e18 e19                          "for" :: for, FOR
e24   LUXURY                  15 "the luxury" 17
e22   AUTO                    17 "auto" 18
e23   CO-ACTIVITY-NOMINAL/ER  18 "maker" 19
e25 e26                          "in" :: in, IN
e27   COUNTRY                 20 "britain" 21
e28                              "and"
e29   NAME-WORD               22 "europe" 23
e30                              "COMMA"
e31                              "and"
e32 e33                          "in" :: in, IN
e34 e35                          "far" :: far, FAR
e36   DIRECTION               27 "eastern" 28
e37   MARKET                  28 "markets" 29
e38                              "PERIOD"


(p "W. Ed Tyler, 37 years old, a senior vice president at this printing concern, was elected president of its technology group, a new position.")

[w. ed tyler], [ 37][ years old], [ a senior vice president] 
at [ this][ printing] concern, 
[ was elected][ president] of [ its technology group], [ a new position][.]
                               source-start
e19   PERSON                  1 "w . ed tyler , 37 years old" 9
e11                              "COMMA"
e17   SINGLE-WORD-TITLE       10 "a senior vice president" 14 ;;<<< "a ... title"
e20 e21                          "at" :: at, AT
e22                              "this"
e23   PRINT-EVENT             16 "printing" 17
e24   GENERIC-CO-WORD         17 "concern" 18
e25                              "COMMA"
e28   ELECT-EVENT             19 "was elected" 21
e29   SINGLE-WORD-TITLE       21 "president" 22
e30 e31                          "of" :: of, OF
e32   PRONOUN/INANIMATE       23 "its" 24
e33   TECHNOLOGY              24 "technology" 25
e34 e35                          "group" :: KIND-OF-COMPANY, TITLE-MODIFIER
e36                              "COMMA"
e40   POSITION-KIND           27 "a new position" 30
e41                              "PERIOD"



(p "Investors are appealing to the Securities and Exchange Commission not to limit 
their access to information about stock purchases and sales by corporate insiders.")

[investors][ are appealing] to [ the securities] and [ exchange commission not] 
to [ limit][their access] to [ information][ about stock purchases] and [ sales] 
by [ corporate insiders][.]

                                 source-start
e0    INVESTOR                1 "investors" 2
e3    APPEAL                  2 "are appealing" 4
e4 e5                            "to" :: to, TO
e6                               "the"
e7    SECURITY                6 "securities" 7
e8                               "and"
e11   COMPANY                 8 "exchange commission" 10
e12 e13                          "not" :: not, NOT
e14 e15                          "to" :: to, TO
e16   LIMIT                   12 "limit" 13
e17   PRONOUN/PLURAL          13 "their" 14
e18   ACCESS                  14 "access" 15
e19 e20                          "to" :: to, TO
e21   INFORMATION             16 "information" 17
e25   STOCK                   17 "about stock" 19
e24   PURCHASE                19 "purchases" 20
e26                              "and"
e27   SALE                    21 "sales" 22
e28 e29                          "by" :: by, BY
e30   TITLE-MODIFIER          23 "corporate" 24
e31   INSIDER                 24 "insiders" 25
e32                              "PERIOD"

|#
