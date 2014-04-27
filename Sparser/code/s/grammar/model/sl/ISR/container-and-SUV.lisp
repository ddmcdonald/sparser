;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:SPARSER -*-
;;; copyright (c) 2013-2014 David D. McDonald  -- all rights reserved
;;; This file is part of the SIFT-Brandeis C3 project
;;;
;;;     File:  "container-and-SUV"
;;;   Module:  "grammar/sl/ISR/
;;;  version:  April 2014

;; Initiated 10/24/13 to breakout the design of SUV and container
;; into their own file. Removed space to is own file 11/11/13. 
;; Tweaking through 1/22/14. 4/14/14 Moved out 'container'

(in-package :sparser)



(define-category car-manufacturer
  :specializes maker-of-artifacts
  :restrict ((product . motor-vehicle))
  :index (:permanent :key name))
#| Notes for Ford qua manufacturer of cars, 
thence as a make of car (vehicle) http://en.wikipedia.org/wiki/Ford
Ford is a manufacturer
  what is manufactures is cars and trucks (farm equipment)
It creates artifacts,
  that concept licenses 'creator'{builder, assembler}
    and 'creation time' {birth date} 
      "came off the assembly line at <clock> on <date>"
It has buildings that it does its manufacturing in
 these are the place of the artifact creation
|#

(define-category motor-vehicle
  :specializes artifact
  :mixins (physical-surface ;;// has to be generalized 
           object
           has-spatial-location ;;// commits us to actual object
           spatial-region
           container
           can-change-location)
  :restrict ((made-by . car-manufacturer)))

(define-category car-type
  :specializes named-type
  ;; SUV, sedan, hybrid, truck - not all exclusive
  ;; It's a label/classification that applies to the whole entity
  ;; so it's probably not an attribute
  :bindings (type-of 'motor-vehicle) ;;// that quote is an
  ;; quirk of the  likely out-mooded assumptions of the code in
  ;; attach-bindings-to-category
  :index (:permanent :key name))

(define-individual 'car-type :name "suv")

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

(define-category pperson
  ;; avoid classing with 'person' or 'people'
  :specializes object
  :mixins (has-location ;; location variable v/r is c3-location
           can-change-location 
           ;; count (vs. mass)
           ))

