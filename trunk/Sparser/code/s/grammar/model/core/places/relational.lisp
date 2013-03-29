;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:(SPARSER LISP) -*-
;;; copyright (c) 2011-2013 David D. McDonald  -- all rights reserved
;;;
;;;     File:  "relational"
;;;   Module:  "model;core:places:"
;;;  version:  March 2013

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

(define-category  relative-location  ;; "above the house"
  :instantiates self
  :specializes location
  :binds ((place)
          (functor :primitive word)) ;;  spatial-orientation))
   :realization (:tree-family content-pp
                 :mapping ((type . :self)
                           (articulator . functor)
                           (item . place)
                           (pp . :self)
                           (preposition . ("in" "on")) ;; what else is imortant?
                           (complement . np))))

#|
(def-cfr relative-location ("in" region)
  :form pp
;;  :head :right-edge
  :referent (:instantiate-individual relative-location
             :with (place right-edge
                    functor left-edge)))
|#
(def-form-rule (spatio-temporal-preposition location)
  :form pp
  :head :right-edge
  :referent (:instantiate-individual relative-location
             :with (place right-edge
                    functor left-edge)))


