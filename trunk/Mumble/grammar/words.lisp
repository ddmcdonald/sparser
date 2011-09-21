;;; -*- Mode: Lisp; Package:MUMBLE; Syntax: COMMON-LISP; Base:10; -*-
;;;; $Id: words.lisp 100 2007-07-04 14:31:27Z dmcdonal $

;;; MUMBLE-86>grammar>words
;;;
;;; Copyright (C) 1985, 1986, 1987, 1988  David D. McDonald and the
;;;    Mumble Development Group.  All rights reserved.
;;;    Permission is granted to use and copy this file of the Mumble-86 system for
;;;    non-commercial purposes.
;;; Copyright (c) 2006 BBNT Solutions LLC. All Rights Reserved

(in-package :mumble)

#|

(def-type  WORD    permanent
  (name                 "a symbol")
  (word-labels		"a list of labels")
  (pname		"a string")
  (irregularities       "a detached plist")
  )

IRREGULARITIES:
  	nouns: 	plural

	verbs:  present-1st-singular 
  		present-2nd-singular 
  		present-3rd-singular 
  		present-plural 
  		past-1st-singular 
 		past-2nd-singular 
  		past-3rd-singular 
  		past-plural 
  		en-form 
  		ing-form 
        	ed-form
|#


;#################################################################
;   NAMES
;#################################################################

(define-word "Soleil" (proper-noun) )

(define-word "Swipe Inc." (proper-noun) )

(define-word "IBM" (proper-noun) )

(define-word "Telex" (proper-noun) )

(define-word "Floyd" (proper-noun) )
(define-word "Roscoe" (proper-noun) )
(define-word "Helga" (proper-noun) )
(define-word "Peter" (proper-noun) )
(define-word "Fluffy" (proper-noun) )
(define-word "Pumpkin" (proper-noun) )
(define-word "Iceland" (proper-noun) )
(define-word "Greenland" (proper-noun) )

(define-word "the Texas" (proper-noun) )


;#################################################################
;   NOUNS
;#################################################################

(define-word "dog" (noun) )
(define-word "cat" (noun) )
(define-word "mouse" (noun) plural "mice" )
(define-word "bone" (noun) )
(define-word "lady" (noun) )
(define-word "man" (noun) plural "men" )
(define-word "woman" (noun) plural "women" )

(define-word "misappropriation" (noun) )
(define-word "case" (noun) )
(define-word "dimension" (noun) )
(define-word "corporation" (noun) )
(define-word "plaintiff" (noun) )
(define-word "product" (noun) )
(define-word "`common employee...'" (noun))
(define-word "IBM vs. Telex and Clemens" (noun))
(define-word "Merlin" (noun) )

(define-word "book" (noun) )
(define-word "plane" (noun) )

(define-word "jabberwock" (noun))
(define-word "Lamp Test Switch" (noun))


;;##################################################
;;  MEASURE WORDS

(define-word "inch" (noun verb) plural "inches"
	     present-3rd-singular "inches" )
(define-word "foot" (noun) plural "feet" )
(define-word "yard" (noun) )
(define-word "mile" (noun) )
(define-word "meter" (noun) )
(define-word "kilometer" (noun) )

(define-word "knot" (noun) )
(define-word "mph" (noun) )

(define-word "degree" (noun) )

;;##################################################
;;  MONTHS

(define-word "january" (noun) )
(define-word "feburary" (noun) )
(define-word "march" (noun verb) plural "marches" present-3rd-singular "marches" )
(define-word "april" (noun) )
(define-word "may" (noun verb modal) )
(define-word "june" (noun) )
(define-word "july" (noun) )
(define-word "august" (noun) )
(define-word "september" (noun) )
(define-word "october" (noun) )
(define-word "november" (noun) )
(define-word "december" (noun) )

;;##################################################
;;  DAYS

