;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:(SPARSER LISP) -*-
;;; copyright (c) 1992-1995,2020  David D. McDonald  -- all rights reserved
;;; 
;;;     File:  "HA"
;;;   Module:  "objects/traces/"
;;;  Version:  July 2020

;; original flags defined 5/91. Started adding on/off routines 7/12/95.
;; Added seg.compl. flags 12/12/95

(in-package :sparser)


;;;----------------
;;; rule induction
;;;----------------

(defvar *trace-induction-sweep* nil)
(defvar *trace-induction-triggers* nil)

(defun trace-induction-sweep ()
  (setq *trace-induction-sweep* t))
(defun untrace-induction-sweep ()
  (setq *trace-induction-sweep* nil))

(defun trace-induction-triggers ()
  (setq *trace-induction-triggers* t))
(defun untrace-induction-triggers ()
  (setq *trace-induction-triggers* nil))



(deftrace :sweep/doc-element (object)
  ;; Called from induction-sweep
  (when *trace-induction-sweep*
    (trace-msg "Sweeping ~a" object)))

(deftrace ::sweep/no-debris ()
  ;; Called from induction-sweep
  (when *trace-induction-sweep*
    (trace-msg "  Sentence is fully covered")))

(deftrace :sweep/considering (tt category form)
  ;; Called from induction-sweep
  (when *trace-induction-sweep*
    (trace-msg "tt e~a ~a, ~a"
               (edge-position-in-resource-array tt)
               (cat-name category) (cat-name form))))

(deftrace :sweep/triggered (trigger)
  ;; Called from induction-sweep
  (when *trace-induction-sweep*
    (trace-msg "  trigger: ~a" trigger)))

(deftrace :sweep/takes-prep (word pp head)
  ;; Called from infer-preposition-rule
  (when (or *trace-induction-sweep* *trace-induction-triggers*)
    (trace-msg "triggered: e~a ~s e~a"
               (edge-position-in-resource-array head)
               (pname word)
               (edge-position-in-resource-array pp))))

(deftrace :prep-pattern (prep left-str right-str)
  ;; called from record-instance-of-preposition-pattern
  (when *trace-induction-triggers*
    (trace-msg "    ~s + ~s + ~s"
               left-str (pname prep) right-str)))



;;;------------------------------
;;; heuristic segment completion
;;;------------------------------

(defparameter *trace-HA-contexts* nil
  "Reports the situations each time the HA-driver is
   envoked.")

(defun trace-segment-completion ()
  (setq *trace-HA-contexts* t))

(defun untrace-segment-completion ()
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

(defun trace-traversal-hook ()
  (setq *trace-traversal-hook* t))

(defun untrace-traversal-hook ()
  (setq *trace-traversal-hook* nil))


(defparameter *trace-traversal-hits* nil
  "Read in Word-level-traversal-hook and announces only cases
   where a traversal routine runs.")

(defun trace-traversal-hits ()
  (setq *trace-traversal-hits* t))

(defun untrace-traversal-hits ()
  (setq *trace-traversal-hits* nil))

