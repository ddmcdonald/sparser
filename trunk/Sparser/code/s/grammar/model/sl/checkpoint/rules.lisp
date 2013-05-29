;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:(SPARSER COMMON-LISP) -*-
;;; copyright (c) 2011-2013 David D. McDonald  -- all rights reserved
;;; Copyright (c) 2009 BBNT Solutions LLC. All Rights Reserved
;;;
;;;    File: "rules"
;;;  Module: "grammar/model/sl/checkpoint/
;;; version: May 2013

;; Initiated 4/28/09. Elaborated through 8/14/09. 9/28/11 Commenting out the rules
;; involving locations while waiting for a better, more general, treatment.
;; Commenting out still more rules that assume too much.

(in-package :sparser)

;;--- simple locations based on all np's being labeled 'individual'
#|
(def-cfr location (spatial-orientation ;; a preposition
		   individual)
  :form pp
  :referent (:instantiate-individual relative-location
	     :with (functor left-edge
		    place right-edge)))

;; for handling "back in the car" etc.
(def-cfr location (direction location)
  :form pp
  :referent (:instantiate-individual relative-location
	     :with (functor left-edge
		    place right-edge)))

;;--- swallowing location adjuncts 

(def-cfr event (event location) 
  :form vp
  :referent (:head left-edge
             :bind (location . right-edge)))

(def-cfr event (event relative-location) 
  :form vp
  :referent (:head left-edge
             :bind (location . right-edge)))

(def-cfr event (event deictic-location) ;; here, there
  :form vp
  :referent (:head left-edge
             :bind (location . right-edge)))

(def-cfr event (event prep-location)
  :form s
  :referent (:head left-edge
             :bind (location . right-edge)))

(def-cfr event (event spatial-orientation)
  :form vp
  :referent (:head left-edge
             :bind (location . right-edge)))
  |#

;;--- throwing away anticipated subjects ("you")
;;--- no longer "throwing away" -- we keep 'em!
  
#|  Pronouns being redone. Can't assume that the verb, event, etc
    will have a participant variable
(def-form-rule (pronoun/second verb)
  :form s
  :new-category event
  :referent (:head right-edge
	         :bind (participant . left-edge)))

(def-form-rule (pronoun/second verb+ing)
  :form s
  :new-category event
  :referent (:head right-edge
	         :bind (participant . left-edge)))

(def-form-rule (pronoun/second verb+ed)
  :form s
  :new-category event
  :referent (:head right-edge
	         :bind (participant . left-edge)))

(def-form-rule (pronoun/second vg)
  :form s
  :new-category event
  :referent (:daughter right-edge
	         :bind (participant . left-edge)))

(def-cfr event (pronoun/second event)
  :form s
  :referent (:daughter right-edge
	         :bind (participant . left-edge)))
|#

;;--- allows for "come with me" etc.

#|  This is sort of DM&P, and should go there
(define-category with-np
  :binds ((content)))

(def-form-rule ("with" np)
  :form pp
  :new-category with-np
  :referent (:instantiate-individual with-np
	         :with (content right-edge)))
|#

#+ignore
(def-form-rule ("with" possessive/np) ;; with her
  :form pp  ;; that pronoun isn't a form category
  :new-category with-np
  :referent (:instantiate-individual with-np
	     :with (content right-edge)))
#|
(def-form-rule (verb+ed with-np)
  :form verb+ed
  :referent (:head left-edge
	     :bind (modifier right-edge)))

(def-form-rule (verb+ing with-np)
  :form verb+ing
  :referent (:head left-edge
	     :bind (modifier right-edge)))

(def-form-rule (verb with-np)
  :form verb
  :referent (:head left-edge
	        :bind (modifier right-edge)))
|#

#|  removed with-np, so remove these too
(def-cfr event (verb+ed with-np)
  :form s
  :referent (:head left-edge
	         :bind (modifier right-edge)))

(def-cfr event (verb+ing with-np)
  :form s
  :referent (:head left-edge
	         :bind (modifier right-edge)))

(def-cfr event (verb with-np)
  :form s
  :referent (:head left-edge
	         :bind (modifier right-edge)))

(def-cfr event (event with-np) 
  :form s
  :referent (:head left-edge
             :bind (modifier . right-edge)))

|#

;;--- additionally, a similar treatment of "please"
;;--- following a verb
;; 8/14/09: experimenting with all adverbs instead
;;          of just "please"
#|
(def-form-rule (verb+ed adverb)
  :form verb+ed
  :referent (:head left-edge
	     :bind (modifier right-edge)))

(def-form-rule (verb+ing adverb)
  :form verb+ing
  :referent (:head left-edge
	         :bind (modifier right-edge)))

(def-form-rule (verb adverb)
  :form verb
  :referent (:head left-edge
	         :bind (modifier right-edge)))
