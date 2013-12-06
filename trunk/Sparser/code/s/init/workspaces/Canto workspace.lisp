;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:SPARSER -*-
;;; copyright (c) 2013 SIFT LLC.  -- all rights reserved
;;; This file is part of the SIFT CANTO project
;;;
;;;     File:  "Canto workspace"
;;;            "init;workspaces:"
;;;  version:  October 2013

;; Initiated 10/22/13

(in-package :sparser)

; (load "/Users/ddm/sparser/load-nlp.lisp")

#|
;; goes in <version>/loaders/grammar-modules
(define-grammar-module *waypoints*
                       :name "Waypoints and related concepts"
                       :parent *sublanguages*)

;; in <version>/config/grammars/full-grammar.lisp
;; and any other specialized loads
(include-grammar-module *waypoints*)

;; in loaders/logicals.lisp
(def-logical-pathname "waypoints;"  "sl;waypoints:")
|#
; (gload "waypoints;loader")

#| NLG meta-.
gophers: extract-mword-from-rule
conversions: convert-to-derivation-tree
binding-centric: make-derivation-tree-from-bindings
interface: realization-history

|#

#| Files to examine in canto/trunk/code/synthetic-teammate/

situation/uav_domain2.lisp  seems to have the relevant productions
  to go with Stu's notes: situation/working_notes20130628.txt
 As opposed to the one's in situation/situation_model_productions.lisp
  that Mark says are what's loaded.
situation/domain_ontology.lisp

diverse helpers in situation/sit_mod_support.lisp

|#


#|
 (mumble::say i)
 mumble::has-realization?
 (setq *try-without-annotation* t)
 mumble::realize
 mumble::convert-to-derivation-tree

 mumble::realize-dtn
 mumble::general-np-bundle-driver
|#

#|
(defvar *exact-comm*
"The first waypoint is LVN. 
It is an entry point. 
There are no airspeed or altitude restrictions. 
The effective radius is 2.5 miles. 
The second waypoint is h-area. 
It is a target. 
The airspeed restriction is between 50 and 200 knots. 
There is no altitude restriction. 
The effective radius is 5 miles.")

(defvar *t7m6-mod-comm*
"LVN is our first entry point with a radius of 2. 
After LVN proceed to H-Area as a target.  
I'll need to be above 3000 for H-Area.  
H-Area radius is 5.  
H-Area speed is 50 to 200.")

(defvar *scripted-comm*
"The first waypoint is LVN. 
It's an entry point. 
There are no airspeed or altitude restrictions. 
The effective radius is 2.5 miles. 
We're within the effective radius so go to the second waypoint. 
The second waypoint is H-AREA. 
It's a target. 
The airspeed restriction is between 50 and 200 knots. 
There is no altitude restriction. 
The effective radius is 5 miles. 
Keep the altitude over 3000 feet for the photo! 
I have a good photo of H-AREA.")

(defvar *2-waypoint-comm*
"The first waypoint is LVN. 
It is an entry point. 
There are no airspeed or altitude restrictions. T
he effective radius is 2 miles. 
The second waypoint is H-AREA. 
It is a target. 
The airspeed restriction is between 50 and 200 knots. 
There is no altitude restriction. 
The effective radius is 5 miles. 
Keep the altitude over 3000 feet for the photo!")

(defvar *waypoint-comm*
"The first waypoint is LVN. 
It is an entry point. 
There are no airspeed or altitude restrictions. 
The effective radius is 2.5 miles.")




(setf *smr-wypt-msgs-list* ;; ORIGINAL LISP AGENT STYLE MESSAGES--GOOD FOR REGRESSION TESTING

  '((lvn  20 

     ("The next waypoint is h-area. It is a target."

      "The radius is 5."

      "The altitude restriction is below 1500. 

      The speed restriction is from 50 to 100."))

   (h-area  20 

     ("The next waypoint is sel. It is a target."

      "The radius is 5."

      "The speed restriction is from 150 to 200. The altitude restriction is above 2500."))

   (sel  20 

     ("The next waypoint is f-area. It is a target."

      "The effective radius is 5."

      "The altitude restriction is below 1000. The speed restriction is above 250."))

   (f-area  20 

     ("The next waypoint is cmn. It is a target."

      "The effective radius is 5."

      "The altitude restriction is above 1500. The speed restriction is below 100."))

   (cmn  20 

     ("The next waypoint is zi. It is a target."

      "The speed restriction is from 300 to 400. The altitude restriction is from 3000 to 5000."

      "The effective radius is 5."))

   (zi  20 

     ("The next waypoint is oak. It is a exit."

      "The altitude restriction is from 2500 to 3000. The speed restriction is below 150."

      "The effective radius is 5."))

   (oak  20 

     ("The next waypoint is wp8. It is a target."

      "The speed restriction is from 150 to 200. The altitude restriction is from 500 to 1000."

      "The radius is 2.5."))

   (wp8  20 

     ("The next waypoint is prk. It is a entry."

      "The altitude restriction is from 500 to 1000. The speed restriction is above 150."

      "The radius is 5.")))

);; end setf *smr-wypt-msgs-list*

|#