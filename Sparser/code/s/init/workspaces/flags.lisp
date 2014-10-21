;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:SPARSER -*-
;;; copyright (c) 2014 SIFT LLC  -- all rights reserved
;;; See toplevel file LICENSE
;;;
;;;     File:  "flags"
;;;   Module:  "init;workspaces:"
;;;  version:  October 2014

;; Initiated 10/20/14 as a place to collect miscellaneous 
;; flag parameters that were created to control operations below the
;; level controlled by switch settings, typically to temporalily
;; block operations that require further debugging. 

(in-package :sparser)

#| Definitions copied from the files these are defined in

(defparameter *debug-segment-handling* t
  "Guards errors and breaks within the segment handling code that traps
   new cases or violations of standing assumptions.")

;; checked in segment-finished
(defparameter *peek-rightward* t ;; stopgap while debugging
  "After a segment is completely finished and the coverage
  is incomplete, should we use march-peeking-rightward to
  look for compositions that the leftward march may have missed")


(defparameter *parse-chunk-interior-online* nil
  "Gates the option to parse the interior of a chunk
   just after the chunk is created. Referenced in
   identify-chunks")
|#