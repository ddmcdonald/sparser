;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:SPARSER -*-
;;; copyright (c) 1992-1997,2011-2022 David D. McDonald  -- all rights reserved
;;; extensions copyright (c) 2007 BBNT Solutions LLC. All Rights Reserved
;;;
;;;     File:  "loader"
;;;   Module:  "model;core:places:"
;;;  version:  July 2022

;; initiated in December 1990, added flags 12/28/91 v2.1
  ;; 1.0 (10/12/92 v2.3) Shadowing to gradually introduce the new semantics
;; 1.1 (10/17/93) revivifying the old stuff. 
;;     (1/17/94) added [rules].  (3/10) uncommented [U.S. States].
;;     (4/4) added [other]
;;     (1/9/95) added [directions], [directional rules] and [compass points]
;;     (3/18) fixed the one non-logical
;; 1.2 (5/1) move cities object file up to [places;] level
;; 1.3 (9/4/07) bumped [directions] to 1.
;;     (7/13/11) Added paths and reorg'd other to be regions. 7/21 broke
;;      [relational] and [descriptive]  8/3 [configurations]. 8/4 [moving]
;;     (8/12) fixed ordering bug. "other locations" is losing its utlity
;;      Added [places].

(in-package :sparser)

;; This whole loader is gated on *location* by the master loader

(gload "places;object")
(gload "places;operators")

(gate-grammar *locations-core*
  (gload "places;relational")
  (gload "places;directions") ;; uses relative-location
  ;; (gload "places;methods") moved to late in load-the-grammar
  (gload "places;compass points")
  (gload "places;traces"))

(gate-grammar *other-locations*
  (gload "places;places") ;; name-of-location
  (gload "places;directional rules") ;; "to" + direction
  (gload "places;paths") ;; highways
  (gload "places;configurations") ;; intersections, junctions
  (gate-grammar *countries*
    (gload "countries;relation"))
  (gload "places;regions") ;; geographical regions
  (gload "places;grounded-places")
  (gload "places;buildings")
  (gload "places;location descriptions")
  (gload "places;moving"))

(gate-grammar *countries*
  (gload "countries;loader"))

(gate-grammar *cities*
  (gload "places;city"))
 
(gate-grammar *US-States*
  (gload "places;US states"))


;; rules have to load last so that referential versions of the
;; various categories are formed rather than simple categories
(gate-grammar *locations-core*
  (gload "places;rules"))

