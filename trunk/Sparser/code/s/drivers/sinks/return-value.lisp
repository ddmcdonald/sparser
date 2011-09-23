;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:(SPARSER) -*-
;;; Copyright (c) 2007-2009 BBNT Solutions LLC. All Rights Reserved
;;; $Id:$
;;;
;;;     File:  "return-value"
;;;   Module:  drivers;sinks:
;;;  version:  April 2009

;; Initiated 4/27/09
;; Modified 9/26/09

(in-package :sparser)

;;;---------
;;; globals
;;;---------

(defvar *analysis-return-value* :analysis-completed
  "Provides a place to stash a structure when 'pushing' values 
   out of Sparser's call to Analysis-core rather than having
   an independent routine 'pull' them as with the 'export' code
   written for Answer")

(define-per-run-init-form
    ;; Provides a common, useless, value unless over-ridden.
    '(setq *analysis-return-value* :analysis-completed))

(unless (boundp '*return-value*) ;; switch setting option
  (defparameter *return-value* nil)) ;; default


(defun analysis-core-return-value ()
  ;; called as the last for in analysis-core
  (if *return-value*
    (case *return-value*
      (:referent-of-last-edge
       (compute-referent-of-last-edge-return))
      (otherwise
       (break "Unrecognized value for *return-value* switch:~
             ~%     ~a" *return-value*)))
    :analysis-completed))



;;;-----------------------------------------------------
;;; Returning the referent of the (largest?) final edge
;;;-----------------------------------------------------

(defun compute-referent-of-last-edge-return ()
  ;; Modeled off of code in /drivers/chart/psp/pts5:pts
  (let ((coverage (coverage-over-region
		   (position# 1)
		   (position# (1- *next-chart-position-to-scan*)))))
    (if coverage 
      (case coverage
	(:one-edge-over-entire-segment
	 (export-object (referent-of-the-last-edge)))
	(:null-span
	 (format t "~&referent-of-the-last-edge: No edge where last segment ended~%"))
	(:discontinuous-edges
	 (let ((conjunction-point (find-compound-point-for-and 1)))  ;; look for compound sentence
	   (if conjunction-point
	       (list 'SA-SEQ
		     (export-object (edge-referent (highest-edge (pos-ends-here (position# conjunction-point)))))
		     (export-object (referent-of-the-last-edge)))
	       (format t "~&Coverage is ~a. Don't know what to pass on for export.~%" coverage))))
	(otherwise
	 ;; cases:  :no-edges  :some-adjacent-edges  :all-contiguous-edges
	 (format t "~&Coverage is ~a. Don't know what to pass on for export.~%"
		 coverage)))
      (format t "~&Coverage over what was just parsed returned NIL.~
                 ~%Don't know what to pass on for export.~%"))))

(defun referent-of-the-last-edge ()
  (let ((edge (left-treetop-at/only-edges *where-the-last-segment-ended*)))
    (when edge
      (edge-referent edge))))

(defun find-compound-point-for-and (index)
  ;; look for bare word "and" between two complete edges spanning the remainder of the input,
  ;; if found, return the position of this "and" for use as a conjunction in a compound
  ;; sentence in compute-referent-of-last-edge-return
  ;; otherwise, return nil, indicating such a compound sentence construction does not exist
  (cond ((and (eq (word-named "and") (pos-terminal (position# index)))
	      (eq :one-edge-over-entire-segment (coverage-over-region (position# 1) (position# index)))
	      (eq :one-edge-over-entire-segment (coverage-over-region 
						 (position# (+ index 1)) (position# (1- *next-chart-position-to-scan*)))))
	 index)
	((pos-terminal (position# (+ index 2))) (find-compound-point-for-and (+ index 1)))
	(t nil)))
