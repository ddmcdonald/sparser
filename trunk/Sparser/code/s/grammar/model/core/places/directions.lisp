;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:(SPARSER LISP) -*-
;;; copyright (c) 1995-1999  David D. McDonald  -- all rights reserved
;;;
;;;     File:  "directions"
;;;   Module:  "model;core:places:"
;;;  version:  0.1 November 1999

;; initiated in 1/9/95. Added string printer 1/9/96.
;; 0.1 (11/25/99) Changed the realizations to use the new schema protocol
;;      and flushed the treatment of prepositions that take np complements
;;      over to its own file [spatial prepositions] with their category
;;      in [places;object]. Broke out the two types as their own subcategories

(in-package :sparser)

;;;---------------------
;;; uninstantiated base
;;;---------------------

(define-category  direction
  :instantiates  self
  :specializes   location)

(defun string/direction (d)
  (let ((w (value-of 'name d)))
    (word-pname w)))

;;;-------
;;; cases
;;;-------

;; These are np heads.  When their deictic anchors are given explicitly
;; they appear as prepositional complements: "(to the) left of the garage"
;; except in the case of proper names where they're also simple classifiers:
;; "(to) John's left", 

(define-category  standalone-direction   ;; "left"
  :instantiates direction
  :specializes direction
  :binds ((name :primitive word))
  :realization (:standalone-word name))


(defun define-standalone-direction (string)
  (define-individual 'standalone-direction :name string))



;; These are the corresponding adjectives. They can appear by themselves
;; in subcategorization frames that explicitly call for directions.
;; There is a subtlety to precisely what they mean (since they're apparently
;; contractions with "towards") that isn't being captured here, nor is
;; their relationship to their base forms.

(define-category  adjectival-direction   ;; "leftward(s)"
  :instantiates direction
  :specializes direction
  :binds ((name :primitive word))
  :realization (:standalone-word name))

(defun define-adjectival-direction (string)
  (define-individual 'adjectival-direction :name string))

