;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:SPARSER -*-
;;; copyright (c) 2014-2016 David D. McDonald  -- all rights reserved
;;; This file is part of the SIFT-Brandeis C3 project
;;;
;;;     File:  "movement"
;;;   Module:  "grammar/model/core/kinds/"
;;;  version:  November 2016

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
  manner (on perdurant)
  path
  from
  to

Using longer variable names until we can get nice generalization
from 'from ... to ..' and such
|#


(define-mixin-category can-change-location
  :specializes attribute
  :binds ((former-location location) ;; where it was before some event
          (present-location location)) ;; where it is afterwards
  :documentation 
  "Can only be ascribed to objects of type 'physical'.
   How could we say that?")

(define-category move
  :specializes motion
  ;; realization -- "move" and "movement"
  :mixins (with-theme)
  :restrict ((theme endurant))  ;;can-change-location))
  :binds ((from-location location) ;; source - the theme's former location
          (to-location location) ;; goal - its new location

          ;; moved here from define-movement-verb
          ;; Note that some of these restrictions don't exist
          ;; at the timw this is executed so they will start out
          ;; as simple categories and get expanded once
          ;; their actual definitions are reached
          (via-path . path)
          (for-distance . measurement) ;; distance?
          (in-direction . direction)
          (when-done . time)
          (landmark . location)))

#| Deliberately ignoring transfer-location in favor of
 local analysis. If they got some inferential content
 that could warrent reanalysis
 See ecipedia/ecis/transfer-event-ecis.lisp
        + 4 transfer-location
          + 5 move-self
          + 5 move
            + 6 give
            + 6 put
|#

