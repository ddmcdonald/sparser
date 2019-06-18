;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:SPARSER -*-
;;; copyright (c) 2011-2019  David D. McDonald  -- all rights reserved
;;; 
;;;     File:  "prepositions"
;;;   Module:  "grammar;rules:syntax:"
;;;  Version:  June 2019

;; initiated 9/30/11.  Fixed the method 1/29/13
;; 3/2/2015 commented out mechanism to collect instances of prepositions folled by verbal elements -- infinitives, -ing complements, and others that may be errors

(in-package :sparser)

(define-category prepositional-operator
  :documentation "This is the default superc-class of the classes created
 for prepositions (see define-preposition) and provides the 'top' case in
 methods over them (analyze-pp). Note that prepositions can be specialized
 and get the category 'relative-location'. More refined categorizations
 are possible in the future."
  :specializes prepositional)

  
(def-k-method analyze-pp ((prep category::prepositional-operator) complement)
  ;; like a daughter rule in that it just drops the preposition on the floor
  (declare (ignore prep))
  (tr :analyze-pp_t+t)
  complement)

(def-k-method analyze-pp ((prep category::relative-location) complement)
  ;; like a daughter rule in that it just drops the preposition on the floor
  (declare (ignore prep))
  (tr :analyze-pp_t+t)
  complement)


(defparameter *prep-complements* nil
  "For collecting examples of how this is used.")

(defun apply-preposition-to-complement (prep comp)
  "Used by syntactic rules for {prep + VG+ing} and {prep + VP+ing}.
   Was originally written for 'upon' in early BigMech work,
   but otherwise it hands off to make-pp."
  (unless (and nil *subcat-test*)
    ;; don't want to do this unless we are collecting examples
    (push (terminals-in-segment/one-string 
           (pos-edge-starts-at (left-edge-for-referent))
           (pos-edge-ends-at (right-edge-for-referent)))
          *prep-complements*))
  (cond
    ((subordinate-conjunction? (left-edge-for-referent))
     ;; don't take the prepositional form for, e.g., "as"
     nil)
    ((eq prep (category-named 'upon))
     (find-or-make-individual 'upon-condition :condition comp))
    (t
     (make-pp prep comp))))

