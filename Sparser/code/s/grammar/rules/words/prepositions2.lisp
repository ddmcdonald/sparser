;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:(SPARSER LISP) -*-
;;; copyright (c) 1992-1999,2011-2012 David D. McDonald  -- all rights reserved
;;; extensions copyright (c) 2007-2010 BBNT Solutions LLC. All Rights Reserved
;;; $Id:$
;;;
;;;      File:   "prepositions"
;;;    Module:   "grammar;rules:words:"
;;;   Version:   2.4 Octomer 2011

;; broken out from "fn words - cases" 12/17/92 v2.3
;; 1/11/94 added "through"  7/14 added "up" & "down"  8/19 added "off"
;; 9/1 added "ahead"
;; 0.1 (11/16) restated the definitions in terms of Define-preposition, which
;;      gives their literal edges form categories
;;     (1/6/95) added some locatives  1/9 put in default for brackets
;; 1.0 (1/30) changed all the brackets to be 'treetop', and moved them into
;;      the defaults of the def-form
;; 2.0 (10/14/99) Added the spatial-orientation category for the spatial
;;      prepositions, and broke out the prepositions accordingly.
;;     (11/18) finished debugging it. 
;; 2.1 (11/25) moved all this to [places;object] and [dossiers;spatial prepositions]
;;      because the category depends on location that comes later in the load.
;;      Only the prepositions that don't have a spatial interpretation are left 
;;      here. (for the moment at least) Temporal orienting prepositions are here too
;; 2.2 (1/10/07) List was woefully incomplete compared with [prepositions1]. Took
;;      cases there that were given just as function words and declared them
;;      prepositions. Lets see what happens.
;; 2.3 (4/27/09) Changed the brackets to be specialized for prepositions rather
;;      than the generic 'treetop' brackets. Motivated by verb+preposition facilities.
;;      Copied in missing cases from dossiers/spatial-prepositions
;;     4/17/10 Added "between"
;; 2.4 (9/29/11) Positioned the load to after adjuncts and reworked as a class
;;      creator with special form categories to drive general rules. 10/4 original
;;      base rule was circular so made it have the prep category as its label.
;;     (2/20/12) Added schema to the constructed cfr.

(in-package :sparser)

(defun define-preposition (string &key brackets form super-category)
  (unless brackets  ;; v.s. ].treetop  treetop.[ 
    (setq brackets (list  ].preposition preposition]. preposition.[ )))
  (unless form
    (setq form 'preposition))
  (unless super-category
    (setq super-category 'prepositional-operator))
  (let* ((word (define-function-word string
                 :brackets brackets
                 :form form))
         (category-name (name-to-use-for-category string)))
    (let* ((expr `(define-category ,category-name
                    :specializes ,super-category
                    :instantiates :self
                    :bindings (name ,word)))
           (category (eval expr))
           (word-rule
            (define-cfr category `(,word)
              :form (resolve-form-category form)
              :schema (get-schematic-word-rule :preposition)
              :referent category)))
      (push-onto-plist category :rule word-rule)
      (values category
              word-rule
              word ))))

;; "to" and "of" may warrant special treatment

(define-preposition "above" :form 'spatial-preposition)
(define-preposition "ahead" :form 'spatial-preposition)
(define-preposition "ahead of" :form 'spatial-preposition)
(define-preposition "after" :form 'spatio-temporal-preposition)
(define-preposition "along" :form 'spatial-preposition)
(define-preposition "as" )
(define-preposition "at" :form 'spatial-preposition)
(define-preposition "before" :form 'spatio-temporal-preposition)
(define-preposition "behind" :form 'spatial-preposition)
(define-preposition "below" :form 'spatial-preposition)
(define-preposition "beneath" :form 'spatial-preposition)
(define-preposition "beside" :form 'spatial-preposition)
(define-preposition "between" :form 'spatial-preposition)
(define-preposition "beyond" :form 'spatial-preposition)
(define-preposition "by" )
(define-preposition "down"  )
(define-preposition "for" )
(define-preposition "from" )
(define-preposition "in" )
(define-preposition "into" :form 'spatial-preposition)
(define-preposition "inside" :form 'spatial-preposition)
(define-preposition "on" )
(define-preposition "of" )
(define-preposition "off" )
(define-preposition "out" )
(define-preposition "out of" )
(define-preposition "outside" )
(define-preposition "over" )
(define-preposition "past" :form 'spatial-preposition)
(define-preposition "to" )
(define-preposition "through" :form 'spatial-preposition)
(define-preposition "under" :form 'spatial-preposition)
(define-preposition "with" )
(define-preposition "within" :form 'spatial-preposition)
(define-preposition "without" )
(define-preposition "up" )




