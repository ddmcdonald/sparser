;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:(SPARSER COMMON-LISP) -*-
;;; copyright (c) 2013-2016 David D. McDonald  -- all rights reserved
;;; 
;;;     File:  "adjectives"
;;;   Module:  "grammar;rules:syntax:"
;;;  Version:  June 2016

;; Initiated 1/22/13 to provides a place for the generic method for premodifiers.
;; 6/1/14 added traces. 
;; 7/31/14 added form rules. 1/12/14 Tried converting the method to a
;; k-method but got the calling pattern wrong (or something), so make the
;; addition to the original method, i.e. to not drop the modifier on the
;; floor. 
;; 4/24/2015 maybe-copy modified head before binding variable -- needed to avoid damaging vocabulary entries

(in-package :sparser)

;;;-----------
;;; base case
;;;-----------

(def-k-function modifier+noun (modifier head)
  (:documentation "Motivated by adjectives like 'about'. Called when the
                  generic-np-premodifier or modifier-creates-definite-individual ETF is used.
                  Determines the referent of the edge that combines these two elements.")
  (:method (modifier head)
    ;; drop the modifier on the floor for the moment.
    ;; Need to make a design decision about single binding vs. full
    ;; individual.
    (tr :modifier+noun_modifier+t)
    (setq head (individual-for-ref head))
    (setq head (bind-dli-variable 'modifier modifier head))
    head))

(def-form-rule (modifier noun)
  :form n-bar
  :referent (:method modifier+noun left-edge right-edge))

(def-form-rule (modifier common-noun)
  :form n-bar
  :referent (:method modifier+noun left-edge right-edge))

(def-form-rule (modifier common-noun/plural)
  :form n-bar
  :referent (:method modifier+noun left-edge right-edge))

(def-form-rule (modifier n-bar)
  :form n-bar
  :referent (:method modifier+noun left-edge right-edge))

(def-form-rule (modifier np)
  :form n-bar
  :referent (:method modifier+noun left-edge right-edge))

#+ignore ;; the NOT goes with the copular verb above "is not transient"                 
(def-form-rule (not adjective) 
  :head :right-edge 
  :form adjective
  :referent (:head right-edge :bind (negation left-edge)))


#| Originals
(def-form-rule (modifier noun)
  :form np
  :referent (:daughter right-edge))

(def-form-rule (modifier common-noun)
  :form np
  :referent (:daughter right-edge))

(def-form-rule (modifier common-noun/plural)
  :form np
  :referent (:daughter right-edge))

(def-form-rule (modifier n-bar)
  :form np
  :referent (:daughter right-edge))

(def-form-rule (modifier np)
  :form np
  :referent (:daughter right-edge)) |#

