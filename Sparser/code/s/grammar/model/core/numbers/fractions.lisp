;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:SPARSER -*-
;;; copyright (c) 1995  David D. McDonald  -- all rights reserved
;;; 
;;;     File:  "fractions"
;;;   Module:  "model;core:numbers:"
;;;  Version:  December 1995

;; initiated 12/20/95

(in-package :sparser)


#|  A 'fraction' in its ordinary sense is a ratio of two numbers, and will
often be expressed by two digits joined by a slash: "15/16" -- which is pronounced
(or written out in words) as a cardinal number (here just 'number') and
a plural ordinal: "fifteen sixteenths" or "15/16ths".  

If that were all there was to it, we'd just add some more phrase structure
rules (or word-patterns) and be done with it.  But for denominators 2 and 4 
we have extra words, "half" ("halves") and "quarter", which at least supplement
their normal ordinal correspondents ("second", "fourth") in the set of ordinals,
or more likely are lexical stuff of a different sort since (a) they support
additional senses and (b) small numbers are treated oddly in many languages
so why should English be different. [See QGL&S 4.22]

In particular, when a fraction is being used to name a particular fractional
portion of a quantity, we must use these words rather than their normal ordinal
counterparts, while regular ordinals would be used for different size fractions.
In business texts this is most obvious in references to the time periods
over which earnings are reported: "quarterly earnings", "the second quarter of
1995", "second quarter earnings". Compare: "the second third of the school"

So we need a type for these new words and have to decide what kind of object
they denote. If we follow the convention that anything that can be the head
of a definite subsequent referent must name a kind of stuff (so that we can
use the discourse history in the obvious way to look up the anaphoric referent)
then we have to conclude that the individual words refer to categories:
"... as compared with the same quarter last year".

In that usage, where the words are picking out fractional components rather
than naming rational numbers, the individuals are going to be the full phrases
and will include information designating which fraction they are.  In the case
of the fiscal time phrases, they will be either generic ("every third quarter")
or specific to a given (fiscal) year, and we can assume that they're specific
as the default since the generic case will presumably be marked.
|#


(define-category fraction
  :specializes number
  :instantiates self
  :binds ((numerator . number)
          (denominator . number))
  :index (:sequential-keys denominator numerator))




;; This is for the fractional-portions. It is just the supercategory, 
;; "quarter" and "half" are specializations of it.  The analogy is
;; to 'measurements', which consist of a unit and a quantity.  Here the
;; analog to the unit is 'quarter' or 'half' (and for that matter 'third', etc.)
;; and the analog to the quantity is a selecting term that designates
;; which of the 'quarters' in the whole amount we are referring to,
;; e.g. "third quarter".  This 'measurement' is logically incomplete
;; in that its mention implies some 'stuff' that it is measuring, and when
;; combined with the stuff we get what I've been calling an 'amount',
;; which is a dual notion similar to a collection in that it is primarily
;; a refence to a particular kind of stuff, but the individual is quantified
;; in a particular way that reflects that we are dealing with some amount
;; of it.   The analogy doesn't really go through since here we have
;; what's effectively a selector quantifier that is picking out a member
;; of an implicit set, but it is close enough to be a useful guide to
;; what sorts of objects we should have and how they should combine.


(define-category  fractional-term
  :specializes unit-of-measure
  :instantiates self )

(define-category  quarter
  :specializes fractional-term
  :instantiates fractional-term
  :binds ((name  :primitive word))
  :index (:permanent :key name)
  :realization (:common-noun "quarter"))

(define-category  half
  :specializes fractional-term
  :instantiates fractional-term
  :binds ((name  :primitive word))
  :index (:permanent :key name)
  :realization (:common-noun "half"))  ;;/// !! needs specialization option for plural



(define-category  ordinal-fraction
  :specializes  measurement
  :instantiates self
  :binds ((selector . ordinal)
          (unit . fractional-term))
  :index (:sequential-keys unit selector)
  :realization (:tree-family modifier-creates-definite-individual
                :mapping ((result-type . :self)
                          (base-category . unit)
                          (individuator . selector)
                          (np . :self)
                          (modifier . ordinal)
                          (np-head . (quarter half)))))
                             ;; Given the way the tree-family is executed, this
                             ;; leads to the construction of wierd rules that are
                             ;; blocked as extra versions of existing rhs, e.g.
                             ;;    quarter -> "-" half
                             ;; That's a problem with the eft mechanisms, and it
                             ;; doesn't block the intended rules, so I'm going
                             ;; to leave it for now (12/22/95)


;; 1/2 That linguistic analysis is probably wrong in assuming the result
;; is an NP since we get "the first quarter" (with an implicit "of..."
;; that is obvious from context".  Alternatively, the "the" goes with that
;; missing "of.." phrase and this one is a qualifier and so an np. Yet another
;; alternative is that these are just wierd.  In any event, we need this
;; determiner-absorbing rule to make it all work:

(def-cfr ordinal-fraction ("the" ordinal-fraction)
  :form np
  :referent (:daughter right-edge))

