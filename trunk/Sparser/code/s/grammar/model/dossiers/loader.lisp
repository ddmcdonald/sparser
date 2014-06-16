;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:SPARSE/Users/ddm/sparser/Sparser/code/s/grammar/model/dossiers/loader.lispR -*-
;;; copyright (c) 1991-2005,2011-2014  David D. McDonald  -- all rights reserved
;;; extensions copyright (c) 2007-2009 BBNT Solutions LLC. All Rights Reserved
;;;
;;;     File:  "loader"
;;;   Module:  "model;dossiers:"
;;;  version:  0.7 May 2014

;; initiated in January 1991 v1.8
;; 0.1 (10/17/93 v2.3) started revampin to hold all the individuals
;; 0.2 (10/22) added generic co words. 1/7/94 added numbers. 1/17 added
;;      location cases.  2/9 added people prefix and version cases
;;      (3/15) added gating for company files.  (4/4) added regions.
;;      (4/13) added job-events
;; 0.3 (4/24) specialized the logicals for several 'public' gmods
;;     (7/1) added rule files for persons  (7/25) added *irregular-verbs*
;;     (7/29) added [comparatives] and [rules comparatives]
;;     (9/28) added [co activity words]  (1/9/95) added [directions] and [compass points]
;; 0.4 (3/31/95) redid specialized dossiers in terms of 'public-dossiers;"
;;     (4/27) renamed [verbs] as [semantics-free verbs], added other weak forms
;;     (5/16) added [new rules].  7/13 put a gate on [new rules]
;;     (9/12) added [rules for subsidiaries]  (9/20) added sgml files
;;     (9/21) added internet files.  (11/15) added [approximator rules]
;;     (12/22) added [change-in-amount verbs].  (1/2/96) reordered amounts after
;;     locations. (1/5) added known-companies  (6/5) put the who's news 'post-dossiers'
;;     file at the end.  (7/22) moved the weak-semantics there too.  9/3 moved
;;     *nih* in with genes/proteins.
;; 0.5 (10/19/97) removed references to 'public-dossiers;' in favor of gload's
;;      treatment. (11/25/99) added [spatial prepositions]. 12/13 added [kinds].
;;      (4/10/03) re-exposed the ERN items (such as they are).  (2/11/05) re-exposing
;;      the company items. 2/17 Added load-delayed-dossiers to solve issue with known-companies.
;;      3/9 exposed report-verbs. 3/17 exposed everything else.
;;     (3/29/06) Backed out of the rash move last March.
;;     (1/8/07) commented out delayed [known companies] because its out of sync. 1.26 Gated
;;      [new-rules] since it's virtually all for companies circa 1995.
;;     (3/1/08) exposed report-verbs and everything else again. Should be manageable
;;      when not running as 'everything'
;;     (8/26/08) added time-of-day & timezones to files to be loaded for *time*
;;     (10/9/09) Commented out proteins file because it isn't there.
;;     (2/21/11) Added title-abbreviations and noted that titles was OBE.
;;     (8/8/11) Added path-types. (11/24/12) Added rules-to-turn-off and military
;;     vocabulary from Answer
;; 0.6 (1/4/13) Rearranged files for adverbs and other function words to go into
;;      the singe flie [modifiers] so it's easier to keep track of them.
;;     (2/28/13) Removed the city's and their rules in favor of what's in region
;; 0.7 (5/9/13) Pulled out the numbers and ordinals into the regular loader for
;;      that module because the need to, e.g., define companies and spread their
;;      elements means we can't wair for the rest of the dossiers.
;;     (8/12/13) Re-exposed the list of cities. (5/6/14) Added attributes and
;;      moved the one quantity to modifiers. 

(in-package :sparser)


(defun load-delayed-dossiers ()
  "If the items in a dossier have to be parsed, then we need to wait until
   all of the system's initializations have been done, which is virtually
   the last thing that happens during a load, at which point this is called"

  (gate-grammar *company-core*     
    ;;(gload "dossiers;known companies")
    ;;  Gets error that #<word "inc"> fell through ecase in ref/head
    )

  )


(defun load-dossiers ()) ;; for meta-.

(unless *pure-dm&p-load*
  (gate-grammar *companies*
    (gload "dossiers;new rules")))

(gate-grammar *internet*
  (gload "dossiers;internet addresses")
  (gload "dossiers;filenames")
  (gload "dossiers;URLs"))

(gate-grammar *sgml*
  (when *whos-news*
    (gload "dossiers;html tags"))
  (gload "dossiers;html attributes")
  (gload "dossiers;html ISO characters"))

;; no semantics, just word definitions
(gate-grammar *irregular-verbs*
  (gload "dossiers;irregular verbs"))
(gate-grammar *known-verbs*
  (gload "dossiers;semantics-free verbs"))