(define-word "monday" (proper-noun) )
(define-word "tuesday" (proper-noun) )
(define-word "wednesday" (proper-noun) )
(define-word "thursday" (proper-noun) )
(define-word "friday" (proper-noun) )
(define-word "saturday" (proper-noun) )
(define-word "sunday" (proper-noun) )

;#################################################################
;     Prepositions
;#################################################################

(define-word "of" (preposition) )
(define-word "for" (preposition) )
(define-word "by" (preposition) )
(define-word "at" (preposition) )
(define-word "on" (preposition) )
(define-word "in" (preposition) )
(define-word "across" (preposition) )
(define-word "around" (preposition) )
(define-word "from" (preposition) )
(define-word "up" (preposition) )
(define-word "to" (preposition) )
(define-word "toward" (preposition) )
(define-word "through" (preposition) )
(define-word "between" (preposition) )
(define-word "out" (preposition adverb) )
(define-word "onto" (preposition) )
(define-word "with" (preposition) )
(define-word "within" (preposition) )
(define-word "about" (preposition adverb) )
(define-word "along" (preposition) )
(define-word "until" (preposition) )

;#################################################################
;     ADJECTIVES
;########################################################

(define-word "little" (adjective) )

(define-word "big" (adjective) )

(define-word "ugly" (adjective) )

(define-word "attractive" (adjective) )



;#################################################################
;     ADVERBA
;########################################################


(define-word  "then"  ( ADVERB ))

(define-word  "first"  ( ADJECTIVE  NOUN  ADVERB ))


;#################################################################
;   relative, interrogative, and reflexive pronouns
;#################################################################

(define-word "there" (pronoun) )
(define-word "what"  (pronoun) )
(define-word "where" (pronoun) )
(define-word "why"   (pronoun) )
(define-word "which" (pronoun) )
(define-word "how many" (pronoun) )
(define-word "who"   (pronoun) )

;#################################################################
;     OTHER
;#################################################################

(define-word "something" () )

(define-word "somewhere" () )

(define-word "someone" () )


;#################################################################
;     DETERMINERS
;#################################################################


(define-word "the"  (determiner) )

(define-word "a"  (determiner) )



;################################################################
;     CONJUNTIONS
;################################################################

(define-word "and" (conjunction))
(define-word "but" (conjunction))

(define-word "or" (conjunction))
(define-word "either" (conjunction))

(define-word "neither" (conjunction))
(define-word "nor" (conjunction))

(define-word "both" (conjunction))

;#################################################################
;    FUNCTION WORDS
;#################################################################

(define-word "that" (complementizer) )

(define-word "not" ())



;#################################################################
;    VERBS
;#################################################################


(define-word "chase" (verb) )
(define-word "bury" (verb) )
(define-word "free" (verb) )
(define-word "snap" (verb) double )
(define-word "bite" (verb)  ed-form "bit"   en-form "bitten"  )
(define-word "buy" (verb)  ed-form "bought"
	                   en-form "bought"
			   present-3rd-singular "buys")
(define-word "read" (verb)  ed-form "read"   en-form "read"  )
(define-word "work" (verb) )
(define-word "sue" (verb) )
(define-word "report" (verb) )
(define-word "argue" (verb) )
(define-word "index" (verb) )
(define-word "produce" (verb) )


(define-word "could" (verb modal) )
(define-word "can" (verb modal) )
;; this is defined above, with the month
#+ignore(define-word "may" (verb modal) )
(define-word "might" (verb modal) )
(define-word "will" (verb modal) )


(define-word "be" (verb)
  present-1st-singular "am"
  present-2nd-singular "are"
  present-3rd-singular "is"
  present-plural "are"
  past-1st-singular "was"
  past-2nd-singular "were"
  past-3rd-singular "was"
  past-plural "were"
  en-form "been"
  ing-form "being"
  )

(define-word "have" (verb)
  present-3rd-singular "has"
  ed-form "had"
  en-form "had" )

(define-word "do" (verb)
  present-3rd-singular "does"
  ed-form "did"
  en-form "done" )