;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:SPARSER -*-
;;; copyright (c) 2013 David D. McDonald  -- all rights reserved
;;; This file is part of the SIFT-Brandeis C3 project
;;;
;;;     File:  "container-and-SUV"
;;;   Module:  "grammar/sl/ISR/
;;;  version:  October 2013

;; Initiated 10/24/13 to breakout the design of SUV and container
;; into their own file. 

(in-package :sparser)


#| Notes on vehicle/car per se
A car has a 
  make -- who created it: Ford, Delorian, kit cars
  model -- a named configuration of car by a manufacturer
  year -- the year it was sold / was available for sale as a new car

'extent' -- what predicates does that license?
  size: height, width, diameter (not depth)

Honda is a car-manufacturer. It has a division called Acura (also a c-m)
Acura has a car-model called the TSX, which had different features
depending on the model-year. I bound a instances of the 2004 Acura TSX,
which is now in good to excellent condition (terms from Kelly Blue Book)
with a very small number of scratches and cracks. 
|#

(define-category motor-vehicle
  :specializes artifact
;;  :mixins
)
#| Notes for the basis for SUV qua container

located  { has-location }
  Said of something that must have a location
  Supplies a location variable whose value says where
    this thing is.
  Agnostic about when the value holds. That's recorded elsewhere,
    presumably as a situation/time index

place { location }
  The supercategory of the restriction on located.location
  "My wedding ring is on my (left ring) finger" 
  "My cell phone is in my pocket"
 The pants pocket is the place. To express the relation of
  [ David's-cell-phone.location = pocket of his jeans ]
  we need to say "is in", where the choice of preposition is
  idiosyncratically dependent on the category of location

a container is a place, preposition = "in"



|#
