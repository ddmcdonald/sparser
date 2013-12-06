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
#|
(def-attribution "speed" quality 
  ;; 
  ;; 
  :subject-type waypoint
  :attribute-type rate)

#+ignore
(define-category speed-description
  :instantiates :self
  :specializes quality
  :binds ((subject . waypoint)
          (name :primitive word))
  :index (:permanent :key subject)
  :realization ((:common-noun "speed")
                (:tree-family possessive/new-object
                 :mapping ((result-type . :self)
                           (pos-slot . subject)
                           (head-slot . name)
                           (np . :self)
                           (possessive . waypoint)
                           (np-head . "speed")))
                (:tree-family simple-of-complement
                 :mapping ((np-item . name)
                           (of-item . subject)
                           (result-type . :self)
                           (np . :self)
                           (base-np . ("speed" speed-description))
                           (complement . waypoint)))))



;;--- (effective) radius

(def-attribution "radius" amount
  :subject-type waypoint
  :attribute-type measurement)
|#


