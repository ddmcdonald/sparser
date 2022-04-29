;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:SPARSER -*-
;;; copyright (c) 1994,2011-2013,2022 David D. McDonald  -- all rights reserved
;;; extensions copyright (c) 2008 BBNT Solutions LLC. All Rights Reserved
;;;
;;;     File:  "location kinds"
;;;   Module:  "model;dossiers:"
;;;  version:  April 2022

;; initiated 1/17/94 v2.3
;; Started populating it 6/18/08. 7/18/11 Made over as regions,
;; added a bunch. 9/13/11 adding border types. More 12/19/11.
;; 3/12/13 added "region" ///need to somehow indicate that a word like
;; that has an anaphoric role in many cases: "What region is that?"

(in-package :sparser)

#| Types of places go on this list when the might appear in a name
and implicitly tell us what kind of this is being named: "Fresh Pond",
or in type phrases like "the city of Boston".

As laid out in grammar/model/core/places/grounded-places.lisp, where
it is defined, the first argument is the name of the region type.
The second argument is the name of the category for the grounded places
that these phrases will be instances of. By convention the name of
the category for the place is the plural of the name of tye region type.

The :geo? keyword determines whethe these are naturally occurring things
and so should be subcategories of geographical-region (t) or man-made and
so subcategories of geo-political-region

The :super keyword is the name of a specific category (a subtype of one
of the base cases) the places should inherit from.  |#

;; n.b. (define-region-type "region") forms a loop in the taxonomy

(define-region-type "forest" "forests" :geo? t)
(define-region-type "gulley" "gulleys" :geo? t)
(define-region-type "lake" "lakes" :super 'body-of-water :geo? t)
(define-region-type "ledge" "ledges" :geo? t)
(define-region-type "pond" "ponds" :super 'body-of-water :geo? t)

(define-region-type "exit" "exits")
(define-region-type "park" "parks")
(define-region-type "province" "provinces")
(define-region-type "parish" "parishs")
(define-region-type "town" "towns")
(define-region-type "village" "villages")
(define-region-type "ward" "wards")


(define-border-type "border")
(define-border-type "boundary")
(define-border-type "coast")
(define-border-type "edge")


