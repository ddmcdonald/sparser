;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:SPARSER -*-
;;; copyright (c) 2022 David D. McDonald  -- all rights reserved
;;;
;;;     File:  "airports"
;;;   Module:  "model/sl/military
;;;  version:  July 2022

;; initiated 7/10/22 for NGA prototyping

(in-package :sparser)

#| 
Airfields have sides: "the southwest side of the airfield"
and ends: "on the alert apron at the south end of the airfield"
|#

(define-category airport
  :specializes transportation-facility
  :mixins (partonomic)
  :realization (:noun ("airport" "airfield"))
  :documentation "an airport is the quinessential expample of a habitat,
 with canonical parts and affordances, a state space, population of people
 playing roles, etc. See any C3 paper.")

(define-category airport-terminal
  :specializes transportation-facility
  :realization (:noun "terminal")
  :documentation "The terminal where the planes park and passengers
 arrive and get on them is as rich a habitat as the airport it is
 part of")

(define-category place-for-aircraft
  :specializes location
  :instantiates nil
  :documentation "This is a placeholder on a more thorough treatment of
 airports and shared superclass for airport parts where aircraft can be.
 These are all flat, usually paved surfaces of sufficient size. Helicopters
 are different (besides the flat part) but that's in the noise since when
 they are on the ground they are in one of these places")

(define-category tarmac
  :specializes place-for-aircraft
  :realization (:noun "tarmac")
  :documentation "From WordNet: 'tarmacadam, tarmac, macadam (a paved surface
 having compressed layers of broken rocks held together with tar)'. In a conventional
 modern airport all the areas outside of the terminal and passenger handling
 areas are all covered in this stuff. It's used as a conventional location for
 an aircraft when they don't need to be more specific.")

(define-category runway
  :specializes place-for-aircraft
  :mixins (has-an-orientation)
  :realization (:noun "runway")
  :documentation "From WordNet: 'a strip of level paved surface where planes can
 take off and land'. Runways have 'ends' (as do airfields). //Would be nice to have
 retangular shape (vs. the 'solid' in BW) so much of our spatial relations could
 just work.")

(define-category apron
  :specializes place-for-aircraft
  :realization (:noun "apron")
  :documentation "from WordNet: 'a paved surface where aircraft stand while
 not being used'")

