;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:(SPARSER COMMON-LISP) -*-
;;; copyright (c) 2013  David D. McDonald  -- all rights reserved
;;; 
;;;     File:  "adjectives"
;;;   Module:  "grammar;rules:syntax:"
;;;  Version:  January 2013

;; Initiated 1/22/13 to provides a place for the generic method for premodifiers

(in-package :sparser)

;;;-----------
;;; base case
;;;-----------

(defgeneric modifier+noun (modifier head)
  (:documentation "Motivated by adjectives like 'about'. Called when the
 generic-np-premodifier ETF is used. Determines the referent of the
 edge that combines these two elements."))



(defmethod modifier+noun ((modifier sh::modifier) (head t))
  ;; drop the modifier on the floor for the moment.
  ;; Need to make a design decision about single binding vs. full
  ;; individual.
  (declare (ignore modifier))
  (dereference-shadow-individual head))

(defmethod modifier+noun ((modifier t) (head t)) ;; Kurdish city - name-word city
  (declare (ignore modifier))
  (dereference-shadow-individual head))