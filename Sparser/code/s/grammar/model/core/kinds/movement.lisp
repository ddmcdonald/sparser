;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:SPARSER -*-
;;; copyright (c) 2014-2015 David D. McDonald  -- all rights reserved
;;; This file is part of the SIFT-Brandeis C3 project
;;;
;;;     File:  "movement"
;;;   Module:  "grammar/model/core/kinds/"
;;;  version:  October 2015

;; Initiated 3/20/14. Elaborated 3/31/14. 4/14/14 Moved to core/kinds/
;; and expunged of ISR vocabulary. 5/12/14 Working on getting 
;; inferences going. 8/14/15 cleaned up theme.

(in-package :sparser)

#| Something moves. Its location changes. It was at some location
before the event ("from") and it is a a different location now ("to").

The movement verb assigns roles to the constituents it is in construction
with. Incrementally as they are encountered. 

Presupositions and entailments are managed by typed methods, 
bundled together as a packet.

Roles (predicates)
  the thing that moves
  manner
  path
  from
  to

Cases:
  I throw a rock. I am the agent of its movement. I bring it about.

|#

(define-mixin-category can-change-location
  :specializes relation
  :binds ((former-location) ;; where it was before some event
          (present-location)) ;; where it is afterwards
  :documentation 
  "///Can only be ascribed to objects of type 'physical'.
 How could we say that? The two locations are presumably
 c3-location's but letting that percolate until the axioms
 get written. ")



;; N.b. After this loads it tramples all over the 'move' defined
;; in model/core/places/moving. They have to merge.
;;
(define-category move
  :specializes accomplishment
  ;; realization -- "move" and "movement"
  :restrict ((theme can-change-location))
  :binds ((from-location location) ;; source - the theme's former location
          (to-location location) ;; goal - its new location
          ;; See set of variables in define-movement-verb that
          ;; could all be inherited.///modulo when their restriction
          ;; were loaded: via-path, for-distance, in-direction
          ;; when-done, and landmark
          ;; means -- by self or via something else
          ))

