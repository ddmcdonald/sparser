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
