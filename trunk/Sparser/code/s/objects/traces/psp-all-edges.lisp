;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:(SPARSER LISP) -*-
;;; copyright (c) 1992.1993  David D. McDonald  -- all rights reserved
;;; 
;;;     File:  "psp-all-edges"
;;;   Module:  "objects;traces:"
;;;  Version:  December 1992     

;; initiated 12/6/92 v2.3, extended 12/16, 3/8/93

(in-package :sparser)



(defun all-edges-traces ())  ;; for meta-point

;;;--------
;;; switch
;;;--------

;(setq *trace-network* t)
;(setq *trace-network* nil)

;(setq *trace-check-edges* t)
;(setq *trace-check-edges* nil)


;;;-------
;;; cases
;;;-------

(deftrace :starting-ae ()
  (when *trace-network*
    (trace-msg "Starting all-edges phrase structure algorithm")))

(deftrace :ae/dispatch (p)
  (when *trace-network*
    (trace-msg "Dispatching from p~A, which is ~A"
               (pos-token-index p) (pos-assessed? p))))

(deftrace :ae/scan (p)
  (when *trace-network*
    (trace-msg "Scanning position p~A" (pos-token-index p))))

(deftrace :ae/word-scanned (w)
  (when *trace-network*
    (trace-msg "Word scanned is ~A" w)))

(deftrace :ae/complete (w p)
  (when *trace-network*
    (trace-msg "Completing ~s at p~A"
               (word-pname w) (pos-token-index p))))

(deftrace :ae/install-preterminals (w edges)
  (when (or *trace-network*
            *trace-check-edges*)
    (if edges
      (then
        (trace-msg "Installed ~A initial edges over ~S~"
                   (length edges) (word-pname w))
        (dolist (e edges)
          (format *trace-stream* "~&   ~A~%" e)))
      (trace-msg "No initial edges installed over ~S"
                 (word-pname w)))))


(deftrace :ae/do-pending-edges (position)
  ;; called from do-pending-edges
  (when (or *trace-network*
            *trace-check-edges*)
    (trace-msg "Doing edges pending from ~A (p~A - p~A)"
               (pos-terminal position)
               (pos-token-index position)
               (pos-token-index (chart-position-after position)))))
               

(deftrace :ae/check-against-neighbors (edge)
  ;; called from Check-edge-against-all-neighbors
  (when *trace-check-edges*
    (trace-msg "Checking ~A against all its neighbors"
               edge)))

(deftrace :ae/checking-left-neighbor (edge left-neighbor)
  ;; called from Check-left-against-all-neighbors
  (declare (ignore edge))
  (when *trace-check-edges*
    (trace-msg "Looking leftwards at ~A" left-neighbor)))

(deftrace :ae/checking-right-neighbor (edge right-neighbor)
  ;; called from Check-right-against-all-neighbors
  (declare (ignore edge))
  (when *trace-check-edges*
    (trace-msg "Looking rightwards at ~A" right-neighbor)))


(deftrace :no-neighbors-to-the-right (edge)
  ;; called from Check-right-against-all-neighbors
  (when *trace-check-edges*
    (trace-msg "    e~A has no neighbors to its right"
               (edge-position-in-resource-array edge))))

(deftrace :no-neighbors-to-the-left (edge)
  ;; called from Check-left-against-all-neighbors
  (when *trace-check-edges*
    (trace-msg "    e~A has no neighbors to its left"
               (edge-position-in-resource-array edge))))

