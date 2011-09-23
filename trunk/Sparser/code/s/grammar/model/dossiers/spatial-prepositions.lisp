;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:SPARSER -*-
;;; copyright (c) 1999  David D. McDonald  -- all rights reserved
;;; extensions copyright (c) 2007-2009 BBNT Solutions LLC. All Rights Reserved
;;; $Id:$
;;;
;;;     File:  "spatial prepositions"
;;;   Module:  "model;dossiers:"
;;;  version:  August 2007

;; n.b. remember that we also have standalone-directions ("left") and adjectival
;; directions ("lefward"). All of these 'spatial prepositions' create locations
;; by combining with an np: "over the house"

;; initiated 11/25/99 by moving in selected prepositions from [words;prepositions2].
;; 8/13/07 Added "beyond" and "past"
;; 6/26/09 Added "out"
;; 7/23/09 Added "ahead"

(in-package :sparser)

(define-spatial-preposition "above")
(define-spatial-preposition "over")
(define-spatial-preposition "below" )
(define-spatial-preposition "beneath")
(define-spatial-preposition "under" )

(define-spatial-preposition "along" )
(define-spatial-preposition "beside")

(define-spatial-preposition "ahead of" )
(define-spatial-preposition "behind" )

(define-spatial-preposition "in" )
(define-spatial-preposition "inside" )
(define-spatial-preposition "outside" )
(define-spatial-preposition "within"  )

(define-spatial-preposition "into" )
(define-spatial-preposition "out of")

(define-spatial-preposition "at" )
(define-spatial-preposition "by" )
(define-spatial-preposition "on" )

(define-spatial-preposition "beyond" )
(define-spatial-preposition "past" )

(define-spatial-preposition "out" )

(define-spatial-preposition "ahead" )