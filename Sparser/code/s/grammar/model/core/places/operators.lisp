;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:SPARSER -*-
;;; copyright (c) 2016-2017 David D. McDonald  -- all rights reserved
;;;
;;;     File:  "operators"
;;;   Module:  "model;core:places:"
;;;  version:  July 2017

;; instantiates 11/2/16 to provide a semantic grounding to spatial
;; prepositions and such as functions. 

(in-package :sparser)

;;;------------------------------------------------
;;; prepositions that designate relative locations
;;;------------------------------------------------

#| This treats spatial propositions ("on", "under") as well as
orientation-base geometical terms like "top" as functions from
objects to spatial relationships or selected component parts.
  The specific relationship between the figure and ground is
determined by the operator and the types of the two objects,
|#

;; 7/16/17 is this OBE once we swap over?
(define-category spatial-operator
  :specializes prepositional
  :documentation "Provides a super type for spatial prespositions.
    See define-preposition. Allows more specific type-based
    treatment of prepositional phrases as locations, see analyse-pp.
    The result of aqpplying a spatial operator to something that
    has-location is usually a relative-location.")

;; Now to partition prepositions et al. to reflect more specific
;; figure - ground relationships



;;;------------------------------------------------------------------
;;; nouns and such that define object-dependent-locations ("bottom")
;;;------------------------------------------------------------------
;; dossier: dependent-locations -- "bottom", "side"
#|/// Where/how do we do we state facts about opositions (e.g. 
 the two ends of a row) or geometry (e.g. of the sides of a block? |#

(define-category dependent-location
  :specializes spatial-operator
  :mixins (physical)
  :documentation "Goes with the category object-dependent-location to
    in the same way that spatial-operator goes with relative-location.
    Typical instances would be 'bottom' and 'side'"
  :instantiates self
  :index (:permanent :key name)
  :realization (:common-noun name))

(define-category multiple-dependent-location
  :specializes dependent-location
  :mixins (partonomic)
  :documentation "Used for 'sides' and any similar functional
    dependent locations that occur more than once on the object 
    they depend on."
  :instantiates self
  :index (:permanent :key name)
  :realization (:common-noun name))


;;--- define the words

(defun define-dependent-location (string &key multiple category-name)
  "Modeled on define-preposition with supercategory determined
   by keyword arg. Lots of room for growth."
  (let ((word (resolve/make string))
        (form 'common-noun)
        (category-name (or category-name ;; don't redefine 'top'
                           (name-to-use-for-category string)))
        (super-category 'object-dependent-location))
    (let* ((expr `(define-category ,category-name
                    :specializes ,super-category
                    :instantiates :self
                    :lemma (:common-noun ,word)))
           (category (eval expr))
           (word-rule
	    (def-cfr/expr category `(,word)
              :form (resolve-form-category form)
              :schema (get-schematic-word-rule :common-noun)
              :referent category)))
      (add-rule word-rule category)
      (when multiple
        (add-rules (make-cn-plural-rules word category category)
                   category))
      (values category
              word-rule))))



;;;------------------
;;; syntax functions
;;;------------------

(defun add-dependent-location (operator head)
  "Called in noun-noun-compound when the qualifier ('operator')
   is a dependent-location such as 'bottom' or 'end'."
  (tr :add-dependent-location operator head)
  (bind-variable 'location operator head))

(defun make-object-dependent-location (operator object)
  "For phrases like 'the bottom of the stack', where the calling
   syntax-function (interpret-pp-adjunct-to-np np pp) has soaked up
   the 'of' and has checked that the np is a dependent-location
   and the object of the pp is partonomic (so we can identify  
   one of its parts)."
  (assert (itypep operator 'relative-location))
  (tr :make-object-dependent-location operator object)
  (bind-variable 'ground object operator))
  
