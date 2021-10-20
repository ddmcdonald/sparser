;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:SPARSER -*-
;;; copyright (c) 1993,2016,2020 David D. McDonald  -- all rights reserved
;;;
;;;     File:  "quantities"
;;;   module:  "model;core:amounts:"
;;;  Version:  April 2016

;; initiated 9/18/93 v2.3.  11/16/93 added form category to rule.
;; 2/23/16 Should these be quantifiers rather than determiners?

(in-package :sparser)

#|  A "quantity", like a number, is the answer to "how many"
    Quantities distribute exactly like numbers, including their composition
    to form measurements and their capacity as determiners. 

Revision 6/8/20. To accommadate 'bulk' words (according to WordNet)
 like "majority" or "bulk", which both act as partives, giving the
 quantity "of" something, and also as simple nouns taking determiners
 and standing by themselves as NP heads. Canonical quantifiers ("all")
 don't take determiners.
   This extra category gives us a place to put spell that out
 |#

;;;--------
;;; object
;;;--------

(define-category quantity
  :specializes quantifier
  :instantiates self
  :binds ((name :primitive word))
  :index (:permanent :key name)
  :lemma (:common-noun "quantity")
  :realization (:word name)
  :documentation "A 'quantity' is number-like entity that acts like
 a quantifier in that it partitions a set and is frequently the
 specifier in partitive constructions. The set of them defined
 in the dossier are particular in that they take determiners
 ('a plurality of ...'). It's a open question as to whether that
 property requires further machinery to enable it. It's also
 open as to where we put the multitude of partitive terms that
 are used to get a count term from a mass: 'a bit of cheese',
 'a piece of paper' -- See Quirk et al. #5.7 'Partition in
 respect of quantity'.")

;; dossiers/quantities.lisp

;;;------
;;; form
;;;------

(defun define-quantity (string)
  (define-function-term string 'quantifier
    :super-category 'quantity
    :rule-label 'quantity
    :word-variable 'name
    :tree-families '(quantify-of-stuff)))
