;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:SPARSER -*-
;;; copyright (c) 2011-2016  David D. McDonald  -- all rights reserved
;;; 
;;;     File:  "prepositions"
;;;   Module:  "grammar;rules:syntax:"
;;;  Version:  August 2016

;; initiated 9/30/11.  Fixed the method 1/29/13
;; 3/2/2015 commented out mechanism to collect instances of prepositions folled by verbal elements -- infinitives, -ing complements, and others that may be errors

(in-package :sparser)

(define-category prepositional-operator
  ;; This is the default superc-class of the classes created for
  ;; prepositions (see define-preposition) and provides the 'top'
  ;; in methods over them (analyze-pp).
  :specializes predicate)


(def-k-function analyze-pp (preposition complement)
  (:documentation "Computes the referent of a pp created using the
                  computed-pp ETF. Particular combinations can produced anything
                  they want. The default is the referent of the complement, which
                  is equivalent to :daughter right-edge.")
  
  (:method ((prep category::prepositional-operator) complement)
    (declare (ignore prep))
    (tr :analyze-pp_t+t)
    complement))

(defparameter *prep-complements* nil
  "For collecting examples of how this is uesd.")

(defun apply-preposition-to-complement (prep comp)
  ;; Used by syntactic rule for {preposition + vg+ing} and {... + vp+ing}
  ;; but it needs a lot of work since it only does anything interesting
  ;; with "upon", otherwise it drops the preposition on the ground
  ;; and returns the complement as the meaning of the phrase.

  (unless (and nil ;; don't want to do this unless we are collecting examples
               *subcat-test*)
    (push (terminals-in-segment/one-string 
           (pos-edge-starts-at (left-edge-for-referent))
           (pos-edge-ends-at (right-edge-for-referent)))
          *prep-complements*))

  (cond
   ((eq prep (category-named 'upon))
    (find-or-make-individual 'upon-condition :condition comp))
   (t ;; equivalent of daughter
    (make-pp prep comp))))

;; Consumed as 'circumstance' at event level by adjoin-pp-to-vg
(define-category upon-condition
  :instantiates :self
  :specializes predication ;; should be a contingency or 'when' or some such
  :binds ((condition))
  :index (:key condition))
