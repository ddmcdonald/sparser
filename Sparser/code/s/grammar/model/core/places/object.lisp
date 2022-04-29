;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:(SPARSER LISP) -*-
;;; copyright (c) 1992-1999,2011-2022  David D. McDonald  -- all rights reserved
;;; extensions copyright (c) 2008-2009 BBNT Solutions LLC. All Rights Reserved
;;;
;;;     File:  "object"
;;;   Module:  "model;core:places:"
;;;  version:  April 2022

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

;;--- general words

(def-synonym location (:noun "place"))

;; This isn't right. 'space' is a generic/mass kind of stuff
;; so it's interpretation shouldn't be a location instance.
(def-synonym location (:noun "space"))
(without-comparatives
  (def-synonym location (:adjective ("spatial" "spatio"))))


;;--- The relation of being at a location

(define-category location-of
  :specializes attribute
  :mixins (nominal-attribute))

;;--- kinds of geographical regions
#| endurant > region > location, bounded-region  |#

(define-category geographical-region
  :specializes bounded-region
  :instantiates  location
  :rule-label location
  :binds ((name :primitive word) 
          (aliases  :primitive list)
          (type . region-type)
          (containing-region . location))
  :index (:permanent :key name)
  :realization (:proper-noun name) ;; for the predefined ones
  :documentation "Just a renaming of bounded-region that 
 lets us group the kinds of things we find in a geography
 book: cities, oceans, continents, etc. Can be used for
 specific places ('New England') or done compositionally
 from region types ('lake'). ")

(define-category geo-political-region
  :specializes geographical-region
  :documentation "To distinguish the geo regions that include
 civic institutions and a whole specific set of properties
 that are not part of the 'natural' ones like lakes or
 mountains. geo-political regions are things like cities
 or provinances. Legislatures and town meetings are the sort
 of things we might know about, e.g., a 'town' but will
 inherit from social-object or social-agent.")



