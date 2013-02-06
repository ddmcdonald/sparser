;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:(SPARSER COMMON-LISP) -*-
;;; copyright (c) 2013  David D. McDonald  -- all rights reserved
;;; Copyright (c) 2007 BBNT Solutions LLC. All Rights Reserved
;;; $Id: scan.lisp 207 2009-06-18 20:59:16Z cgreenba $

;;;      File: "scan"
;;;    Module: "analyzers;SDM&P:
;;;   Version: 1.0 January 2013

;; Initiated 2/9/07. Completely redone starting 1/21/13. 

(in-package :sparser)

#|  
  The point of this body of code is to heuristically fill in
anything inside a segment that the parser doesn't. It's also
a site for making general observations about adjacency and
modification facts in aid of getting a better picture of
what the phrase denotes.

  It's calls from segment-finished within the PTS code in
drivers/chart/psp/pts[#].lisp after it has invoked the parser
to make any semantic or form edges that the grammar dictates. 

|#

;;;-----------
;;; dispatch
;;;-----------

(defparameter *new-segment-coverage* nil
  "Flag to allow avoiding the analyze-segment path
 when it's not fully debugged.")


(defun sdm/analyze-segment (coverage)
  (if *new-segment-coverage*
    (analyze-segment coverage)
    ;; Otherwise go the regular route
    (normal-segment-finished-options coverage)))



(defun analyze-segment (coverage)
  (declare (special *left-segment-boundary* *right-segment-boundary*))
  (tr :calling-sdm/analyze-segment coverage)
  (case coverage
    (:one-edge-over-entire-segment
     (generalize-segment-edge-form-if-needed (edge-over-segment))
     (sf-action/spanned-segment))

    (:all-contiguous-edges
     (analyze-segment-with-continuous-edges))

    (:no-edges
     (error "There should never be no edges in a segment"))

    (:discontinuous-edges (break "discontinuous"))
    (:some-adjacent-edges (break "some adjacente"))

    (otherwise
     (break "Unanticipated value for segment coverage: ~A"
	    coverage))))

;;;-------
;;; cases
;;;-------

(defun analyze-segment-with-continuous-edges ()
  (tr :sdm-all-contiguous-edges)
  (let ((edges (continuous-edges-between 
                *left-segment-boundary* *right-segment-boundary*)))
    (march-rightward-over-edges-by-form edges)
    ;; march both rightwards for qualifiers and leftwards
    ;; for spanning heuristics
    ;; Apply default runes to collect up all the bits
    (sf-action/all-contiguous-edges)))



;;---------------- ignored below here


(defun sdm-action/no-edges ()
  (tr :sdm-no-edges)
  (reify-segment-head-and-loop)) ;; come back in with different coverage


(defun sdm-action/discontinuous-edges ()
  (tr :sdm-discontinuous-edges)
  (reify-segment-head-if-needed)
  (sdm-action/some-edges))


(defun sdm-action/some-adjacent-edges ()
  (tr :sdm-some-adjacent-edges)
  (sdm-action/some-edges))

(defun sdm-action/some-edges ()
  (if (heuristics-apply-to-segment)
    (apply-segment-heuristics)
    (else
      (reify-segment-head-if-needed)
      (if (edge-over-segment-prefix)
	(then
	  (sdm-span-segment/prefix)
	  (parse-at-the-segment-level *right-segment-boundary*))
	(else
	  (sdm-span-segment)
	  (sf-action/spanned-segment))))))





(defun sdm-action/all-contiguous-edges/finish ()
  (setq *parse-from-continuous-edges-in-progress* nil)
  (let ((coverage (segment-coverage)))
    (tr :sdm-all-contiguous-edges/new-coverage coverage)
    (case coverage
      (:all-contiguous-edges 
       ;; might have improved, but we still want to span this ourselves
       (sdm-span-segment))
      ;; (:one-edge-over-entire-segment) ;; parsing got something
      (otherwise
       (break "Unexpected outcome of embedded parse with continuous-edges: ~a"
	      coverage)))

  ;; When we're collecting relations then we'll have things to do here
;  (unless (edge-between *left-segment-boundary*
;			*right-segment-boundary*)
;    (sdm-span-segment))

    (sf-action/spanned-segment)))



;;--- common subroutines

(defun reify-segment-head-and-loop ()
  (reify-segment-head-as-a-category) ;; lays down the edge
  ;; See if we can do something with that edge.
  ;; This will get us back to segment-parsed1
  ;; and we'll loop around, but with different coverage
  (parse-at-the-segment-level *right-segment-boundary*))

 
(defun sdm-span-segment/prefix ()
  (sdm-span-segment (where-prefix-edge-ends)))

(defun sdm-span-segment (&optional start-at)
  (let ((start-pos (or start-at
		       *left-segment-boundary*))
	(label (category-of-right-suffix))
	(referent (referent-of-right-suffix)))
    (let ((edge
	   (make-edge-over-long-span
	    start-pos
	    *right-segment-boundary*
	    label
	    :form (cond
		    ((eq start-pos *left-segment-boundary*)
		     (category-named 'np))
		    ((= 1 (number-of-terminals-between 
			   start-pos *right-segment-boundary*))
		     (category-named 'np-head))
		    (t
		     (category-named 'n-bar)))
	    :rule 'sdm-span-segment
	    :referent
	       (typecase referent
		 (referential-category
		  (instantiate-reified-segment-category referent))
		 (mixin-category
		  referent) ;; "can"
		 (individual
		  referent)
		 (word ;; #<word HYPHEN>
		  referent)
		 (polyword  ;; "M1A1"
		  referent)
		 (symbol ;; :uncalculated -- for a number
		  referent)
		 (otherwise
		  (break "New type of object as referent of right-suffix: ~a~%~a"
			 (type-of referent) referent))))))

      (tr :sdm-span-segment edge)
      edge)))
   

;;;----------
;;; go-fer's
;;;----------

(defun no-edge-over-segment-head ()
  (not (edge-over-segment-head)))

(defun edge-over-segment-head ()
  (let ((right-end *right-segment-boundary*)
	(left-end (chart-position-before *right-segment-boundary*)))
    (edge-between left-end right-end)))

(defun edge-over-segment ()
  (edge-between *left-segment-boundary* *right-segment-boundary*))

(defun head-word-of-segment ()
  (let* ((right-end *right-segment-boundary*)
	 (left-end (chart-position-before *right-segment-boundary*))
	 (word (pos-terminal left-end)))
    (values word left-end right-end)))

(defun edge-over-segment-suffix ()
  (let* ((right-ev (pos-ends-here *right-segment-boundary*))
	 (top-node (ev-top-node right-ev)))
    (when (eq top-node :multiple-initial-edges)
      ;; arbitrarily take the most recent edge
      (setq top-node (highest-edge right-ev)))
    top-node))

(defun edge-over-segment-prefix ()
  (let ((left-pos-start (pos-starts-here *left-segment-boundary*)))
    (when left-pos-start
      (ev-top-node left-pos-start))))
    
(defun where-prefix-edge-ends ()
  (let* ((left-pos-start (pos-starts-here *left-segment-boundary*))
	 (top-edge (ev-top-node left-pos-start)))
    (if (eq top-edge :multiple-initial-edges)
      (let ((longest (longest-edge-starting-at *left-segment-boundary*)))
	(ev-position (edge-ends-at longest)))
      (ev-position (edge-ends-at top-edge)))))

(defun words-in-segment-after-prefix ()
  (let ((left-pos (where-prefix-edge-ends)))
    (words-between left-pos *right-segment-boundary*)))

(defun category-of-right-suffix ()
  (let ((suffix (edge-over-segment-suffix)))
    (unless suffix
      (break "category-of-right-suffix -- expected there to be a suffix edge"))
    (edge-category suffix)))

(defun referent-of-right-suffix ()
  (let ((suffix (edge-over-segment-suffix)))
    (unless suffix
      (break "referent-of-right-suffix -- expected there to be a suffix edge"))
    (edge-referent suffix)))


;;;------------
;;; heuristics
;;;------------

(defparameter *segment-heuristics* nil)
(defvar *segment-heuristic-to-apply* nil)

(defun heuristics-apply-to-segment ()
  (dolist (h *segment-heuristics*)
    (when (segment-heuristic-succeeds? h)
      (setq *segment-heuristic-to-apply* h)
      (return-from heuristics-apply-to-segment h)))
  nil)

(defun apply-segment-heuristics ()
  (unless *segment-heuristic-to-apply*
    (break "*segment-heuristic-to-apply* should have a value"))
  (run-segment-heuristic *segment-heuristic-to-apply*))

(defun segment-heuristic-succeeds? (h)
  (let ((fn (sh-test h)))
    (funcall fn)))

(defun run-segment-heuristic (h)
  (let ((fn (sh-body h)))
    (funcall fn)))


(defstruct (segment-heuristic
	     (:conc-name #:sh-)
	     (:print-function
	      (lambda (h stream depth)
		(declare (ignore depth))
		(format stream "#<segment-heuristic ~a>"
			(sh-name h)))))
  name
  test
  body
)

(defmacro define-segment-heuristic (name &key test body)
  `(eval-when (:compile-toplevel
	       :load-toplevel :execute)
     (define-segment-heuristic/expr ',name ',test ',body)))

(defun define-segment-heuristic/expr (name test body)
  (let ((h (make-segment-heuristic :name name)))
    (format t "~&~%~%>>> Registering segment heuristic: ~a <<<<~%~%~%"
	    name)
    (let* ((test-name (intern (string-append (symbol-name name) "-TEST")))
	   (test-form `(defun ,test-name ()
			 ,@test))
	   (test-fn (eval test-form)))
      (setf (sh-test h) test-fn))
    (let* ((body-name (intern (string-append (symbol-name name) "-BODY")))
	   (body-form `(defun ,body-name ()
			 ,@body))
	   (body-fn (eval body-form)))
      (setf (sh-body h) body-fn))
    (push h *segment-heuristics*)
    h))

