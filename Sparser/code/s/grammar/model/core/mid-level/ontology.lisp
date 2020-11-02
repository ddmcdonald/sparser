;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:SPARSER -*-
;;; copyright (c) 2014-2020 David D. McDonald  -- all rights reserved
;;;
;;;     File:  "ontology"
;;;   Module:  "model;core:relations:"
;;;  version:  November 2020

;; Initiated 12/3/15.

#| Initially a migration from C3's ISR files. Break out into individual
files once an area looks big enough to warrant it.  |#

(in-package :sparser)

;;;-------------
;;; orientation
;;;-------------
;; This will have a lot of associated machinery, at which point
;; it should be broken out into its own file

(define-category orientation
  :specializes attribute
  :documentation "Names the space of orientations
 things can have: upright, lying down, facing the camera,
 etc. Tied to an entity by mixing has-an-orientation
 into its category.")

(define-category has-an-orientation
  :specializes adds-relation
  :binds ((orientation orientation))
  :documentation "Use as a mixin to indicate that
 something has an orientation. Says nothing about
 whether the orientation is fixed (mountains, houses)
 or can be changed (blocks).")

;;;-----------
;;; dimension
;;;-----------

(define-category dimension
  :specializes attribute
  :documentation "Trivial treatment to name 2D vs 3D.
 The other major reading of 'dimension' is as a measurement
 of something's extent. When we deal with these we should
 work out the nomenclature, though even then measuring a 2D
 thing is done in different units/conventions than a 3D thing,
 and some terms will have different denotations, e.g. 'size'
 in 'square inches' vs 'cubic centimenters'."
  :instantiates nil) ;;/// = mixin?

(define-category three-dimensional
  :specializes dimension)

(define-category two-dimensional
  :specializes dimension)



;;;-------------------------------------------
;;; ordinary things -- basis for blocks world
;;;-------------------------------------------

(define-category object 
  :specializes physical-object
  :mixins (has-location ;; adds variable for its location
           has-an-orientation
           has-color ;; red
           has-height ;; short, tall (not high, low)
           has-length ;; long, short (n.b. applies to duration too)
           has-size  ;; big, little
           has-width ;; narrow, wide
           )
  ;; Inherits from physical: location,
  ;;  endurant: number, quantifier, name
  ;;  top: modifer, name, negation
  :documentation
    "This 'object' category is just an extension of
   the category'physical-object' except that it's loaded
   later after the various things that give it properties
   have been defined.")


(define-category object-face
  :specializes object
  ;; :mixins (two-dimensional)
  :documentation  "Intrinsically a block has six 'faces'. 
 For a cube, each face is the same size and is connected
 along each of its edges to another face. This geometry is
 intrinsic and constant. The perspective labeling of faces, 
 e.g. as top or bottom, depends on the orientation, and for
 a proper treatment would have us identify each intrinsic
 fact and then provide them with orientiation-specific 
 dependent location names like 'top' or  'bottom', where
 we have modeled the opposition relations via the faces.")

(define-category rectangular-solid
  :specializes object
  :mixins (#|three-dimensional|# partonomic)
  :restrict ((part-type object-face))
  :documentation "This is where we represent haw blocks
 have a set of 6 'faces'/'sides' that (a) can be assumed
 to be flat, and (b) provide a basis for identifying how
 a block is oriented (e.g. one of its sides is 'facing' us.")



;;;-----------
;;; artifacts 
;;;-----------

(define-category make-artifacts
  :specializes process 
  :binds (;; (maker . agent) [1]
          (procedure . process) ;; though instructions aren't a process
            ;; but what is this by itself?
          (product ;; ???? Would growing tomatoes count?
           . artifact)
          (type-of-product . named-type)))
; [1] We get more milage if we remove the agent, because then
; we can treat Ford as an agent and mix this in.
; It would nice to have a notion of 'activity' which is a description
; of a process, where in order to carry out the process you need to
; incorporate an agent. 

(define-category maker-of-artifacts
  :specializes physical-agent
  :mixins (make-artifacts named-type))

;; Would "manufacturer" add anything useful? Maybe distinguish crofters
;; in the Shetlands knitting sweaters from industrial giants?
 ;; ?? company (corporate entity)
      
(define-category artifact
  :specializes object
  :mixins (partonomic)
  :binds ((made-by . maker-of-artifacts))
  ;; also time-created or is it a specialization from the lifetime of Endurant?
  :lemma (:common-noun "artifact"))


(define-category structure
  :specializes artifact
  :realization (:common-noun "structure")
  :documentation "No commitment to what the structure is made out of
 of even whether it actually exists or is only imagined (though 'object'
 does imply existence/location. /// so worth recasting when looking at
 inferences/consequences and envisionment vs. construction.")
