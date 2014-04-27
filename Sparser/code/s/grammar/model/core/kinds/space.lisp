;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:SPARSER -*-
;;; copyright (c) 2013-2014 David D. McDonald  -- all rights reserved
;;; This file is part of the SIFT-Brandeis C3 project
;;;
;;;     File:  "space"
;;;   Module:  "model;core:kinds:"
;;;  version:  April 2013

;; Broken out of container-and-suv 11/11/13. Moved to kinds 4/14/14 and
;; included container.  

(in-package :sparser)

;;--- mini ontology of space.
;; Merge this into the regular model in /grammar/model/core/places/
;; at some point when we want to align it with Space-ML or some
;; hybrid. 


(define-category c3-location ;; "place" ??
  :specializes nil ;; Dolce calls this 'region', which specializes 'abstract'
  ;; The supercategory of the restriction on has-location.location
  ;;  "My wedding ring is on my (left ring) finger" 
  ;;  "My cell phone is in my pocket"
  ;; The pants pocket is the place. To express the relation of
  ;;  [ David's-cell-phone.location = pocket of his jeans ]
  ;; we need to say "is in", where the choice of preposition is
  ;; idiosyncratically dependent on the category of location
)


(define-category c3-region
  :specializes c3-location
  :documentation "'Region' is taken abstractly here using the notion of demarcation or
 setting boundaries over some domain to pick out a particular part of
 it. You can have a region of the number line, a region of a
 process (e.g. S-phase in cell division), a region of space. The emphasis on
 regions having interiors in which other things can be located.  The world
 itself is not cut up into nice parts. Any partitionings or identification
 of regions are arbitrary cognitive constructs, which makes them abstract:
 not situated in time or space.
    An earlier version of this class had an 'applicable-domain' slot
 in it to identify 'The kind of stuff this regain demarcates: numbers, cytoplasm,
 curricula, geographical space, etc.', however it not been clear how to
 fill this slot with anything without going second order (i.e. using a
 class), and it's worth exploring that that would come to in some use-case."
  :binds ((boundary 
;   "The thing that separates the region from its melieu so as to
; distinguish  things that are inside the region from those that are
; outside it. In real stuff (as opposed to mathematical idealizations),
; the boundary has substance and is an entity in its own right: the
; membrane of a cell, the border (DMZ) between two countries, the cover
; of a book. Ontologically, a boundary is a Feature, dependent on the
; Region for its existence."
           ;; . foundation.feature, or the built-in boundary category
            )
          (interior . c3-region))
;  :realization "region"  "location"  "where"
)

(define-category spatial-region
  :specializes c3-region)
;; And restricts the 'applicable-domain' of the region
;; to a category that refers to space (as opposed to time
;; or color). 


;;;------------------
;;; mixin predicates
;;;------------------

(define-category has-location
  :specializes nil ;; predicate?  What's the top of these.
  ;; Said of something that must have a location
  ;; Supplies a location variable whose value says where
  ;;   this thing is.
  :binds ((location c3-location)))
  ;; Agnostic about when the value holds. That's recorded elsewhere,
  ;; presumably as a situation/time index

(define-category has-spatial-location
  :specializes has-location
  :restrict ((location . spatial-region)))


;;;----------------
;;; container, etc.
;;;----------------

(define-category container
  :specializes c3-region
  :binds ((contents)) ;; endurant?
  :documentation
 "A container is a region that has (at least the potential) to contain
 stuff -- to have stuff in it, particularly stuff that can move in or
 out of it. Containers can have other containers among their contents.
 We separate out 'containment' from 'region' because regions don't
 have to have contents, just extent.
    Like the 'applicable-domain' of Region, the original version of
 Container had a 'kind-of-thing-contained', but again, it was only
 going to be informational without 2d order machinery, and we can get
 much of the same effect through range restrictions on the 'contents'
 slot.")

#|  /// We need something of this sort as predicates on physical. 
 (Property containedIn
   "One step containment. Relates an item to the container it is
   (immediately) in, if any."
   (range Container)
   (min-cardinality 0))

 (Predicate inside
   "Is the the item in the container or in any of the containers it contains?"
   (item top!Thing) (container Container))

 (Predicate outside
   "Is the item not in the container?"
   (item top!Thing) (container Container))
|#