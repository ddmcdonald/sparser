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
  :lemma (:common-noun "orientation")
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
  :lemma (:common-noun "dimension")
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
  :lemma (:common-noun "object")
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
  :lemma (:common-noun "artifact")
  :mixins (partonomic)
  :binds ((made-by . maker-of-artifacts)))
  ;; also time-created or is it a specialization from the lifetime of Endurant?

(define-category structure
  :specializes artifact
  :realization (:common-noun "structure")
  :documentation "No commitment to what the structure is made out of
 of even whether it actually exists or is only imagined (though 'object'
 does imply existence/location. /// so worth recasting when looking at
 inferences/consequences and envisionment vs. construction.")


;;;-------------------------
;;; specializations / flags
;;;-------------------------

(define-mixin-category takes-of-prototype ;; takes-of-prototype-description
  :specializes variant-on
  :realization (:of prototype)
  :documentation "Intended for kinds of variant-on that can compose
 with their type-identifying complements ('prototype') using 'of'.
 Part of a hack in the grammar and syntactic functions. Using this
 category as the :rule-label of a variant-on will trigger a tailored
 rule in syntactic rules which invokes the create-prototype-of-np
 syntax-function to blend the variant and its prototype together.")


(define-mixin-category takes-wh-nominals
  :specializes linguistic  
  :documentation "Provides an indicator that a predicate
 should be understood as taking wh-nominal arguments.
 Useful for cases that don't fall into a family of
 nominal-taking predicates")
;;/// move?



;;;----------------------
;;; mental constructions
;;;----------------------

(define-category mental-construction
  :specializes non-physical
  :documentation "Something like a thought, or an opinion or a
 perception, i.e a non-physical 'object'.")

(define-category emotion :specializes mental-construction)


(define-category mental-construction-concerning
  :specializes mental-construction
  :binds ((concerning top)  ;; perhaps (:or endurant perdurant abstract)
          (source top))
  :realization
  (:about concerning
   :regarding concerning
   :of concerning
   :from source
   :with-regard-to concerning)
  :documentation "A mental-construction which is focused on some set
 of objects or events. Not clearly a sub-category of information or
 information-container, but some information containers may be of this
 type. A database may be about ships, but the information it contains
 is not a set of ships.")


(define-category create-mental-construction-concerning
  :specializes perdurant
  :mixins (knowledge-verb)
  :restrict ((experiencer top))
  :binds ((mental-construction mental-construction-concerning)
          ;; may only be the direct object of the verb?
          (concerning top))
  :realization (:about concerning
                :of concerning
                :regarding concerning
                :with-regard-to concerning))
;; Examples in things.lisp
;;  frustrate, surprise, worry, forecast, publish, focus
;;  show, demonstrate, endorse
