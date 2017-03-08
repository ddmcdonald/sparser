;;; -*- Mode: Lisp; Syntax: Common-lisp; -*-
;;; Copyright (c) 2015-2017 David D. McDonald  All Rights Reserved
;;;
;;;      File:  "vocabulary"
;;;    Module:  grammar/model/sl/blocks-world/
;;;   version:  February 2017

;; Initiated 12/3/15.

(in-package :sparser)

;;;--------
;;; Things
;;;--------

(define-category block
  :specializes rectangular-solid
  :mixins (#|has-name|# with-specified-location)
  ;; inherits 'location' variable -- :binds ((position relative-position))
  :instantiates :self
  :index (:permanent :key name)
  :lemma (:common-noun "block")
  :realization (:noun name))

#| An interesting deference between a block and a table is
that you can't use the table as part of any of the standard
BW constructions. Only blocks can be used. The affordance for
supporting other things is also markedly different since
a block can typically only support a single other block
(and any stack that starts with it) whereas a table can
support a substantial number of blocks.
|#
(define-category table
  :specializes rectangular-solid
  :index (:permanent :list)
  :realization (:common-noun "table"))

;;--- Composites

(define-category built-out-of-blocks
  :specializes artifact
  :restrict ((part-type block))
  :index (:permanent :list)  
  :documentation "Wants a notion of where this type
 of construction can be extended, probably wants a shape,
 maybe a count and items?")

(define-category step
  :specializes block
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

(define-category row
  :specializes built-out-of-blocks 
  :realization (:common-noun "row"))


;;;-------
;;; Verbs
;;;-------

;; maybe move up to mid-level..
#|
(define-category propose
    :specializes achievement
  :mixins (with-an-agent)
  :binds ((statement  ))
  :realization
  ((:verb "propose")
   (:mumble ("propose" svscomp :o statement))
   (:tree-family )))

(define-category show
    :specializes achievement
    :binds ((statement ))
    :realization
    ((:verb "show")
     (:mumble ("show" svscomp :s ? :o statement))))

(define-category suggest
    :specializes achievement
  :mixins
  :binds
  :realization
  ((:verb "suggest")
   (:mumble ("suggest" svscomp :s ? :o statement))))
|#




