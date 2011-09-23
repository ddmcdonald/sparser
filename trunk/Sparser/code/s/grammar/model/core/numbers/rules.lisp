;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:SPARSER -*-
;;; copyright (c) 1991-2000  David D. McDonald  -- all rights reserved
;;; 
;;;     File:  "rules"
;;;   Module:  "grammar;model:core:numbers:"
;;;  Version:  0.1 April 2000

;; trivial instance 10/91.  Added prefix rules for ordinals 8/16/94
;; 0.1 (6/24/99) Pulled the empty '10 million' rule. 
;;     (4/00) Considered putting the rule for "three companies" here
;;      but realized it had to go on the category collectin or it wouldn't
;;      be invertible.

(in-package :sparser)

;;;------------
;;; appositive
;;;------------

#| Doing this as a simple bare comma rule because in the (1st) target
context -- age -- it's going to have to undergo a type elevation, which
is easiest with a cs rule.  |#

(def-cfr comma-number ( "," number )
  :form appositive-prefix
  :referent (:daughter right-edge))


;;;---------------
;;;  "8 million"
;;;---------------

;; Made obsolete by the rspec on illion
;(def-cfr number  ( number multiplier ) 
;  )


;;;-------------------------
;;; ordinal prefixes to NPs
;;;-------------------------

(def-cfr ordinal ("a" ordinal)
  :form adjective
  :referent  (:daughter right-edge))

(def-cfr ordinal ("an" ordinal)
  :form adjective
  :referent  (:daughter right-edge))

(def-cfr ordinal ("the" ordinal)
  :form adjective
  :referent  (:daughter right-edge))

(def-cfr ordinal (single-capitalized-letter ordinal)
  :form adjective
  :referent  (:daughter right-edge))



;;--- "the first two"  ;; outside the semantics !!! -- just for DM&P

(def-cfr ordinal (ordinal number)
  :form adjective
  :referent  (:daughter right-edge))

