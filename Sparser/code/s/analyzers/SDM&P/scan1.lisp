;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:(SPARSER COMMON-LISP) -*-
;;; copyright (c) 2013  David D. McDonald  -- all rights reserved
;;; Copyright (c) 2007 BBNT Solutions LLC. All Rights Reserved
;;;
;;;      File: "scan"
;;;    Module: "analyzers;SDM&P:
;;;   Version: 1.0 April 2013

;; Initiated 2/9/07. Completely redone starting 1/21/13. Adding a 
;; simpler variation 4/1/13. Which uses make-individual-for-dm&p 4/4

(in-package :sparser)

#|  
  The point of this body of code is to heuristically fill in
anything inside a segment that the parser doesn't. It's also
a site for making general observations about adjacency and
modification facts in aid of getting a better picture of
what the phrase denotes.

  It is called from segment-finished within the PTS code in
drivers/chart/psp/pts[#].lisp after it has invoked the parser
to make any semantic or form edges that the grammar dictates. 

|#

;;;-----------
;;; dispatch
;;;-----------

(defparameter *new-segment-coverage* :none
  "Flag to specify what sort of simpler d&p operation to do
   if any (default).")


(defun sdm/analyze-segment (coverage)
  (case *new-segment-coverage*
    (:trivial
     (just-cover-segment coverage))
    (:full ;; could be segmented further
     (analyze-segment coverage))
    (:none
     (normal-segment-finished-options coverage))
    (otherwise
     (error "Undefined value for *new-segment-coverage*: ~a"
            *new-segment-coverage*))))


;;;-------------------------------------------------------
;;; trivial variant - just cover the segment with an edge
;;;-------------------------------------------------------

;; Don't look at the edge or try to find more relations inside it,
;; just make sure it's all covered with one edge, propagating the
;; edge information from its suffix.

(defun just-cover-segment (coverage)
  (case coverage
    (:one-edge-over-entire-segment
     (let ((edge (edge-over-segment)))
       (generalize-segment-edge-form-if-needed edge)
       (convert-referent-to-individual edge)
       (record-any-determiner edge)))

    ((:all-contiguous-edges
      :discontinuous-edges 
      :some-adjacent-edges)
     (if (no-edge-over-segment-head) ;; ignore these for now
       (then
        (format t "~&Ignoring segment without an edge over its head:")
        (format-words-in-segment)
        (print-treetop-labels-in-current-segment)
        (terpri))
       (else
        (let ((edge (propoagate-suffix-to-segment)))
          (generalize-segment-edge-form-if-needed edge)
          (convert-referent-to-individual edge)
          (record-any-determiner edge)))))

    (:no-edges ;; "burnt" or any other word not in Comlex
     (format t "~&Ignoring segment with no edges:")
     (format-words-in-segment)
     (terpri))
    (otherwise
     (break "Unanticipated value for segment coverage: ~A"
	    coverage)))
  (normal-segment-finished-options coverage))


(defun propoagate-suffix-to-segment ()
  ;; Look up the edge on the suffix, use its data to
  ;; create an edge over the whole segment
  (let* ((suffix (edge-over-segment-head))
         (suffix-label (edge-category suffix))
         (suffix-form (edge-form suffix))
         (suffix-referent (edge-referent suffix)))
    (let ((edge (make-edge-over-long-span
                 *left-segment-boundary*
                 *right-segment-boundary*
                 suffix-label
                 :form suffix-form
                 :referent suffix-referent
                 :rule 'sdm-span-segment)))

      (tr :sdm-span-segment edge)
      edge)))


(defparameter *profligate-creation-of-individuals* nil
  "This flag says that when we encounter a category as 
  the referent of a head edge we should replace it with
  the corresponding individual. Also see reify-implicit-
  individuals-in-segment, which has the same mission just
  with more explicit cases, which has proved tedious to debug.")

(defun convert-referent-to-individual (edge)
  (let ((referent (edge-referent edge)))
    (typecase referent
      (referential-category
       (when *profligate-creation-of-individuals*
         ;; otherwise unchanged
         (setf (edge-referent edge)
               (make-individual-for-dm&p referent))))
      
      ;; These cases are original from 2009 and 
      ;; not reconsidered yet.
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
       (push-debug `(,edge ,referent))
       (break "New type of object as referent of right-suffix: ~a~%~a"
              (type-of referent) referent)))))


(defun record-any-determiner (edge)
  ;; Wanted to have this done by the form rules in syntax/articles,
  ;; but referent expression interpreter there needs adjustment
  ;; so this is largely a hack
  (push-debug `(,edge))
  (multiple-value-bind (word length)
                       (first-word-in-segment)
    (when (= length 1)
      (return-from record-any-determiner nil))
    (when (determiner? word)
      (let ((i (edge-referent edge)))
        (unless (individual-p i)
          ;;/// complain?
          (return-from record-any-determiner nil))
        (if (definite-determiner? word)
          (bind-variable 'has-determiner category::definite
                         i category::det)
          (bind-variable 'has-determiner category::indefinite
                         i category::det))
        ;;/// This also gets the "the" in a company name,  
        ;; but that's probably not relevant.
        i))))
    



;;;-------------------------------------
;;; Analyze the interior of the segment
;;;-------------------------------------

#| Look for rules that could have applied given the
 form of the edges in the segment
|#

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
    (:some-adjacent-edges (break "some adjacent"))

    (otherwise
     (break "Unanticipated value for segment coverage: ~A"
	    coverage))))

;;--- cases

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
;; original 2007 code

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
   
