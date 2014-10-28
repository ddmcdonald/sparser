;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:SPARSER -*-
;;; copyright (c) 2011-2013  David D. McDonald  -- all rights reserved
;;; 
;;;     File:  "prepositions"
;;;   Module:  "grammar;rules:syntax:"
;;;  Version:  January 2013

;; initiated 9/30/11.  Fixed the method 1/29/13

(in-package :sparser)

(define-category prepositional-operator
  ;; This is the default superc-class of the classes created for
  ;; prepositions (see define-preposition) and provides the 'top'
  ;; in methods over them (analyze-pp).
  :specializes operator)

(defgeneric analyze-pp (preposition complement)
  (:documentation "Computes the referent of a pp created using the
 computed-pp ETF. Particular combinations can produced anything
 they want. The default is the referent of the complement, which
 is equivalent to :daughter right-edge."))

(defmethod analyze-pp ((prep sh::prepositional-operator) (complement t))
  (declare (ignore prep))
  (tr :analyze-pp_t+t)
  (dereference-shadow-individual complement))
  

(defun apply-preposition-to-complement (prep comp)
  ;; Used by preposition+s or +vg
  ;; Poor man's ad-hoc version of analyze-pp since I don't want
  ;; to take the time to properly situation the method call.
  ;; Returns the referent of the whole edge, see ref/function 
  (push-debug `(,prep ,comp))
  (cond
   ((eq prep (category-named 'upon))
    (find-or-make-individual 'upon-condition :condition comp))
   (t ;; equivalent of daughter
    comp)))

;; Consumed as 'circumstance' at event level by adjoint-pp-to-vp
(define-category upon-condition
  :instantiates :self
  ;; supercategory is a contingency or 'when' or some such
  :binds ((condition))
  :index (:key condition))