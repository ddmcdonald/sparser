;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:(SPARSER) -*-
;;; Copyright (c) 2007-2009 BBNT Solutions LLC. All Rights Reserved
;;; copyright (c) 2016-2017,2022 David D. McDonald  -- all rights reserved
;;;
;;;     File:  "return-value"
;;;   Module:  drivers;sinks:
;;;  Version:  January 2022

;; Initiated 4/27/09 for checkpoint demo. Modified 9/26/09

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


(defparameter *return-a-value* nil
  "Should analysis-core return a value? If this flag
   is not up we return the keyword :analysis-completed")

(defparameter *what-value-to-return* :object
  "Of the various kinds of things we know how to return,
   which one should we use? Possible values that work are
  :object and :spire.")


(defun analysis-core-return-value ()
  "Called as the last action of analysis-core. What this
   returns is what the call to parse something return.
   Choice of what to return can be modified by defining
   new possibilities for the special *what-value-to-return*."
  (declare (special *return-a-value* *what-value-to-return*
                    *next-chart-position-to-scan*
                    *analysis-return-value*))
  (if *return-a-value*
    (let ((coverage (coverage-over-region
                     (position# 1)
                     (position# (1- *next-chart-position-to-scan*))))
          (referent (referent-of-the-last-edge)))
      (case *what-value-to-return*
        (:export
         (if (eq coverage :one-edge-over-entire-segment)
           (export-object referent)
           (format t "~&Multiple edges. No option to export~%")))
        (:object
         referent)
        (:article-json
         (emit-acumen-results :current))
        (:spire
         (let ((*sentence-results-stream* t))
           (declare (special *sentence-results-stream*))
           (krisp->sexpr referent)))
        (otherwise
         *analysis-return-value*)))
    :analysis-completed))


(defun referent-of-the-last-edge ()
  (declare (special *where-the-last-segment-ended*))
  (let ((edge (left-treetop-at/only-edges *where-the-last-segment-ended*)))
    (when edge
      (edge-referent edge))))

