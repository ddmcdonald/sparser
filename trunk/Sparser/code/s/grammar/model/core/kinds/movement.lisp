;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:SPARSER -*-
;;; copyright (c) 2014 David D. McDonald  -- all rights reserved
;;; This file is part of the SIFT-Brandeis C3 project
;;;
;;;     File:  "movement"
;;;   Module:  "grammar/model/core/kinds/"
;;;  version:  April 2014

;; Initiated 3/20/14. Elaborated 3/31/14. 4/14/14 Moved to core/kinds/
;; and expunged of ISR vocabulary/

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
  ;; :specialies  ??  predicate ???
  :binds ((former-location) ;; where it was before some event
          (present-location)) ;; where it is afterwards
  :documentation 
  "///Can only be ascribed to objects of type 'physical'.
 How could we say that? The two locations are presumably
 c3-location's but letting that percolate until the axioms
 get written. ")



(define-category move
  :specializes accomplishment
  :mixins (event) ;;//////// Sort out 'event' vs. 'perdurant'
  :binds ((theme . can-change-location)
          ;;/// FrameNet for the thing that moves
          ;; /// If this is a useful variable move it higher
          (moved-from) ;; source - the theme's former location
          (to-location) ;; goal - its new location
          ;; See set of variables in define-movement-verb that
          ;; could all be inherited.///modulo when their restriction
          ;; were loaded: via-path, for-distance, in-direction
          ;; when-done, and landmark
          ;;
          ;; means -- by self or via something else
          )
  ;; realization -- "move" and "movement"
  :restrict ((theme . can-change-location)))

