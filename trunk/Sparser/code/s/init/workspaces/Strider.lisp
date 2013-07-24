;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:SPARSER -*-
;;; copyright (c) 2013 SIFT LLC  -- all rights reserved
;;;
;;;     File:  "Strider"
;;;   Module:  "init;workspaces:"
;;;  version:  July 2012

;; Initiated 5/7/13. Adding bits through 7/8/13

;;  (load "/Users/ddm/sparser/load-nlp.lisp")

(in-package :sparser)

;;--- display parameters

(setq *tts-after-each-section* t)


;;--- control parameters

(setq *debug-segment-handling* nil) ;; override default
(strider-setting) ;; adds (setq *do-debris-analysis* t)

(setq *do-domain-modeling-and-population* t) ;; ignores null referents
;; Need to adapt the segment-level switches and do this better

(turn-off-debugging-flags) ;; presently defined in Grok workspace
;; (turn-on-debugging-flags)

;; (setq *break-before-creating-name* t) 
;;   to look at what could happen before it creates facts



;;--- text

;; ddm's hard pathnames. Replace with a logical or computed form
;;  (f "/Users/ddm/sift/nlp/Grok/corpus/helicopter-attack.txt")

;;  (f "/Users/ddm/ws/Strider/ws/Aljazeera_9-7-12.txt")
;;  (f "/Users/ddm/ws/Strider/ws/OSC Articles.txt")

(def-logical-pathname "Strider;" "corpus;Strider:")
(def-logical-pathname "June15;" "Strider;OSC-rmr-15Jun13:")

(defvar june15th
  (define-document-stream '|Roger's articles as of June 15th 2013|
    :style-name 'hand-typed/no-headers
    :directory "June15;"
    :unified t))

#|
 (grok-pass-one june15th)
 (grok-pass-two june15th)
 (grok-pass-three june15th)
|#


; (f "/Users/ddm/sift/nlp/corpus/Strider/iranian-martyrs/javan-online.txt")
;;   "Haj Aqa [honorific title, like Sir], -- add "title"
; (f "/Users/ddm/sift/nlp/corpus/Strider/iranian-martyrs/iranian-commander.txt")
;;  (p "Deputy Chief of Staff of the Iranian Armed Forces Brigadier General Massoud Jazzayeri said Monday")



;; (p "the Iranian scientists Massoud Ali-Mohammadi,")
#|
e8    PERSON                  1 "the iranian scientists massoud ali - mohammadi" 8
e9                               "COMMA"
;; All the pieces are there. The country relationship is 'bound-in' on the
;; person object. See nationality in core/people/names-to-people
   relationship-to-country  nationality
|#

;; (p "a 32-year-old Iranian scientist, Mostafa Ahmadi Roshan, ")
;;  Redesribution from age+title to the person is ready to flesh out



;;      (trace-reclaimation)
;; Shaul Mofaz, former Chief of Staff of the Israeli Defense Forces, head of Kadima, and leader of the opposition in the Knesset,
#| 
(p "Shaul Mofaz, former Chief of Staff of the Israeli Defense Forces,")
;;  roles up to a person
;; interpret-name-as-person disconnect-named-object find/person-with-name
;; make-person-name-from-items index-person-name-to-person pct/person+title


(p "Western spy agencies, collaborated by the terrorist MKO, have assassinated several Iranian scientists in the last three years.")
[western spy] agencies, [ collaborated] by [ the terrorist mko], 
[ have assassinated] [several iranian scientists] in [ the last three years][.]
e3    SPY-KIND                1 "western spy" 3
e4    KIND-OF-COMPANY         3 "agencies" 4
e5                               "COMMA"
e6    COLLABORATE             5 "collaborated" 6
e7 e8                            "by" :: by, BY
e13   NAME                    7 "the terrorist mko" 10
e14                              "COMMA"
e17   ASSASSINATE             11 "have assassinated" 13
e23   SCIENTIST               13 "several iranian scientists" 16
e34   PREP-TIME               16 "in the last three years" 21
e33                              "PERIOD"
;; Quiescence pointer doewn't move when e23 added, so doesn't look at the verb
;; NP brakets on "agencies" -- ].np .[np -- aren't extending the initial segment
;;   where "spy" has the n/v ambiguous labelings:  ].np-vp .[np-vp np-vp]. np-vp.[
;; Should let the stranded time look leftward for an event.

(p "Computers of some Iranian nuclear sites were attacked by the Stuxnet virus, the first known computer worm discovered in 2010 to target industrial controls.")
[computers] of [ some iranian nuclear sites] [ were attacked]
by [ the stuxnet virus], [ the first known computer worm discovered]
to [ target industrial controls][.]
e0    NAME                    1 "computers" 2
e1 e2                            "of" :: of, OF
e8    SITE-OF-ACTIVITY        3 "some iranian nuclear sites" 7
e11   ATTACK-EVENT            7 "were attacked" 9
e12 e13                          "by" :: by, BY
e18   VIRUS                   10 "the stuxnet virus" 13
e19                              "COMMA"
e24   ORDINAL                 14 "the first" 16
                                 "known"
                                 "computer"
e22 e23                          "worm" :: WORM-EVENT, WORM-KIND
                                 "discovered"
e35   PREP-TIME               20 "in 2010" 22
e28 e29                          "to" :: to, TO
e34   CONTROL-KIND            23 "target industrial controls" 26
e36                              "PERIOD"
;; "target" is defined in finance ("a target of $57"), so need to explicitly
;; define it as a verb, or alternatively to give real power to the "to" that
;; preceeds the phrase. 
;;  "discovered" doesn't have Comlex entry, which smells like a bug.
;;  Neither does "known", though we should define it ourselves anyway. 


(p "In addition to viruses, enemies of Iran tried to hinder Iran's nuclear progress through assassination of the country's elites and nuclear scientists.")
in [ addition] to [ viruses], [ enemies] of iran [ tried] to [ hinder]
iran's [ nuclear progress] through [ assassination] of [ the country's elites]
and [ nuclear scientists][.]
e3    RELATIVE-LOCATION       1 "in addition" 3
e4 e5                            "to" :: to, TO
e6    VIRUS                   4 "viruses" 5
e7                               "COMMA"
e8    ENEMY                   6 "enemies" 7
e9 e10                           "of" :: of, OF
e11   COUNTRY                 8 "iran" 9
e12   TRY-EVENT               9 "tried" 10
e13 e14                          "to" :: to, TO
e23   EVENT                   11 "hinder iran ' s" 15
e22   PROGRESS-KIND           15 "nuclear progress" 17
e24   THROUGH                 17 "through" 18
e25   ASSASSINATION           18 "assassination" 19
e26 e27                          "of" :: of, OF
e33   ELITE                   20 "the country ' s elites" 25
e34                              "and"
e37   SCIENTIST               26 "nuclear scientists" 28
e38                              "PERIOD"
;; E3 is overreaching by "in", and that should be predefined anyway.
;; Need to write DA heuristics for "of"
;; The country possessive should bind rightwards, which could be a timing issue
;;   since the country is being swallowed into the event as a location and
;;   should have looked rightward first.
;; Should define "the country" as a defNP and do the anaphhora

