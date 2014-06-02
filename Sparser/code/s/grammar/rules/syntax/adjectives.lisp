;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:(SPARSER COMMON-LISP) -*-
;;; copyright (c) 2013-2014 David D. McDonald  -- all rights reserved
;;; 
;;;     File:  "adjectives"
;;;   Module:  "grammar;rules:syntax:"
;;;  Version:  June 2014

;; Initiated 1/22/13 to provides a place for the generic method for premodifiers.
;; 6/1/14 added traces. 

(in-package :sparser)

;;;-----------
;;; base case
;;;-----------

(defgeneric modifier+noun (modifier head)
  (:documentation "Motivated by adjectives like 'about'. Called when the
 generic-np-premodifier or modifier-creates-definite-individual ETF is used.
 Determines the referent of the edge that combines these two elements."))


(defmethod modifier+noun ((modifier t) (head t)) ;; Kurdish city - name-word city
  (declare (ignore modifier))
  (tr :modifier+noun_t+t)
  (dereference-shadow-individual head))

(defmethod modifier+noun ((modifier sh::modifier) (head t))
  ;; drop the modifier on the floor for the moment.
  ;; Need to make a design decision about single binding vs. full
  ;; individual.
  (declare (ignore modifier))
  (tr :modifier+noun_modifier+t)
  (dereference-shadow-individual head))