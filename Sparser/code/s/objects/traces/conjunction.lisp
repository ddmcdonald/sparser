;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:SPARSER -*-
;;; copyright (c) 1994-1996,2011  David D. McDonald  -- all rights reserved
;;; extensions copyright (c) 2007 BBNT Solutions LLC. All Rights Reserved
;;; $Id: conjunction.lisp 207 2009-06-18 20:59:16Z cgreenba $
;;; 
;;;     File:  "conjunction"
;;;   Module:  "objects;traces:"
;;;  Version:  February 2007

;; initiated 5/18/94.  Added cases and more intuitive flag function 9/12/96.
;; Added more cases 2/13/07, and 8/11. 8/4/11 Added trace for treetop case.

(in-package :sparser)



(defun trace-conjunction ()
  (setq *trace-conjunction-algorithm* t
        *trace-conjunction-hook* t))

(defun unTrace-conjunction ()
  (setq *trace-conjunction-algorithm* nil
        *trace-conjunction-hook* nil))


;;;-------------------------------------
;;; inside the algorithm and its checks
;;;-------------------------------------

(defparameter *trace-conjunction-algorithm* nil)

(deftrace :conj-edges-to-each-side (edge-before edge-after)
  ;; called from Check-out-possible-conjunction
  (when *trace-conjunction-algorithm*
    (trace-msg "[conj] edge before \"and\" = ~A~
              ~%       edge after = ~A"
               edge-before edge-after)))


(deftrace :conjoined-edges-dont-have-individuals-as-referents ()
  (when *trace-conjunction-algorithm*
    (trace-msg "[conj] The edges in the list of conjoined edges~
              ~%       do not have individuals as their referent~
              ~%       so using 'nil' as their referent.")))




;;;----------------------------------------------------
;;; the 'hook', notes whether conjunction is triggered
;;;----------------------------------------------------

(defparameter *trace-conjunction-hook* nil)

(defun trace-conjunction-hook ()
  (setq *trace-conjunction-hook* t))

(defun untrace-conjunction-hook ()
  (setq *trace-conjunction-hook* nil))



(deftrace :setting-conjunction-pos-before (pos)
  ;; called from Mark-instance-of-AND
  (when *trace-conjunction-hook*
    (trace-msg "[conj] flag set to ~A" pos)))

(deftrace :conj-flag-still-up-in-speech ()
  ;; called from Mark-instance-of-AND
  (when *trace-conjunction-hook*
    (trace-msg "[conj] saw another 'and' but the flag is still up~
              ~%       Ignoring it since we're in *speech* mode.")))

(deftrace :calling-conj-treetop-hook (position-after)
  ;; Called from conjoin-adjacent-like-treetops
  (when *trace-conjunction-hook*
    (trace-msg "[conj] Invoking the treetop hook at ~a"
               position-after)))


(deftrace :calling-conj-checkout-routine-at (pos)
  ;; called from Check-out-possible-conjunction
  (when *trace-conjunction-hook*
    (trace-msg "[conj] reacting to the flag at ~A" pos)))

(deftrace :turning-off-conj-flag-w/o-any-action ()
  ;; called from sf-action/no-edges
  (when *trace-conjunction-hook*
    (trace-msg "[conj] turning off the flag w/o actions. seg.start=p~A"
               (pos-token-index *left-segment-boundary*))))

(deftrace :conjoining-two-edges (edge left-edge right-edge heuristic)
  ;; called from Conjoin-two-edges
  (when (or *trace-conjunction-algorithm*
	    *trace-conjunction-hook*)
    (trace-msg "[conj] conjoined ~a and ~a~
              ~%    to form ~a based on ~a"
	       left-edge right-edge edge heuristic)))

(deftrace :conjoining-multiple-edges/comma (edge)
  ;; called from Conjoin-multiple-edges
   (when (or *trace-conjunction-algorithm*
	    *trace-conjunction-hook*)
    (trace-msg "[conj] conjoined multiple comma-separated edges~
              ~%    to form ~a" edge)))

