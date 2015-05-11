;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:(SPARSER COMMON-LISP) -*-
;;; copyright (c) 2013-2015  David D. McDonald  -- all rights reserved
;;; Copyright (c) 2007-2010 BBNT Solutions LLC. All Rights Reserved
;;;
;;;      File: "create-categories"
;;;    Module: "grammar;rules:SDM&P:
;;;   Version: 0.2 April 2015

;; Initiated 2/9/07. Elaborated through 8/6. Refactored the head form
;; elevator 2/4/08. Added cases through 4/24, then through 6/16.
;; 8/14/08 Fell through the assumption that there would be a form category
;; to elevate: edge over a period in Danio paragraph running under fire
;; settings. (2/10/10) Considered extending reify-segment-head-if-needed
;; for the case of literal words in rules, but it lead to coniptions with "."
;; 0.2 4/17/10 Uppercase category names were returning nil. Changed 
;;  elevation of segment edge of verb cases to vg from VP. 
;;  (1/23/12) cleaned up. Trying to find duplication. 4/1/13 found it.
;;  (4/14/14) Added case to generalize-segment-edge 
;; 1/17/2015 make the segment edge for "GTP-mediated" a verb+ed.
;; 4/26/13 put guards in revise-form-of-nospace-edge-if-necessary to
;;  accommodate fall-through from incomplete ns-operations.


(in-package :sparser)

;;;--------------------------
;;; Generalizing form labels
;;;--------------------------

(defun elevate-head-edge-form-if-needed (edge)
  (let* ((form-category (edge-form edge))
	 (symbol (when form-category
		   ;; edges formed by :literal-in-a-rule don't have
		   ;; form categories.
		   (cat-symbol form-category))))
    (when symbol
      (case symbol
	((category::np-head 
          category::number)) ;; "the one that"
        (category::quantifier) ;; "[just no] pleasing"
	((category::common-noun
          category::common-noun/plural
          category::proper-noun) ;; over a name-word 
	 (setf (edge-form edge) (category-named 'np-head)))
	(category::modal) ;; "can can they ...
	(category::verb) ;; "are are"
	(category::vg) ;; staying here w/o better evidence
	(category::verb+ed
	 (setf (edge-form edge) (category-named 'vg)))
	(category::ends-in-s) (category::ends-in-ing) (category::ends-in-ed)
          ;; categories giving morphological properties
	(otherwise
	 (unless *cfg-flag*
	   (break "New case of form category of edge over segment head: ~a"
		(edge-form edge))))))))


(defun generalize-segment-edge-form-if-needed (edge)
  (let* ((form-category (edge-form edge))
	 (symbol (when form-category (cat-symbol form-category))))
    (when symbol
      (case symbol
        ;; no change cases
	((category::np 
          category::proper-name
          category::proper-noun
          category::pronoun
          category::wh-pronoun
          category::reflexive/pronoun
          ))
        (category::ap)
        (category::subordinate-conjunction)
	(category::adjunct)
        (category::comparative)
        (category::possessive)
        (category::quantifier)
        (category::adjective)
        (category::spatial-adjective)
        (category::temporal-adjective)
        (category::adverb)
        (category::preposition)
        (category::spatial-preposition)
        (category::spatio-temporal-preposition)
        
        (category::s)
        (category::vp)
        (category::vg)
        (category::vg+ing)
        (category::vg+ed)
        (category::vp+ing)
        (category vp+ed)
        (category::pp)

        ;; cases where we want to generalize
	((category::n-bar
          category::number
          category::noun
          category::common-noun
          category::common-noun/plural
          category::np-head
          category::det) ;; "that"
	 (setf (edge-form edge) (category-named 'np)))
        
	((category::verb 
          category::verb+s 
          ;;category::verb+ed
          category::verb+present
          category::verb+passive
          category::modal)
	 (setf (edge-form edge) (category-named 'vg)))
        ((category::verb+ing)
         (setf (edge-form edge) (category-named 'vg+ing)))
        ((category::verb+ed)
         (setf (edge-form edge) (category-named 'vg+ed)))

	(otherwise
	 (unless *cfg-flag*
           (push-debug `(,edge))
	   (break "New case of form category of edge over segment: ~a~
           ~%Add it to generalize-segment-edge-form-if-needed"
		  (edge-form edge))))))))


(defun elevate-form-given-subcat (new-edge edge pattern)
  ;; called from apply-subcat-patterns when the pattern has succeeded
  ;; and created the new edge. ///Ought to specifiy this explicitly,
  ;; but this move of elevating
  (let ((head-form ;; assumes that the subcat terms go to the right
         (edge-form edge)))
    (case (cat-symbol head-form)
      (category::s)
      (category::vg
       (setf (edge-form new-edge) category::vp))
      (category::adjective 
       (setf (edge-form new-edge) category::adjp))
      (category::np)
      (otherwise
       (push-debug `(,new-edge ,edge ,pattern))
       (break "New case of head edge needing elevation: ~a" head-form)))))


(defun revise-form-of-nospace-edge-if-necessary (edge right-edge)
  (unless edge
    ;; Got a null edge on "ASPP2"
    (return-from revise-form-of-nospace-edge-if-necessary nil))
  (when (eq right-edge :find-it)
    (setq right-edge (edge-right-daughter edge)))

  ;; They should all be some part of an np
  (let ((current-form (edge-form edge))
        (form-of-last-edge (when right-edge (edge-form right-edge))))
    ;; if we fall through a ns-pattern with no result (becouse its
    ;; code isn't finished).
    (cond
     ((and form-of-last-edge
           (verb-category? form-of-last-edge))
      ;; as in January sentnece 1 "GAP–mediated hydrolysis"
      (setf (edge-form edge) form-of-last-edge))
     ((eq current-form category::np)
      (setf (edge-form edge) category::n-bar))
     ((or (noun-category? current-form)
          (eq current-form category::n-bar)))
     (t ;; usually it's a verbal category
      (setf (edge-form edge) category::n-bar)))

    ;; But we might want to overrule that if the left edge
    ;; of the pair carries more information
    (when (and form-of-last-edge
               (eq form-of-last-edge category::adjective))
      ;; and what others?  any modifier-category?
      (setf (edge-form edge) category::adjective))))




;;;-----------------------
;;; operations over heads
;;;-----------------------

(defun reify-segment-head-if-needed ()
  ;; Runs for side-effects within the routines of sdm/analyze-segment
  (let ((edge (edge-over-segment-head)))
    (if edge
      (then
	(elevate-head-edge-form-if-needed edge)
	(let ((referent (edge-referent edge)))
	  (unless (typep referent 'individual) ;; gets psi as well
	    (typecase referent
	      (referential-category
	       (setf (edge-referent edge)
		     (instantiate-reified-segment-category referent)))
	      (mixin-category) ;; "can"
	      (word) ;; "."
	      (otherwise
	       (break "New case: ~a~%~a" (type-of referent) referent))))))
      (reify-segment-head-as-a-category))))

    
(defun reify-segment-head-as-a-category ()
  (multiple-value-bind (word pos-before pos-after)
      (head-word-of-segment)
    (multiple-value-bind (category rule)
	(find-or-define-kind (word-pname word))
      (let ((edge (install-preterminal-edge rule word pos-before pos-after)))
	(setf (edge-form edge) (category-named 'np-head))
	(setf (edge-referent edge)
	      (instantiate-reified-segment-category category))
	edge))))

(defun instantiate-reified-segment-category (ref-category)
  ;; Very simple with just the category to go on. 
  (find-or-make/individual ref-category nil))
