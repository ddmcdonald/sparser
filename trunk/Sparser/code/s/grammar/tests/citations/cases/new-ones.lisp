;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:SPARSER -*-
;;; copyright (c) 1993-1996  David D. McDonald  -- all rights reserved
;;;
;;;     File:  "new ones"
;;;   Module:  "grammar;tests:citations:cases:"
;;;  version:  April 1994

;; initiated 11/4/93 v2.3. 
;; Gleaned into [systematically organized]: 4/24/94

#|  Citations taken from the menu are appended to this file, and
    are periodically moved to the [systematically organized] file. |#

(in-package :sparser)


(define-citation "the U.K. Ministry of Defense"
  (1 COMPANY 9))

(define-citation "BDM Technologies Inc. of McLean, Va."
  (1 COMPANY 5)
  (5 OF-LOCATION 10))

(define-citation "International Resources Group of Washington, D.C."
  (1 NAME 4)
  (4 OF-NAME 11))

(define-citation "Aydin Corp. and Comsat Laboratories"
  (1 COMPANY 4)
  (4 "and" 5)
  (5 COMPANY 7))
#|  loops are confused
(define-citation "Paul J. Shinderman of Research Inc. Shinderman retired"
  (1 PERSON 5)
  (5 OF-COMPANY 9)
  (9 JOB-EVENT 11))  |#

(define-citation "International Resources Group of Washington, D.C."
  (1 COMPANY 4)
  (4 OF-LOCATION 11))

(define-citation "Martin Marietta Services Group aaa 
Martin and Westinghouse also"
  (1 COMPANY 5)
  (5 "aaa" 6)
  (6 COMPANY 9)
  (9 FREQUENCY-OF-EVENT 10))

(define-citation "the U.K. Ministry of Defense"
  (1 "the" 2)
  (2 COMPANY 9))

;;;---------
;;; Time
;;;--------- 

;;sparser does not label or interpret "a.m." or "p.m." notations

;;sparser does not give labels for seasons, i.e. summer, fall/autumn, winter, spring

;;weekdays are still rule labeled as both weekday and time, should only be labeled as time

;;no labels for relative time adverbials like "recent(ly)", "lately", "as of late", etc.

;;times like "nine (at night)" are parsed as numbers, rather than similar "9 o'clock"

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

;;"during" gets two labels: a sequencer and its own label during.  
;;it fails to combine with weekdays because weekdays still have two labels (WEEKDAY and TIME)

(define-citation "during"
  (SEQUENCER, DURING))

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

;;how does "during" work when combined with events, rather than explicit times?  
;;this is not yet handled by Sparser, at least from a compositional perspective.  
;;Is "during the storm" a time phrase (anchors another event overlapping with "the storm")?
;;Or is it simply some kind of adjunct (but then again all time phrases are adjunct-like)? 

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
;;this one no longer works
#|
(define-citation "June 26 2010"
  (1 DATE 4))|#

;;expanded date with weekday and commas
;;this one no longer works
#|(define-citation "Monday, June 26, 2010"
  (1 DATE 7))|#

;;expanded date with weekday but no commas
;;no longer works
#|(define-citation "Monday June 26 2010"
  (1 DATE 5))|#

;;expanded date with weekday and comma-year
;;no longer works
#|(define-citation "Monday June 26, 2010"
  (1 DATE 6))|#

;;expanded date with only first comma causes an error
#|(define-citation "Monday, June 26 2010"
  (1 DATE 6))|#

;;more complicated dates are not parsed compositionally

#|(define-citation "the morning of January 31, 1999"
  (                                 SOURCE-START
e0                               "the"
e1    PHASE-OF-DAY            2 "morning" 3
e2 e3                            "of" :: of, OF
e11   DATE                    4 "january 31 , 1999" 8
                                 END-OF-SOURCE))|#

;;seasons are not labeled at all, and so the following is also not yet seen as a date

#|(define-citation "summer of 1964"
  (                                 SOURCE-START
e0    TIME                    1 "summer" 2
e4    OF-YEAR                 2 "of 1964" 4
                                 END-OF-SOURCE))|#

#|(define-citation "9 o'clock January 1, 1999"
  (                                 SOURCE-START
e7    NUMERIC-TIME            1 "9 o ' clock" 5
e11   DATE                    5 "january 1 , 1999" 9
                                 END-OF-SOURCE))|#




