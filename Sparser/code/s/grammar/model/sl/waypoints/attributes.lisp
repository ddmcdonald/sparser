;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:SPARSER -*-
;;; copyright (c) 2013 SIFT LLC.  -- all rights reserved
;;; This file is part of the SIFT CANTO project
;;;
;;;     File:  "attributes"
;;;            grammar/model/sl/waypoints/
;;;  version:  December 2013

;; Taken from waypoints as its own file 12/2/13. These should 
;; be folded back into the core when we cleanup. Using this file
;; to experiment with. 

(in-package :sparser)


#|
There are no airspeed or altitude restrictions.
The airspeed restriction is between 50 and 200 knots.
H-Area speed is 50 to 200.
The speed restriction is above 250.  (below 100)

"airspeed" is just "speed" where the medium being moved through
is the air (vs. water, or over land. What's it called in space?)

'speed' an attribute of an object that can move, e.g. the UAV.
It's a 'rate' -- 
  which is measured as a quantity of some unit-of-measure
  "per" some time-unit. 
|#
(define-scalar-quality "speed" :value (rate number))
#|
;; This makes a predicate -- speed-of, with a simple category
;; for its predicate. Need a real category for these predicates
(def-attribution "speed" quality 
  :subject-type waypoint
  :attribute-type rate)

;;--- (effective) radius

(def-attribution "radius" amount
  :subject-type waypoint
  :value-type measurement)  |#

; "effective" here has the same meaning as "in effect" or
; "for all intents and purposes". It doesn't mean 'useful'
; or 'good at what it does'. 


