;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:SPARSER -*-
;;; copyright (c) 1994,2011-2013,2020  David D. McDonald  -- all rights reserved
;;; extensions copyright (c) 2008 BBNT Solutions LLC. All Rights Reserved
;;;
;;;     File:  "location kinds"
;;;   Module:  "model;dossiers:"
;;;  version:  April 2020

;; initiated 1/17/94 v2.3
;; Started populating it 6/18/08. 7/18/11 Made over as regions,
;; added a bunch. 9/13/11 adding border types. More 12/19/11.
;; 3/12/13 added "region" ///need to somehow indicate that a word like
;; that has an anaphoric role in many cases: "What region is that?"

(in-package :sparser)

#| Types of places go on this list when the might appear in a name
and implicitly tell us what kind of this is being named: "Fresh Pond",
or in type phrases like "the city of Boston".
   When we want to define a set of individuals of one of these
types, say the set of national parks, then we move from the simple
label that there provide to a category and defining form such as
we have with city or country. |#

;; (define-region-type "region") forms a loop in the taxonomy

(define-region-type "exit")
(define-region-type "forest")
(define-region-type "gulley")
(define-region-type "lake")
(define-region-type "ledge")
(define-region-type "province")
(define-region-type "parish")
(define-region-type "park")
(define-region-type "pond")
(define-region-type "town")
(define-region-type "village")
(define-region-type "ward")

(define-border-type "border")
(define-border-type "boundary")
(define-border-type "coast")
(define-border-type "edge")


