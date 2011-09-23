;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:(SPARSER LISP) -*-
;;; copyright (c) 1992,1993,1994,1995  David D. McDonald  -- all rights reserved
;;; 
;;;     File:  "HA"
;;;   Module:  "objects;traces:"
;;;  Version:  July 1995

;; original flags defined 5/91. Started adding on/off routines 7/12/95.
;; Added seg.compl. flags 12/12

(in-package :sparser)


(defparameter *trace-bracket-placement* nil
  "Controls traces of the process that places phrase boundary
   brackets at positions in the chart according to what word
   has been located there.")



;;;------------------------------
;;; heuristic segment completion
;;;------------------------------

(defparameter *trace-HA-contexts* nil
  "Reports the situations each time the HA-driver is
   envoked.")

(defun trace-segment-completion ()
  (setq *trace-HA-contexts* t))

(defun unTrace-segment-completion ()
  (setq *trace-HA-contexts* nil))


(deftrace :applying-ha-to-segment (start-pos end-pos)
  (when *trace-HA-contexts*
    (trace-msg "HA: Looking for any heuristic to complete the segment~
              ~%     p~A \"~A\" p~A" 
               (pos-token-index start-pos)
               (string-of-words-between start-pos end-pos)
               (pos-token-index end-pos))))

(deftrace ::ha-both-head-and-prefix (head-edge prefix-edge)
  (when *trace-HA-contexts*
    (trace-msg "  There is both a edge over the prefix and the head:~
              ~%  prefix: ~A~
              ~%  head: ~A" prefix-edge head-edge )))

(deftrace ::ha-prefix-only (prefix-edge)
  (when *trace-HA-contexts*
    (trace-msg "  There is an edge over the prefix but not the head:~
              ~%  prefix: ~A" prefix-edge )))

(deftrace :ha-neither-prefix-nor-head ()
  (when *trace-HA-contexts*
    (trace-msg "  There is no edge over its prefix or its head")))

#|
(deftrace : ()
  (when *trace-HA-contexts*
    (trace-msg "HA: ")))  |#




;;;-----------
;;; traversal
;;;-----------

(defparameter *trace-traversal-hook* nil
  "Read in Word-level-traversal-hook and announces everything
   that passes through it.")

(defparameter *trace-traversal-hits* nil
  "Read in Word-level-traversal-hook and announces only cases
   where a traversal routine runs.")


(defun trace-traversal-hook ()
  (setq *trace-traversal-hook* t))

(defun untrace-traversal-hook ()
  (setq *trace-traversal-hook* nil))

(defun trace-traversal-hits ()
  (setq *trace-traversal-hits* t))

(defun untrace-traversal-hits ()
  (setq *trace-traversal-hits* nil))

