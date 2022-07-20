;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:(SPARSER LISP) -*-
;;; copyright (c) 2011-2013,2016-2017,2022 David D. McDonald  -- all rights reserved
;;;
;;;     File:  "relational"
;;;   Module:  "model;core:places:"
;;;  version:  April 2022

;; Extracted from object file 7/21/11. Evicerated it 9/28 in lieu of
;; doing something more nuanced. Removed the category/individuals
;; spatial-orientation because the list in the spatial-prepositions
;; dossier includes many that server other functions as well such
;; as organizing time. 10/27 fixed issue with the form rules.
;; (3/18/13) But since then that grouping of prepositions has been
;; flushed in favor of giving them their own identities. Put in a
;; couple of prepositions explicitly in the realization, and got in 
;; a hassle with redefinition so added (now commented out cfr) just
;; to see the results. 

(in-package :sparser)


;;;------------------------------------
;;; relative (prepositional) locations
;;;------------------------------------

(define-category relative-location
  :specializes location
  :mixins (prepositional)
  :instantiates self
  :binds ((ground)) ;; has-location? -- more like 'is suitable as a location'
  :documentation "Specialized by spatio-temporal prepositions that
     function as predicates in something of the same way as verbs do."
  :realization ((:mumble (prepositional-phrase :prep-object ground))))


;;;---------------------------------------------------
;;; object-dependent locations: bottom, side, surface
;;;---------------------------------------------------
;; for operators that are dependent-locations like "bottom" or "side"

(define-category object-dependent-location ;; same name as in TRIPS
  :specializes relative-location
  :mixins (physical)
  :restrict ((ground partonomic))
  :instantiates self
  :documentation "Defines a location in terms of a name-like label
 and an object that has an element that can be characterized by
 that label. The result is a location (the 'end' of the row) that
 may be empty or may be occupied (the 'bottom row of the stairs').
 This duality implies that we are sometimes describing things
 as well as locations, hence the physical mixin."
  :realization ((:mumble ((of-genitive :p ground)))))

(define-category multi-dependent-location
  :specializes object-dependent-location
  :binds ((qualifier direction)) ;;//and what else?
  :instantiates self
  :documentation "Used with dependent-location operators like
 'side' or 'end' that will apply to multiple locations on
 the ground object (e.g. a 'block'). The additional variable
 'descriminator' is for recording terms that indicate which
 of the possible locations on the ground object is intended,
 as in 'left side (of the block)'."
  :realization ((:mumble ((of-genitive :p ground)))))


;;;-----------------------------------------------------------
;;; locations defined by a frame determined by compass-points
;;;-----------------------------------------------------------
;;/// Add "17 miles NW of Foo" and such

(define-category direction-relative-location
  :specializes relative-location
  :instantiates self
  :restrict ((ground location))
  :documentation "The direction ('south of Boston') is the figure
 and the complement ('Boston', 'the border') is the ground, aka the
 reference point. Implicitly defines a region generally just beyond
 the reference in the indicated direction.")

;;;-----------------------------------------------------------
;;; locations that depend on the perspective: 'left', 'front'
;;;-----------------------------------------------------------
;; for direction-based locations ("left side")

;;//// Not used. The "left" is now a qualifier on
;; the multi-dependent-location "side"
;; Keeping around since may find a use when we have more
;; complex point-of-view relative locations
(define-category orientation-dependent-location
  :specializes relative-location
  :instantiates self
  :restrict ((ground partonomic))
  :instantiates self
  :documentation "Defines a location that depends on the orientation
 of the ground object and the point of view (perspective) of the 
 observer to be properly understood. Used with words (spatial 
 functions) like 'left' or 'front'."
  :realization ((:mumble ((of-genitive :p ground)))))


;; moved from places/object.lisp 4/1/22
;;;------------------------------------------------
;;; Deictics  -- needs a story about dereferencing
;;;------------------------------------------------

(define-category  deictic-location 
  :instantiates  location 
  :specializes   location
  :binds ((name :primitive word))
  :index (:permanent :key name)
  :realization (:adverb name)
  :documentation "Prototypical cases are 'here' and 'there', where
 the words are presently defined as pronouns in rules/words/pronouns
 and then should get their meaning by a call in core/pronouns/cases
 like the other words that started out as function-words in pronouns.
 Treatment is analogous to define-relative-time-adverb for 'sometimes")

(defun define-location-adverb (string)
  (define-adverb string :super-category 'deictic-location))
