;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:SPARSER -*-
;;; copyright (c) 1991 Content Technologies Inc.  -- all rights reserved
;;; copyright (c) 2013,2016 David D. McDonald  -- all rights reserved
;;;
;;;     File:  "citations"
;;;   Module:  "model;core:time:"
;;;  version:  May 2016

;; Compiled examples 4/91 (v1.8.2). 
;; Started converting to citations 6/12/13. Folding in citations
;; from general sources 5/17/16. 

(in-package :sparser)

;;--- fiscal2
;;  Reflex is to use a different label that "quarter", but
;; first look at the consumers.

(define-citation "first quarter"
  (1 QUARTER 3))

(define-citation "first quarter of 1998"
  (1 QUARTER 5))

(define-citation "fiscal quarter"
  (1 QUARTER 3))

(define-citation "first quarter ending June 26, 2004"
  (1 QUARTER 8))

#|  citations of time phrases

[event]  "later this year"                 (natl)
[event]  "early next year"                  Dec2;213
[event]  "since 1986"                       Dec2;234
[event]  "next year"                        Dec2;243
[event]  "next April"                       Dec2;235
"Four years ago" [event]                    Dec2;213
[event]  "June 30"                         (tandy)
[event]  "in May"                           (bone)
[event]  "in 1972"                          (monarch)
[event]  "in September 1989"                Dec2;243
[event]  "last month"                       Dec2;212
[event]  "last week"                        Dec2;241
[event]  "around the end of 1991"           Dec2;246

{effective} "July 1",                       (tandy)
(define-citation "June 10"
  (1 DATE 3))

{effective} "Jan. 1".                       Dec2;227
{effective} "this Thursday"                 (bone)
{effective} "in early January"              Dec2;220

[pers], [title] "since October", was...     Dec2;228

[ ... has been ...] "for 25 years"          Dec2;240

[at the] "April 29"  [annual meeting]       3/28;22

[event] "over the past 26 years"            3/28;22
|#


;;sparser does not label or interpret "a.m." or "p.m." notations

;;sparser does not give labels for seasons, i.e. summer, 
;; fall/autumn, winter, spring

;;weekdays are still rule labeled as both weekday and time, 
;; should only be labeled as time

;;no labels for relative time adverbials like "recent(ly)", 
;; "lately", "as of late", etc.

;;times like "nine (at night)" are parsed as numbers, 
;; rather than similar "9 o'clock"

;;;---------
;;; amount of time
;;;---------

(define-citation "the first three months"
  (1 FRACTION-OF-AMOUNT-OF-TIME 5))

;;;---------
;;; prep-time
;;;---------

(define-citation "on Monday"
  (1 PREP-TIME 3))

(define-citation "by Monday"
  (1 PREP-TIME 3))

(define-citation "for Monday"
  (1 PREP-TIME 3))

;;this one no longer works
#|(define-citation "in January"
  (1 PREP-TIME 3))|#

(define-citation "at five o'clock"
  (1 PREP-TIME 6))

;;;---------
;;; durations/sequencers
;;;---------

;;"during" gets two labels: a sequencer and its own label during.  it fails
;;to combine with weekdays because weekdays still have two labels (WEEKDAY
;;and TIME)

#|(define-citation "during"
  (SEQUENCER, DURING))|#

(define-citation "during January"
  (1 TIME 3))

(define-citation "last year"
  (1 TIME 3))

;;sequencers do not readily combine into phrases with those that are not TIME

#|(define-citation "during the three weeks"
  (                                 SOURCE-START
e0 e1                            "during" :: SEQUENCER, DURING
e6    AMOUNT-OF-TIME          2 "the three weeks" 5
                                 END-OF-SOURCE))|#

#|(define-citation "during the first three months"
  (                                 SOURCE-START
e0 e1                            "during" :: SEQUENCER, DURING
e8    FRACTION-OF-AMOUNT-OF-TIME  2 "the first three months" 6
                                 END-OF-SOURCE))|#

;;how does "during" work when combined with events, rather than explicit
;;times?  this is not yet handled by Sparser, at least from a compositional
;;perspective.  Is "during the storm" a time phrase (anchors another event
;;overlapping with "the storm")?  Or is it simply some kind of adjunct (but
;;then again all time phrases are adjunct-like)?