;; (period-hook-on)



(p "In the fifth attack of its kind in two years, terrorists killed a 32-year-old Iranian scientist, Mostafa Ahmadi Roshan, and his driver on January 11.")
;; Out of the gate this looks pretty good, but has obvious things 
;; to fix, like the overreaching in e8 and e25, and exploring why (whether?)
;; the syntax rules didn't give "killed" both its arguments.
;; Should we be agressive with "and" ?
e8    RELATIVE-LOCATION       1 "in the fifth attack" 5
e25   OF-TIME                 5 "of its kind in two years" 11
e21                              "COMMA"
e22   TERRORIST               12 "terrorists" 13
e26   KILL-EVENT              13 "killed" 14
e41   SCIENTIST               14 "a 32 - year - old iranian scientist" 22
e42                              "COMMA"
e43   NAMED-OBJECT            23 "mostafa ahmadi roshan" 26
e44                              "COMMA"
e45                              "and"
e49   DRIVER                  28 "his driver" 30
e57   PREP-TIME               30 "on january 11" 33
e56                              "PERIOD"



(p "The assassination method used in the bombing was similar to the 2010 terrorist bomb attacks against the then university professor, Fereidoun Abbassi Davani - who is now the head of Iran's Atomic Energy Organization - and his colleague Majid Shahriari. While Abbasi Davani survived the attack, Shahriari was martyred.")
;; reify-implicit-individuals is weirded out by the stranded determiner, which
;; should be fixed by predefining "the then" as a part of the title grammar

(p "Another Iranian scientist, Dariush Rezaeinejad, was also assassinated through the same method on 23 July 2011.")
e4    SCIENTIST               1 "another iranian scientist" 4
e5                               "COMMA"
e6    NAMED-OBJECT            5 "dariush rezaeinejad" 7
e7                               "COMMA"
e11   ASSASSINATE             8 "was also assassinated" 11
e12   THROUGH                 11 "through" 12
e17   METHOD                  12 "the same method" 15
e18 e19                          "on" :: on, ON
e21   NUMBER                  16 "23" 17
e24   DATE                    17 "july 2011" 19
e25                              "PERIOD"
;; Hmm.. should have that date form.
;; When we add "scientist" and "elite" and such as titles (but carefully
;; since those titles, like "official", don't preclude a person 
;; from having other titles) then we'd have evidence, at least at
;; the DA level, to push the named-objects over to being people. 





2do: 7/8/13
 - Run whole articles using Comlex
     - Debug the missing case that causes the error in phase one
     - write that up some
     - add a break option with *tts-after-each-section*
 - Setup a little bit of general segment handling (lifted from Grok)
   to give us a platform for noting named entities, and other items of interest
 - Why does person individual here (and elsewhere) have a plist full of rules?
 - Do the other titles and refine position-at-co to appreciate them
     head of Kadima
     leader of the opposition in the Knesset
       - probably entails predefining Kadima and the Knesset (ditto IDF)
       - which will require a useful extension of the conceptualization
         of named-entity


Meta-dot
  *trace-reclaimation* reclaim-all-instances get-tag-for
  collection string/sequence spread-sequence-across-ordinals
  string-for/name person named-object index-person-name-to-person
  link-named-object-to-name-word names/parens-after-names.lisp
  relationship-to-country 
  decode-index-field print-binding-structure
  date weekday month season relative-time-adverb numeric-time approximator
  inc-term
  cite set-citation-file
  unpack-primed-word
  string-for/name print-individual-structure string/sequence

|#
;;--- setting up a grammar module for Strider-specific content

(define-grammar-module *middle-east*
  :name "The Middle East"
  :parent *sublanguages*)

(include-grammar-module *middle-east*)

(def-logical-pathname "mideast;" "sl;middle-east:")

(gate-grammar *middle-east*
  (gload "mideast;loader"))


;; Something is off with the error handler. Going to the listener on
;; the first error it gets, rather than collecting them.
;;  (tb-segmentation-tester "/Users/ddm/sift/nlp/corpus/treebank/treebank-00.txt")