(gate-grammar (or *adverbs* *adjectives*)
  (gload "dossiers;new content words"))


#+ignore(gate-grammar *comparatives* ;; moved to modifiers
  (gload "dossiers;comparatives")
  (gload "dossiers;rules comparatives"))

(gate-grammar *time*
  (gload "dossiers;time units")
  (gload "dossiers;deictic times")
  (gload "dossiers;weekdays")
  (gload "dossiers;months")
  (gload "dossiers;years")
  ;;added seasons 6/8/13
  (gload "dossiers;seasons") 
  (gload "dossiers;time of day")
  (gload "dossiers;timezones"))


(gate-grammar *standard-adjuncts*
  (gload "dossiers;modifiers"))
#| ;; all these moved to modifiers
  (gate-grammar *approximators*
    (gload "dossiers;approximations")
    (gload "dossiers;approximator rules"))
  (gate-grammar *frequency*
    (gload "dossiers;frequency adverbs"))
  (ate-grammar *sequencers*
    (gload "dossiers;sequencers")))  |#


(gate-grammar *kinds*
  (gload "dossiers;kinds"))


(gate-grammar *location*
  (gate-grammar *locations-core*
    (gload "dossiers;location descriptions")
    (gload "dossiers;location kinds")
    (gload "dossiers;directions")
    (gload "dossiers;compass points")
    (gload "dossiers;spatial prepositions")
    (gload "dossiers;path types"))
    
  (gate-grammar *countries*
    (gload "dossiers;countries"))
;; These interfer with / are OBE by the treatment in regions
;; and there wasn't that much there in the first place
;; as opposed to these other two.
  (gate-grammar *cities*
    (gload "dossiers;cities"))
;;   (gload "dossiers;city rules"))
  (gate-grammar *US-States*
    (gload "dossiers;U.S. States")
    (gload "dossiers;U.S. State rules"))
  (gate-grammar *other-locations*
    (gload "dossiers;regions")))


(gate-grammar *amounts*
  ;; has to follow 'directions' because they're referenced
  ;; in 'change-in-amount verbs'
  (gload "dossiers;units of measure")
  ;;(gload "dossiers;quantities") => modifiers
  (gload "dossiers;attributes")

;;/////////////// left off here. March 2005 ///////////////

  ;(gload "dossiers;change-in-amount verbs")
  )


(gate-grammar *reports*
  (gload "dossiers;report verbs"))

(gate-grammar *full-titles*
 ;; (gload "dossiers;titles") ;; presently all commented out
  (gload "dossiers;title-abbreviations"))
(gate-grammar *title-heads*
  (gload "dossiers;title heads"))
(gate-grammar *title-modifiers*
  (gload "dossiers;title modifiers"))
(gate-grammar *title-modifiers*
  (gload "dossiers;title qualifiers"))


(gate-grammar *people*
  (gload "dossiers;person prefixes")
  (gload "dossiers;person versions")
  (gload "dossiers;person interior rules")
  (gload "dossiers;person exterior rules"))


(gate-grammar *companies*
  (gate-grammar *kinds-of-companies*
    (gload "dossiers;kinds of companies")
    (gload "dossiers;inc terms"))
  (gate-grammar *generic-company-words*
    (gload "dossiers;generic co words"))
  (gate-grammar *company-activity-words*
    (gload "dossiers;co activity words"))
  (gate-grammar *company-generalization-words*
    (gload "dossiers;co indicating words"))
  (gate-grammar *company-activity-nominals*
    (gload "dossiers;co activity nominals-er"))
  (gate-grammar *subsidiaries*
    (gload "dossiers;kinds of subsidiaries")
    (gload "dossiers;rules for subsidiaries"))
  (gate-grammar *company-core*
    (gload "dossiers;co rules")))


(gate-grammar *money*
  (gload "dossiers;denominations of money")
  (gload "dossiers;currencies"))

(gate-grammar *ern*
  (gload "dossiers;financial data items")
  (gload "dossiers;new ERN rules"))

(gate-grammar *whos-news*
  (gate-grammar *job-events*
    (gload "dossiers;job events")))

;(gate-grammar *nih*
;  (gload "dossiers;genes/proteins"))

(gate-grammar *generic-military*
  (gload "dossiers;military-units")
  (gload "dossiers;military-ranks")
  (gload "dossiers;military-authorities"))


;;--------- dossiers that have to follow all the others ---------

(gate-grammar *whos-news*
  (whos-news-post-dossiers-loader))


(gate-grammar *verbs-with-weak-semantics*
  (gload "dossiers;semantics-weak verbs"))

(gload "dossiers;rules-to-turn-off")


;;---------- the very last thing to do ----------
(unless (or *just-note-changed-files*
              *copy-file*)
  (declare-all-existing-individuals-permanent))
