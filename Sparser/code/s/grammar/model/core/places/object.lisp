;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:(SPARSER LISP) -*-
;;; copyright (c) 1992-1999,2011-2016  David D. McDonald  -- all rights reserved
;;; extensions copyright (c) 2008-2009 BBNT Solutions LLC. All Rights Reserved
;;;
;;;     File:  "object"
;;;   Module:  "model;core:places:"
;;;  version:  February 2016

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

