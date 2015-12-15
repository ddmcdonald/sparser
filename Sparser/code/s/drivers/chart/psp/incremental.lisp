;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:SPARSER -*-
;;; copyright (c) 2015 David D. McDonald  -- all rights reserved
;;; This file is part of the SIFT-Brandeis CwC project
;;;
;;;     File:  "incremental"
;;;            drivers/chart/psp/
;;;  version:  December 2013

;; Initiated 11/30/15 for a new toplevel driver that runs
;; incrementally left to right in a grounding situation. 
;; 12/13/15 start with skeleton of code taken from C3 protocol. 

(in-package :sparser)


(defun initiate-incremental-CwC-protocol ()
  ;; Called from lookup-the-kind-of-chart-processing-to-do
  ;; We pull in the start marker and check that we're in the
  ;; right place, then we start the actual scan.
  (let* ((p0 (scan-next-position))  ;; status = :scanned
         (ss (pos-terminal p0)) ;; #<word SOURCE-START>
         (p1 (scan-next-position)))
    (declare (ignore ss))
    ;; need them to just to keep straight what the scan does

    (setq *reached-eos* nil) ;; initialize
    (incrementally-scan-segment p1)))

(defun incrementally-scan-segment (start-pos)
  ;; Not really. This is a direct copy of scan-segment in
  ;; the c3 protocol with a different rule handler since
  ;; c3-process-segment-and-update-state is very likely to be
  ;; heavier than we need, though certainly something like it
  ;; is where we'll end up.
  ;;   The chunker is C3's version of the original scheme
  ;; 


  ;; Compare to scan-next-segment in the regular protocol.
  ;; This is the fixed point where resume between segments.
  (tr :starting-c3-segment start-pos)
  (let* ((end-pos (read-through-segment-to-end start-pos))
         ;; first delimit the next segment that starts here
         (position start-pos)
         (head-position (chart-position-before end-pos)))
    (tr :delimited-c3-segment start-pos end-pos)
    (when (eq start-pos end-pos)
      (push-debug `(,end-pos))
      (error "Empty segment?"))

    (loop 
      ;; Then walk through it left-to-right extending
      ;; the situation. Assume that the final word is the head.
      (introduce-next-word position (eq position head-position))
      (setq position (chart-position-after position))
      (when (eq position end-pos)
        (return)))

    ;(push-debug `(,start-pos ,end-pos))
    ;(break "segment finished: ~a" (words-between start-pos end-pos))
    ;(edges-between start-pos end-pos)
    
    ;; The standard segment analysis manages *right-segment-boundary*
    ;; and *left-segment-boundary* // look at pts updates
    (let ((coverage (segment-coverage)))
      (unless (eq coverage :one-edge-over-entire-segment)
        (c3-segment-parse start-pos end-pos))) ;; includes syntax
 
    ;; presumably we now just scan the next segment
    (if *reached-eos*
        (terminate-chart-level-process) ; 
        (incrementally-scan-segment end-pos))))