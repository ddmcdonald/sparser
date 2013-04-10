;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:SPARSER -*-
;;; copyright (c) 2013 David D. McDonald  -- all rights reserved
;;;
;;;     File:  "relationships"
;;;   Module:  "model;core:kinds:"
;;;  version:  April 2013

;; This file holds independent lambda variables and such that
;; don't otherwise have a natural place to put them, or that refer
;; to categories that aren't yet defined at that place. 

;; Started populating 4/10/13.

(in-package :sparser)


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

