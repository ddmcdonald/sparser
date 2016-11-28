;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:(SPARSER LISP) -*-
;;; copyright (c) 2011-2013,2016 David D. McDonald  -- all rights reserved
;;;
;;;     File:  "relational"
;;;   Module:  "model;core:places:"
;;;  version:  November 2016

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

;;/// Add "17 miles NW of Foo" and such

;;;------------------------------------
;;; relative (prepositional) locations
;;;------------------------------------

(define-category relative-location  ;; "above the house"
  :instantiates self
  :specializes location
  :binds ((ground) ;; has-location -- more like 'is suitable as a location'
          (prep spatial-operator)) 
  :index (:temporary :sequential-keys prep ground)
  :realization ((:mumble (prepositional-phrase :p prep
                                                :prep-object ground))))

(defgeneric def-relative-location (preposition individual)
  (:documentation "For building them in the repl")
  (:method ((prep-name string) (n number))
    (let ((prep (word-named prep-name))
          (i (individual-object# n)))
      (assert (word-is-a-preposition? prep))
      (def-relative-location prep i)))
  (:method ((prep word) (i individual))
    (find-or-make-individual 'relative-location
                             :prep prep
                             :ground i)))

;;/// specialized preposition forms are deprecated
(def-form-rule (spatio-temporal-preposition location)
  :form pp
  :head :right-edge
  :referent (:instantiate-individual relative-location
             :with (ground right-edge
                    prep left-edge)))



;;;---------------------------------------------------
;;; object-dependent locations: bottom, side, surface
;;;---------------------------------------------------

(define-category object-dependent-location ;; same name as in TRIPS
  :specializes relative-location
  :restrict ((ground partonomic)
             (prep dependent-location))
  :instantiates self ;; inherits index
  :documentation "Defines a location in terms of a name-like label
 and an object that has an element that can be characterized by
 that label. The result is a location (the 'end' of the row) that
 may be empty or may be occupied (the 'bottom row of the stairs')."
  :realization ((:mumble (of-genitive :n prep :p ground))))


;;;-----------------------------------------------------------
;;; locations that depend on the perspective: 'left', 'front'
;;;-----------------------------------------------------------

(define-category orientation-dependent-location
  :specializes relative-location
  :instantiates self
  :restrict ((ground partonomic)
             (prep direction))
  :instantiates self ;; inherits index
  :documentation "Defines a location that depends on the orientation
 of the ground object and the point of view (perspective) of the 
 observer to be properly understood. Used with words (spatial 
 functions) like 'left' or 'front'."
  :realization ((:mumble (of-genitive :n prep :p ground))))
