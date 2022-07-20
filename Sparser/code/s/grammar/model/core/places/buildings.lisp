;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:SPARSER -*-
;;; copyright (c) 1994-1995,2011-2022  David D. McDonald  -- all rights reserved
;;;
;;;     File:  "buildings"
;;;   Module:  "model;core:places:"
;;;  version:  July 2022

;; initiated 7/10/22 for 'airport' in an NGA example

(in-package :sparser)

#| Taking the lead from TRIPS since we don't have anything close
beyond structures of blocks. Could investigate what some of these
categories mean to them. 

'airport' -- transportation-facility > facility > man-made-structure 
  > functional-region > geographic-region > specific-loc > location
  > geo-object > phys-object > ...

'building' -- man-made-structure > functional-region > geographic-region
  > specific-loc > location > geo-object > phys-object > ...

Specific-loc is the superc of functional-region, political-region
  and religious-region

functional-region -> man-made-structure, region-for-activity, route

route --> highway, road, shortcut, thoroughfare, tunnel
highway --> thruway,  road --> lane

|#
(define-category functional-region
  :specializes geographical-region
  :instantiates nil)

(define-category man-made-structure
  :specializes functional-region
  :mixins (physical-object))


(define-category building-type
  :specializes named-type)

(define-category building
  :specializes man-made-structure
  :binds ((type building-type))
  :documentation "Super category for any sort of building from a
 tent for camping to a sky-scraper. ///Adapt convert-to-instance
 to do the same hack as region-types -> grounded-regions")
;; named-type binds type-of: <category>


(define-category facility
  :specializes man-made-structure
  :documentation "TRIPS: provides service, open or closed")

(define-category transportation-facility
  :specializes facility
  :documentation "WordNet: terminal%1:06:00, Trips synonyms: air_field,
 air_strip, bus_station, refueling_port, train_station, airfield, base,
 pad, terminal")
