;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:(SPARSER LISP) -*-
;;; copyright (c) 1990  Content Technologies Inc.
;;; copyright (c) 1992,2013  David D. McDonald  -- all rights reserved
;;; 
;;;     File:  "treetops"
;;;   Module:  "objects;traces:"
;;;  Version:   March 2013

;; Stubbed with parameters 10/1990. Moved in the traces from
;; drivers/chart/psp/march-forest 3/8/13.

(in-package :sparser)


(defparameter *trace-treetops* nil
  "Flag read in Do-treetops.")

(defparameter *trace-treetop-hits* nil
  "Signals there being a treetop routine, as opposed to just
   the treetop being checked.")


(defun trace-forest-edges ()
  (setq *trace-do-edge/forest* t
        *trace-check-edges* t))

(defun unTrace-forest-edges ()
  (setq *trace-do-edge/forest* nil
        *trace-check-edges* nil))


;;;---------------------
;;; network-flow traces
;;;---------------------

(defparameter *trace-forest-marching-flow* nil)

(deftrace :march-back-from-the-right/forest ()
  (when (or *trace-network-flow* *trace-forest-marching-flow*)
    (trace-msg "March-back-from-the-right/forest called at p~A"
               (pos-token-index *rightmost-active-position/forest*))))

(deftrace :march-back-one-position/forest (rightmost)
  (when (or *trace-network-flow* *trace-forest-marching-flow*)
    (trace-msg "March-back-one-position/forest at p~A"
               (pos-token-index rightmost))))

(deftrace :try-parsing-tt/multiple-on-right (right-vector)
  (when (or *trace-network-flow* *trace-forest-marching-flow*)
    (trace-msg "try-parsing-tt/multiple-on-right: ~A"
               right-vector)))

(deftrace :try-parsing-tt (right-edge)
  (when (or *trace-network-flow* *trace-forest-marching-flow*)
    (trace-msg "try-parsing-tt: ~A" right-edge)))

(deftrace :check-for-right-extensions/forest (left-edge)
  (when (or *trace-network-flow* *trace-forest-marching-flow*)
    (trace-msg "Check-for-right-extensions/forest ~A" left-edge)))


(deftrace :forest/extending-from-rightmost-new-edge (edge)
  ;; called from Check-for-right-extensions/forest
  (when (or *trace-network* *trace-extension-decision*)
    (trace-msg "Extending from rightmost forest-level edge: ~A" edge))) 


;;;--------------------
;;; forest level edges
;;;--------------------

(deftrace :forest/no-edges ()
  ;; called from March-back-from-the-right/forest
  (when *trace-do-edge/forest*
    (trace-msg "There are no edges remaining in the forest")))

(deftrace :forest/reached-quescence ()
  ;; called from March-back-from-the-right/forest, try-parsing-tt and
  ;; try-parsing-tt/multiple-on-right
  (when *trace-do-edge/forest*
    (trace-msg "    but the quiescent position has been reached")))

(deftrace :forest/start-of-chart ()
  ;; called from March-back-from-the-right/forest, try-parsing-tt and
  ;; try-parsing-tt/multiple-on-right
  (when *trace-do-edge/forest*
    (trace-msg "    but the start of the chart has been reached")))

(deftrace :forest/found-edge (edge end-pos)
  ;; called from March-back-from-the-right/forest
  (when *trace-do-edge/forest*
    (trace-msg "Found e~A, ending at p~A"
               (edge-position-in-resource-array edge)
               (pos-token-index end-pos))))


(deftrace :forest/looking-leftwards/mult (right-vector middle-pos)
  ;; called from try-parsing-tt/multiple-on-right
  (when *trace-do-edge/forest*
    (trace-msg "(F) Looking leftwards from the multiple edges at ~A ~
                 for edges ending at p~A"
              (pos-token-index (ev-position right-vector))
              (pos-token-index middle-pos))))

(deftrace :forest/mult-adjacent-to-mult ()
  ;; called from try-parsing-tt/multiple-on-right
  (when *trace-do-edge/forest*
    (trace-msg "   it is adjacent to several edges")))

(deftrace :forest/mult-adjacent-leftwards-to-edge (edge)
  ;; called from try-parsing-tt/multiple-on-right
  (when *trace-do-edge/forest*
    (trace-msg "   it is adjacent to ~A" edge)))

(deftrace :forest/mult-nothing-adjacent-moving-rightward ()
  ;; called from try-parsing-tt/multiple-on-right
  (when *trace-do-edge/forest*
    (trace-msg "   There is no adjacent edge~
                ~%   Looking for the next rightmost edge")))


(deftrace :forest/looking-leftwards-from (right-edge end-pos)
  ;; called from try-parsing-tt
  (when *trace-do-edge/forest*
    (trace-msg "(F) Looking leftwards from ~A~%   for edges ending ~
                 at p~A" right-edge (pos-token-index end-pos))))

(deftrace :forest/single-adjacent-to-mult ()
  ;; called from try-parsing-tt
  (when *trace-do-edge/forest*
    (trace-msg "   it is adjacent to several edges")))

(deftrace :forest/single-adjacent-leftwards-to-edge (edge)
  ;; called from try-parsing-tt
  (when *trace-do-edge/forest*
    (trace-msg "   it is adjacent to ~A" edge)))

(deftrace :forest/single-nothing-adjacent-moving-rightward ()
  ;; called from try-parsing-tt
  (when *trace-do-edge/forest*
    (trace-msg "   There is no adjacent edge~
                ~%   Looking for the next rightmost edge")))



(deftrace :forest/right-extension (edge)
  ;; called from Check-for-right-extensions/forest
  (when *trace-do-edge/forest*
    (trace-msg "(F) Looking at the right neighbor of ~A" edge)))

(deftrace :forest/left-boundary-reached ()
  ;; called from Check-for-right-extensions/forest
  (when *trace-do-edge/forest*
    (trace-msg "   but the last segment ended here")))

(deftrace :forest/right-looking-edge-extends ()
  ;; called from Check-for-right-extensions/forest
  (when *trace-do-edge/forest*
    (trace-msg "     and this edge can extend --> ~
                Going back to scanning")))

(deftrace :forest/left-boundary-reached/looking-leftwards ()
  ;; called from Check-for-right-extensions/forest
  (when *trace-do-edge/forest*
    (trace-msg "     looking for other active treetops further leftward")))

(deftrace :forest/right-ext/adjacent-mult ()
  ;; called from Check-for-right-extensions/forest
  (when *trace-do-edge/forest*
    (trace-msg "   which has multiple edges")))

(deftrace :forest/right-ext/adjacent-single (edge)
  ;; called from Check-for-right-extensions/forest
  (when *trace-do-edge/forest*
    (trace-msg "   which has the single edge ~A" edge)))

(deftrace :forest/right-ext/no-edge ()
  ;; called from Check-for-right-extensions/forest
  (when *trace-do-edge/forest*
    (trace-msg "   which has no edges")))