|#
;; Needed because "where" doesn't seem to be
;; picked up by WH in all cases?
;; don't like this one

;(def-cfr event ("where" event) 
;  :form s
;  :referent (:head right-edge
;             :bind (location . left-edge)))

(def-cfr event ("where" event)
  :form s
  :referent (:instantiate-individual question
             :with (type left-edge
		            content right-edge)))

;; dealing with acknowledgements at this level because
;; interjection rule doesn't carry semantic info
;; ... greetings too

(def-cfr event (acknowledgement event) 
  :form s
  :referent (:head right-edge
             :bind (modifier . left-edge)))

(def-cfr event (greeting event) 
  :form s
  :referent (:head right-edge
             :bind (modifier . left-edge)))

;; Haphazard treatment of inversions of the form
;; "tell me" etc.

(define-category inversion
  :binds ((functor) 
  	      (target)
	      (content)))

(def-form-rule (verb "me")  ;; pronoun/first/singular
  :form vp
  :new-category inversion
  :referent (:instantiate-individual inversion
	     :with (functor left-edge
		    target right-edge)))

(def-cfr event (inversion event) 
  :form s
  :referent (:head left-edge ; ??
             :bind (content . right-edge)))

(def-cfr event (inversion individual) 
  :form s
  :referent (:head left-edge ; ??
             :bind (content . right-edge)))


;; Some more location rules

;; (def-cfr location (spatial-orientation direction)
;;   :form pp
;;   :referent (:instantiate-individual relative-location
;; 	         :with (functor left-edge
;; 		            place right-edge)))


;; Starting to take a crack at questions of the form:
;; [what|which] NP [be|do] ... ?
#|
(define-category be/do-pro  ;; be or do followed by a pronoun
  :binds ((content) 
	  (functor)))

;; Is 's' the right form for this sort of thing? It looks like
;; that's what the TRIPS parser is producing...
(defmacro cfr-be/do-pro (type pronoun)
  (def-cfr/expr 'be/do-pro 
            (list type pronoun)
            :form 's
	    :referent '(:instantiate-individual be/do-pro
		        :with (content right-edge
		               functor left-edge))))

;; These seem to be breaking some of the regression tests,
;; we'll either need to drop these rules or update the tests
;; once we figure out what we want to do.
(cfr-be/do-pro be pronoun/first/singular)  ;; "am I"
(cfr-be/do-pro be pronoun/first/plural)    ;; "are we"
(cfr-be/do-pro be pronoun/second)          ;; "are you"
(cfr-be/do-pro be pronoun/male)            ;; "is he/his"
(cfr-be/do-pro be pronoun/female)          ;; "is she"
(cfr-be/do-pro be pronoun/inanimate)       ;; "is it"
(cfr-be/do-pro be pronoun/plural)          ;; "are they"

(cfr-be/do-pro do pronoun/first/singular)  ;; "do I"
(cfr-be/do-pro do pronoun/first/plural)    ;; "do we"
(cfr-be/do-pro do pronoun/second)          ;; "do you"
(cfr-be/do-pro do pronoun/male)            ;; "does he/his"
(cfr-be/do-pro do pronoun/female)          ;; "does she"
(cfr-be/do-pro do pronoun/inanimate)       ;; "does it"
(cfr-be/do-pro do pronoun/plural)          ;; "do they"


;; adjectives from wordlist

(define-exploded-tree-family  np-common-noun/with-adjective
  :schema-type  :mixin
  :labels ( np n-bar np-head null-adj common-noun )
  :cases
     ((:definite (np (null-adj n-bar)
		     :head right-edge
		     :bind (modifier left-edge)))
      (:definite (np (null-adj common-noun)
		     :head right-edge
		     :bind (modifier left-edge)))
      (:definite (np (null-adj np-head)
		     :head right-edge
		     :bind (modifier left-edge)))))


;; Not necessarily a great name, and certainly not completely
;; fleshed out yet, but my intent with this is to capture things
;; like "Did you go there?" and "When [are you coming back?]"
(define-category inquiry
  :binds ((content) 
	  (functor)))

(def-cfr inquiry (be/do-pro vp)
  :form s
  :referent (:instantiate-individual inquiry
	     :with (content right-edge
		    functor left-edge)))
|#
#|
So here's what I'm getting hung up on...

(p "did you go there") is producing:

e0    do                      1 "did" 2
e6    event                   2 "you go there" 5

But I want it to give me something like:

e6    be/do-pro               1 "did you" 3
e7    event                   3 "go there" 5

Which in turn should combine via the new inquiry
cfr to produce:

e8    inquiry                 1 "did you go there" 5

But event is so greedy that it over powers the
be/do-pro rule and immediately sucks up the "you,"
and the be/do-pro is never created so it can't be
combined to form the inquiry.
|#