;;what about "while?" or "for" (e.g. "for twenty minutes")
;;note that "during" and "while" have no common complements
;;"while" requires some kind of verb phrase, while "during" allows for NP like complements


#|(define-citation "while"
  (SEQUENCER, WHILE))|#

;;what about 
;;"in the course of" (polyword?)
;;"in the midst of" (polyword?)
;;"in the middle of" (polyword?)
;;etc.  
;;all of which seem to be in the same semantic neighborhood as "during" or "while"

;;;---------
;;; dates
;;;---------

;;simple year parsing
;;note that it parsers 2011 and greater as a number and not a year

(define-citation "2010"
  (1 YEAR 2))

;;simple date parsing
;;note that for dates written with overt ordinal marking, e.g. "October 3rd"
;;sparser tokenizes the derivational morphology but does not give it a label
;;"October 1st" and "October 1" should be the same.  

(define-citation "October 1"
  (1 DATE 3))

;;date with comma-year, standard notation
(define-citation "June 26, 2010"
  (1 DATE 5))

;;date without comma-year, less standard notation but same meaning as above
(define-citation "June 26 2010"
  (1 DATE 4))

;;expanded date with weekday and commas
(define-citation "Monday, June 26, 2010"
  (1 DATE 7))

;;expanded date with weekday but no commas
(define-citation "Monday June 26 2010"
  (1 DATE 5))

;;expanded date with weekday and comma-year
(define-citation "Monday June 26, 2010"
  (1 DATE 6))

;;expanded date with only first comma
(define-citation "Monday, June 26 2010"
  (1 DATE 6))

;;season with year works as date, but do we want to call this a date? 
;;(according to TimeML, yes)
;;however we will make it its own category, season-year, for now
(define-citation "summer of 1964"
(1 SEASON-YEAR 4))

;;more complicated dates are not parsed compositionally

#|(define-citation "the morning of January 31, 1999"
  (                                 SOURCE-START
e0                               "the"
e1    PHASE-OF-DAY            2 "morning" 3
e2 e3                            "of" :: of, OF
e11   DATE                    4 "january 31 , 1999" 8
                                 END-OF-SOURCE))|#

#|(define-citation "9 o'clock January 1, 1999"
  (                                 SOURCE-START
e7    NUMERIC-TIME            1 "9 o ' clock" 5
e11   DATE                    5 "january 1 , 1999" 9
                                 END-OF-SOURCE))|#


;;;---------
;;; age/ago
;;;---------

(define-citation "10 days old"
  (1 AGE 4))

#|(define-citation "10 days ago"
  (1 ??? 4))|#

#|(define-citation "10 days before"
  (1 ??? 4))|#

#|(define-citation "10 days after"
  (1 ??? 4))|#

;;this doesn't come up as age, since "a day" is considered a time-unit
#|(define-citation "a day ago"
  (1 AGE 4))|#

#|
sp> (p/s "in the last century alone")
in [the last century ]alone
                    source-start
e9    IN            1 "in the last century " 5
e6    ALONE         5 "alone" 6
                    end-of-source

(p "in the past two decades")
                    source-start
e1    IN            1 "in " 2
e3    THE           2 "the " 3
e9    PAST          3 "past two decades" 6 ; "past" vanila preposition
                    end-of-source

(p "in 2002-2003") ; year, year --> hyphenated-number/number
  make-hyphenated-number needs to notice the years and make time interval


sp> (p/s "at the end of 2019")
at [the end ]of [2019]
                    source-start
e11   AT            1 "at the end " 4
e10   OF            4 "of 2019" 6
                    end-of-source


(p/s "in late 2019")

sp> (p "it will take months and maybe years")
[it ][will take ][months ]and maybe years
e10   TAKE          1 "it will take " 4
e5    TIME-UNIT     4 "months " 5
e6    AND           5 "and " 6
e7    MAYBE         6 "maybe " 7
e8    TIME-UNIT     7 "years" 8


sp> (p/s "since December 2019")
since [December 2019]
e5    SINCE         1 "since December 2019" 4
(#<prepositional-phrase 91576>
 (pobj
  (#<month-of-the-year 91574>
   (month (#<month "December" 1061> (name "December")))
   (year
    (#<year "2019" 1343> (year-of-century 19) (value 2019) (name "2019")))))
 (prep (#<since 598> (word "since"))))

|#
