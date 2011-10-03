;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:(SPARSER LISP) -*-
;;; copyright (c) 2011 David D. McDonald  -- all rights reserved
;;; $Id$
;;;
;;;     File:  "relational"
;;;   Module:  "model;core:places:"
;;;  version:  September 2011

;; Extracted from object file 7/21/11. Evicerated it 9/28 in lieu of
;; doing something more nuanced. Removed the category/individuals
;; spatial-orientation because the list in the spatial-prepositions
;; dossier includes many that server other functions as well such
;; as organizing time. 

(in-package :sparser)

;;/// Add "17 miles NW of Foo" and such

;;;------------------------------------
;;; relative (prepositional) locations
;;;------------------------------------

(define-category  relative-location  ;; "above the house"
  :instantiates self
  :specializes location
  :binds ((place)
          (functor spatial-orientation))
;;   :realization (:tree-family content-pp
;;                 :mapping ((type . :self)
;;                           (articulator . functor)
;;                           (item . place)
;;                           (pp . :self)
;;                           (preposition . spatial-orientation)
;;                           (complement . np))))
)

(def-form-rule (spatial-preposition location)
  :form pp
  :referent (:instantiate-individual relative-location
             :with (place right-edge
                    functor left-edge)))

(def-form-rule (spatio-temporal-preposition location)
  :form pp
  :referent (:instantiate-individual relative-location
             :with (place right-edge
                    functor left-edge)))


