;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:(SPARSER LISP) -*-
;;; copyright (c) 1992-1999,2011-2020  David D. McDonald  -- all rights reserved
;;; extensions copyright (c) 2008-2009 BBNT Solutions LLC. All Rights Reserved
;;;
;;;     File:  "object"
;;;   Module:  "model;core:places:"
;;;  version:  January 2019

;; initiated in 10/12/92 v2.3. Added 'kind of location' 1/17/94.  Added location-
;; phrase 11/16/95. Added relative-location 11/99. 11/25 Moved in spatial-
;; orientation (from [words;]). 12/12 fixed choice of category name.
;; 0.1 (7/13/08) Included a subcategory within define-kind-of-location so we no
;;   longer have to write kind-specific categories and rules. 
;; 0.2 (4/19/09) Commented out the relative-location rule because it is
;;   masking verb-centric categories. 4/27 Added here, there as deictic-locations
;;   6/15 Added over here, over there as deictic-locations
;;   7/23 Added a treatment for "from," not sure if I'm happy with it. Throwing
;;   away the "form" analysis as way too narrow and presumptuous. 
;; 0.3. 7/21/11 Moved spatial-orientation and relative-location out to [relational]
;;   and location-description to [descriptive]. 8/14 Added name variable.
;;   and an index off of it. 9/12/11 added a bunch of named pp's. 11/1 added
;;   at-location.
;; 0.4 (1/7/15) Finally gave location a specialization of abstract. N.b. that
;;   this still needs to be coordinated with kinds/space and the other C3
;;   treatments. 
;; 2/1/16 Started merge wih C3 conception, moving base category and
;;   friends to core/kinds/space.lisp

(in-package :sparser)

#| endurant > region > {location, bounded-region}  |#

(define-category geographical-region
  :specializes bounded-region
  :mixins (location)
  :documentation "Just a renaming of bounded-region that 
 lets us group the kinds of things we find in a geography
 book: cities, oceans, continents, etc.")

;;--- general words

;; "location" is in location-of
(def-synonym location (:common-noun "place"))

;; This isn't right. 'space' is a generic/mass kind of stuff
;; so it's interpretation shouldn't be a location instance.
(def-synonym location (:common-noun "space"))
(without-comparatives
  (def-synonym location (:adjective ("spatial" "spatio"))))


;;--- The relation of being at a location

(define-category location-of
  :specializes attribute
  :mixins (nominal-attribute)
  :realization (:noun "location"))

;;;------------------------------------------------
;;; Deictics  -- needs a story about dereferencing
;;;------------------------------------------------
;; These are here (rather than inside model/core/places/)
;; so that they are accessible to a biology (R3) load
;; of the system without requiring it to incorporate all
;; the other parts of the location module. 

(define-category  deictic-location 
  :instantiates  location ;;self
  :specializes   location
  :binds ((name :primitive word))
  :index (:permanent :key name)
  :realization (:adverb name))

(define-individual 'deictic-location :name "over there")

(define-individual 'deictic-location :name "over here")

(define-individual 'deictic-location :name "here")

(define-individual 'deictic-location :name "there")


;;;--------------------------
;;; labeled transparent pp's
;;;--------------------------

(define-marker-category to-location
  :realization (:tree-family transparent-pp
                :mapping ((pp . to-location)
                          (preposition . "to")
                          (complement . location))))

(define-marker-category onto-location
  :realization (:tree-family transparent-pp
                :mapping ((pp . onto-location)
                          (preposition . "onto")
                          (complement . location))))


(define-marker-category past-location
  :realization (:tree-family computed-pp
                :mapping ((pp . past-location)
                          (preposition . past) ;; "past" -> past
                          (complement . location))))

(define-marker-category at-location
  :realization (:tree-family transparent-pp
                :mapping ((pp . at-location)
                          (preposition . "at")
                          (complement . location))))



;; This particular one makes sense only given a menu of
;; more specific types of location
(define-autodef-data 'location
  :display-string "Locations"
  :not-instantiable t)

