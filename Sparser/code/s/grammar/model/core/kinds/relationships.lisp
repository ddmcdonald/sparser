;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:SPARSER -*-
;;; copyright (c) 2013-2014 David D. McDonald  -- all rights reserved
;;;
;;;     File:  "relationships"
;;;   Module:  "model;core:kinds:"
;;;  version:  March 2014

;; This file holds independent lambda variables and such that
;; don't otherwise have a natural place to put them, or that refer
;; to categories that aren't yet defined at that place. 

;; Started populating 4/10/13.
;; 7/1/13 Added generic method for compose. 3/31/14 added a t,t method.

(in-package :sparser)

;;;------------------
;;; expressible type
;;;------------------

(define-lambda-variable 
    ;; Used to explicitly mark the type of an individual
    ;; created to anchor segments created by DM&P rather
    ;; than core conceptualizations and incorporated sublanguages
  'category ;; name
  nil ;; value restriction, which would be 'category' but don't want to go there
  category::expressible-type) ;; category we link it to. Top of the taxonomy

(defun bind-category-of-instance (i category)
  ;; Syntactic sugar to hide the category from the compiler since
  ;; it's not available yet in make-individual-for-dm&p where
  ;; the binding is done
  (bind-variable 'category category i category::expressible-type))


;;;---------
;;; compose
;;;---------

(defgeneric compose (left right)
  (:documentation "This provides a hook for co-composition or simply
   for type specialization or adding additional relations to a 'daughter'
   style rule. Expecially well suited for form rules. Can be used as
   a dispatch point for more specific binary compostions. Intended to be
   the most generic way to compose the referents of two edges."))

(defmethod compose ((ignore1 t) (ignore2 t))
  "Null method at the top of the type hierarch so that call-next-method
   always has a place to stop."
  nil )
