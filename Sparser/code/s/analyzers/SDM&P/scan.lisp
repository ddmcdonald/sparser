;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:(SPARSER COMMON-LISP) -*-
;;; Copyright (c) 2007 BBNT Solutions LLC. All Rights Reserved
;;; $Id: scan.lisp 207 2009-06-18 20:59:16Z cgreenba $

;;;      File: "scan"
;;;    Module: "analyzers;SDM&P:
;;;   Version: February 2007

;; Initiated 2/9/07.

(in-package :sparser)

;;;-----------
;;; dispatch
;;;-----------

(defvar *parse-from-continuous-edges-in-progress* nil)

(defun sdm/analyze-segment (coverage) ;;(break "top of sdm/segment")
  ;; Called from Segment-finished
  (tr :calling-sdm/analyze-segment coverage)
  (case coverage
    (:one-edge-over-entire-segment
     ;; Nothing to do, so go back through the standard path
     ;; given in pts.
     (when *parse-from-continuous-edges-in-progress*
       (setq *parse-from-continuous-edges-in-progress* nil))
     (elevate-segment-edge-form-if-needed (edge-over-segment))
     (sf-action/spanned-segment))
    
    (:no-edges
     (sdm-action/no-edges))
    
    (:discontinuous-edges
     (sdm-action/discontinuous-edges))
    
    (:some-adjacent-edges
     (sdm-action/some-adjacent-edges))
    
    (:all-contiguous-edges
     (if *parse-from-continuous-edges-in-progress*
       (sdm-action/all-contiguous-edges/finish)
       (sdm-action/all-contiguous-edges/start)))
    
    (otherwise
     (break "Unanticipated value for segment coverage: ~A"
	    coverage))))


;;;-------
;;; cases
;;;-------

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



(defun sdm-action/all-contiguous-edges/start ()
  (tr :sdm-all-contiguous-edges)

  ;; You'd think that all-contiguous edges means that every span
  ;; of words in the segment would have an edge over it, but
  ;; it doesn't, so we need this.
  (reify-segment-head-if-needed)
  
  ;; see if it's possible to get a parse now that we've reified
  ;; the head
  (tr :sdm-all-contiguous-edges/running-parser)
  (setq *parse-from-continuous-edges-in-progress* t)
  (parse-at-the-segment-level *right-segment-boundary*))

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


;;;--------
;;; traces
;;;--------

(defparameter *trace-sdm&p* nil)

(defun trace-sdm&p ()
  (setq *trace-sdm&p* t))

(defun untrace-sdm&p ()
  (setq *trace-sdm&p* nil))

(deftrace :calling-sdm/analyze-segment (coverage)
  (when *trace-sdm&p*
    (trace-msg "[SDM] top -- coverage = ~a" coverage)))

(deftrace :sdm-no-edges ()
  (when *trace-sdm&p*
    (trace-msg "[SDM] no edges over p~a to p~a - \"~a\""
      (when *left-segment-boundary*
	(pos-token-index *left-segment-boundary*))
      (when *right-segment-boundary*
	(pos-token-index *right-segment-boundary*))
      (when (and *left-segment-boundary* *right-segment-boundary*)
	(string-of-words-between *left-segment-boundary* 
				 *right-segment-boundary*)))))

(deftrace :sdm-discontinuous-edges ()
  (when *trace-sdm&p*
    (trace-msg "[SDM] discontinuous edges over p~a to p~a - \"~a\""
      (when *left-segment-boundary*
	(pos-token-index *left-segment-boundary*))
      (when *right-segment-boundary*
	(pos-token-index *right-segment-boundary*))
      (when (and *left-segment-boundary* *right-segment-boundary*)
	(string-of-words-between *left-segment-boundary* 
				 *right-segment-boundary*)))))
(deftrace :sdm-some-adjacent-edges ()
  (when *trace-sdm&p*
    (trace-msg "[SDM] some adjacent edges over p~a to p~a - \"~a\""
      (when *left-segment-boundary*
	(pos-token-index *left-segment-boundary*))
      (when *right-segment-boundary*
	(pos-token-index *right-segment-boundary*))
      (when (and *left-segment-boundary* *right-segment-boundary*)
	(string-of-words-between *left-segment-boundary* 
				 *right-segment-boundary*)))))

(deftrace :sdm-all-contiguous-edges ()
  (when *trace-sdm&p*
    (trace-msg "[SDM] contiguous edges over p~a to p~a - \"~a\""
      (when *left-segment-boundary*
	(pos-token-index *left-segment-boundary*))
      (when *right-segment-boundary*
	(pos-token-index *right-segment-boundary*))
      (when (and *left-segment-boundary* *right-segment-boundary*)
	(string-of-words-between *left-segment-boundary* 
				 *right-segment-boundary*)))))
(deftrace :sdm-all-contiguous-edges/running-parser ()
  (when *trace-sdm&p*
    (trace-msg "[SDM]    Runing parser over the edges")))
(deftrace :sdm-all-contiguous-edges/new-coverage (coverage)
  (when *trace-sdm&p*
    (trace-msg "[SDM]    The new coverage is ~a" coverage)))

(deftrace :sdm-span-segment (edge)
  (when *trace-sdm&p*
    (trace-msg "[SDM] made an edge over segment: ~a" edge)))
