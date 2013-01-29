;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:(SPARSER COMMON-LISP) -*-
;;; copyright (c) 2013  David D. McDonald  -- all rights reserved
;;; Copyright (c) 2007-2010 BBNT Solutions LLC. All Rights Reserved

;;;      File: "create-categories"
;;;    Module: "grammar;rules:SDM&P:
;;;   Version: 0.2 January 2013

;; Initiated 2/9/07. Elaborated through 8/6. Refactored the head form
;; elevator 2/4/08. Added cases through 4/24, then through 6/16.
;; 8/14/08 Fell through the assumption that there would be a form category
;; to elevate: edge over a period in Danio paragraph running under fire
;; settings. (2/10/10) Considered extending reify-segment-head-if-needed
;; for the case of literal words in rules, but it lead to coniptions with "."
;; 0.2 4/17/10 Uppercase category names were returning nil. Changed 
;;  elevation of segment edge of verb cases to vg from VP. 
;;    (1/23/12) cleaned up. Trying to find duplication


(in-package :sparser)

(defun elevate-head-edge-form-if-needed (edge)
  (let* ((form-category (edge-form edge))
	 (symbol (when form-category
		   ;; edges formed by :literal-in-a-rule don't have
		   ;; form categories.
		   (cat-symbol form-category))))
    (when symbol
      (case symbol
	((or category::np-head 
	     category::number)) ;; "the one that"
        (category::quantifier) ;; "[just no] pleasing"
	((or category::common-noun
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


;; CCl complains that there's a duplicate keyform in here but I don't see it
(defun generalize-segment-edge-form-if-needed (edge)
  (let* ((form-category (edge-form edge))
	 (symbol (when form-category (cat-symbol form-category))))
    (when symbol
      (case symbol
        ;; no change cases
	((or category::np 
             category::proper-name
             category::proper-noun))

	(category::adjunct)

        ;; cases where we want to generalize
	((or category::n-bar
	     category::number
	     category::common-noun
	     category::common-noun/plural
	     category::np-head)
	 (setf (edge-form edge) (category-named 'np)))

	((or category::verb 
             category::verb+s 
             category::verb+ed
	     category::verb+ing 
             category::verb+present
	     category::verb+passive)
	 (setf (edge-form edge) (category-named 'vg)))

	(otherwise
	 (unless *cfg-flag*
           (push-debug `(,edge))
	   (break "New case of form category of edge over segment: ~a"
		  (edge-form edge))))))))




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
