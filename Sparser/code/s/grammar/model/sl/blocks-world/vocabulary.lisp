;;; -*- Mode: Lisp; Syntax: Common-lisp; -*-
;;; Copyright (c) 2015-2017,2021-2022 David D. McDonald  All Rights Reserved
;;;
;;;      File:  "vocabulary"
;;;    Module:  grammar/model/sl/blocks-world/
;;;   version:  April 2022

;; Initiated 12/3/15.

(in-package :sparser)

;;;--------
;;; Things
;;;--------

(define-category block/object
  :specializes rectangular-solid ;; n.b. includes partonomy
  :mixins (can-change-location)
  :instantiates :self
  :index (:permanent :key name)
  :lemma (:common-noun "block")
  :realization (:proper-noun name)
  :documentation "The Colins dictionary lists nine different
 possibilities for what a 'block' refers to, form a block of buildings
 in a town to a block of tickets or shares. Right now we also have
 the meaning of blocking a process, as block/prevent.")

(define-category ball
  :specializes object
  :mixins (can-change-location)
  :index (:permanent :key name)
  :lemma (:common-noun "ball")
  :realization (:common-noun name)
  :documentation "FIXME: needs a disinction from 'block'
    that licenses 'roll' but not 'slide'")

(define-category box
  :specializes object ;; can we move a box?
  :instantiates :self
  :mixins (container rectangular-solid)
  :index (:permanent :key name)
  :lemma (:common-noun "box")
  :realization (:proper-noun name))

#| An interesting deference between a block and a table is
that you can't use the table as part of any of the standard
BW constructions. Only blocks can be used. The affordance for
supporting other things is also markedly different since
a block can typically only support a single other block
(and any stack that starts with it) whereas a table can
support a substantial number of blocks.
|#  ;; And these don't move
(define-category table
  :specializes rectangular-solid
  :mixins (location)  
  :index (:permanent :list)
  :realization (:common-noun "table"))

(define-category shelf
  :specializes rectangular-solid
  :mixins (location)  
  :index (:permanent :list)
  :realization (:common-noun "shelf"))

;;--- Composites

(define-category built-out-of-blocks
  :specializes artifact
  :mixins (partonomic)
  :restrict ((part-type block))
  :index (:permanent :list)  
  :documentation "Wants a notion of where this type
 of construction can be extended, probably wants a shape,
 maybe a count and items?")

(define-category step
  :specializes block
  :mixins (artifact) ;; to serve it's function it's effectively man-made
  :restrict ((part-of staircase))
  :realization (:noun "step"))

(define-category staircase
  :specializes built-out-of-blocks
  :restrict ((part-type step))
  :realization (:common-noun "staircase"))

;; (def-synonym staircase (:noun "stair")) ;; only when plural

(define-category stack
  :specializes built-out-of-blocks 
  :realization (:common-noun "stack"))

(define-category tower
  :specializes built-out-of-blocks 
  :realization (:noun "tower")
  :documentation "Nominally the same as a stack,
    but it's a complication for NLG to make them
    synonyms, and their connotations are different")

(define-category row
  :specializes built-out-of-blocks 
  :realization (:common-noun "row"))


