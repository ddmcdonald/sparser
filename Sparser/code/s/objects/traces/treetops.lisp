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


(defun trace-forest-level ()
  (setq *trace-forest-level* t))

(defun unTrace-forest-level ()
  (setq *trace-forest-level* nil))


(defun trace-extension ()
  (setq *trace-extension-decision* t))

(defun untrace-extension ()
  (setq *trace-extension-decision* nil))


(defun trace-treetops ()
  (setq *trace-treetops* t))

(defun untrace-treetops ()
  (setq *trace-treetops* nil))


(defun trace-forest-edges ()
  (setq *trace-do-edge/forest* t
        *trace-check-edges* t))

(defun unTrace-forest-edges ()
  (setq *trace-do-edge/forest* nil
        *trace-check-edges* nil))


;;;-------------------------------------
;;; Extend scan or move to forest level
;;;-------------------------------------

(deftrace :pts/checking-seg-extension (boundary-pos)
  ;; Called from scan-another-segment?
  (when (or *trace-network* *trace-extension-decision*)
    (trace-msg "Checking whether to scan another segment at p~a"
               (pos-token-index boundary-pos))))

(deftrace :pts/check-extension-value (value)
  ;; Called from scan-another-segment?
  (when (or *trace-network* *trace-extension-decision*)
    (trace-msg "scan-another-segment? will Returning ~a" value)))


(deftrace :pts/seg-extends (boundary-pos)
  ;; called from Can-segment-ever-extend
  (when (or *trace-network* *trace-extension-decision*)
    (trace-msg "Segment \"~A\" extends, scanning the next segment starting ~
                at p~A" (string-of-words-between *left-segment-boundary*
                                                 *right-segment-boundary*)
               (pos-token-index boundary-pos))))

(deftrace :pts/seg-doesnt-extend (boundary-pos)
  ;; called from Can-segment-ever-extend
  (when (or *trace-network* *trace-extension-decision*)
    (trace-msg "Segment \"~A\" does not extend.~
                ~%   Moving to the forest-level at p~A"
               (string-of-words-between *left-segment-boundary*
                                        *right-segment-boundary*)
               (pos-token-index boundary-pos))))

(deftrace :pts/no-final-edge (boundary-pos)
  ;; called from Can-segment-ever-extend
  (when (or *trace-network* *trace-extension-decision*)
    (trace-msg "Segment \"~A\" does not extend~
                ~%    No edge ending at p~A"
               (string-of-words-between *left-segment-boundary*
                                        *right-segment-boundary*)
               (pos-token-index boundary-pos))))


(deftrace :pts/period-seen (pos-before)
  ;; called from Next-word-does-not-indicate-a-significant-boundary
  ;; and next-word-is-not-sentence-final-period
  (when (or *trace-network* *trace-extension-decision*)
    (trace-msg "There is a period at p~A. Moving to forest level~
                ~%   after the segment \"~A\""
               (pos-token-index pos-before)
               (string-of-words-between *left-segment-boundary*
                                        *right-segment-boundary*))))

(deftrace :pts/angle-bracket-seen (pos-before)
  ;; called from Next-word-does-not-indicate-a-significant-boundary
  (when (or *trace-network* *trace-extension-decision*)
    (trace-msg "There is a '<' at p~A. Moving to forest level~
                ~%   after the segment \"~A\""
               (pos-token-index pos-before)
               (string-of-words-between *left-segment-boundary*
                                        *right-segment-boundary*))))

(deftrace :pts/word-isnt-a-significant-boundary (pos-before word)
  ;; called from Next-word-does-not-indicate-a-significant-boundary
  (when (or *trace-network* *trace-extension-decision*)
    (trace-msg "The segment \"~A\"~
                ~%   is followed at p~A by \"~A\"~
                ~%   so we continue and scan the next segment"
               (string-of-words-between *left-segment-boundary*
                                        *right-segment-boundary*)
               (pos-token-index pos-before)
               word)))


;;;--------------
;;; forest level
;;;--------------

(deftrace :moving-to-forest-level (pos reason)
  ;; called from Move-to-forest-level
  (when (or *trace-network* *trace-forest-level*)
    (trace-msg "Moving to the forest-level starting back from p~A ~
                - ~A" (pos-token-index pos) reason)))

(deftrace :forest-level-turned-off ()
  (when (or *trace-network* *trace-forest-level*)
    (trace-msg "    but *do-forest-level* is off")))


(deftrace :PPTT/no-edges ()
  ;; called from Move-to-forest-level
  (when (or *trace-network* *trace-forest-level*)
    (trace-msg "   but there's nothing to parse")))

(deftrace :PPTT/edge-at-quiessence (edge/ev)
  ;; called from Move-to-forest-level
  (when (or *trace-network* *trace-forest-level*)
    (trace-msg "   but the rightmost edge (ev) in the forest ~
             ~%    is already~%at the quiessent position: ~A" edge/ev)))


(deftrace :PPTT/starting (edge/ev)
  ;; called from PPTT
  (when (or *trace-network* *trace-forest-level*)
    (trace-msg "Parsing treetops starting at/with ~A~
                ~%   and going back as far as p~A"
               (etypecase edge/ev
                 (edge edge/ev)
                 (edge-vector
                  (format nil "p~A" (pos-token-index
                                     (ev-position edge/ev)))))
               (pos-token-index *rightmost-quiescent-position*))))


(deftrace :PPTT/quiessence-reached (pos)
  ;; called from after-quiescence
  (when (or *trace-network* *trace-forest-level*)
    (trace-msg "Forest level parsing is quiescent as far right ~
                as p~A" (pos-token-index pos))))


(deftrace :moving-quescence-ptr-before-edge (edge)
  ;; called from Edge-interaction-with-quiescence-check
  (when (or *trace-network* *trace-forest-level*)
    (trace-msg "Quescence pointer at p~A has been covered by an edge:~
                ~%    ~A~%    Moving it to the start of the edge."
               (pos-token-index *rightmost-quiescent-position*) edge)))


;;;----------
;;; treetops
;;;----------

(deftrace :tt/checking (tt)
  ;; called from do-treetop-triggers
  (when (or *trace-treetops* *trace-network*)
    (trace-msg "Checking treetop: ~A" tt)))

(deftrace :tt/action (fn-name)
  ;; called from Do-generic-actions-off-treetop
  (when (or *trace-treetops* *trace-network*)
    (trace-msg "   it runs the function ~A" fn-name)))

(deftrace :tt/action/form (label fn-name)
  ;; called from Do-generic-actions-off-treetop
  (when (or *trace-treetops* *trace-network*)
    (trace-msg "   its form label ~A~
              ~%      runs the function ~A" label fn-name)))

(deftrace :tt/no-action ()
  ;; called from Do-generic-actions-off-treetop
  (when (or *trace-treetops* *trace-network*)
    (trace-msg "   it has no generic action")))

(deftrace :tt/continuing ()
  ;; called from do-treetop-triggers
  (when (or *trace-treetops* *trace-network*)
    (trace-msg "Moving rightwards to the next treetop")))

(deftrace :tt/caught-up ()
  ;; called from do-treetop-triggers
  (when (or *trace-treetops* *trace-forest-transitions* *trace-network*)
    (trace-msg "Treetop walk caught up with the right boundary ~
                of the forest-level parse~%  at p~A"
               (pos-token-index *rightmost-quiescent-position*))))

(deftrace :tt/resume-forest-parse (new-tt-boundary forest-right-boundary)
  ;; called from do-treetop-triggers
  (when (or *trace-treetops* *trace-network*)
    (trace-msg "Resuming the forest parse from TT level~
              ~%    left-bound: p~A   right-bound: p~A"
               (pos-token-index new-tt-boundary)
               (pos-token-index forest-right-boundary))))

(deftrace :tt/resume-forest-parse-from-DA (edge)
  (when (or *trace-treetops* *trace-network* *trace-DA-check*)
    (trace-msg "Resuming the forest parse from DA level to deal with~
              ~%    ~A" edge)))

;;--- interaction of treetops and new edges

(deftrace :impact/checking-edge (e)
  ;; called from Check-impact-on-quiescence-pointer
  (when (or *trace-treetops* *trace-network*)
    (trace-msg "Completed ~A~
              ~%     checking its impact on quiescence" e)))

(deftrace :impact/moving-quiescence (start-pos)
  ;; called from Check-impact-on-quiescence-pointer
  (when (or *trace-treetops* *trace-network*)
    (trace-msg "  It moves the quiescence pointer back to p~A"
               (pos-token-index start-pos))))

(deftrace :impact/moving-tt-boundary (start-pos)
  ;; called from Check-impact-on-quiescence-pointer
  (when (or *trace-treetops* *trace-network*)
    (trace-msg "  It moves the Treetop left boundary back to p~A"
               (pos-token-index start-pos))))
               


;;;------------------------------------------------
;;; transitions between stages of the forest level
;;;------------------------------------------------

(defvar *trace-forest-transitions* nil)

(defun trace-forest-transitions ()
  (setq *trace-forest-transitions* t))
(defun unTrace-forest-transitions ()
  (setq *trace-forest-transitions* nil))

(deftrace :setup-PPTT (right-pos)
  ;; called from Setup-returns-from-PPTT-&-run
  (when (or *trace-forest-transitions* *trace-network*)
    (trace-msg "Commencing forest-level parsing from p~A"
               (pos-token-index right-pos))))

(deftrace :forest-parse-returned (right-pos)
  ;; called from Setup-returns-from-PPTT-&-run
  ;; and from new-forest-driver
  (when (or *trace-forest-transitions* *trace-network*)
    (trace-msg "Finished the forest-level parsing from p~A"
               (pos-token-index right-pos))))

(deftrace :beginning-DA (start-pos)
  ;; called from Consider-debris-analysis
  (when (or *trace-forest-transitions* *trace-network*
            *trace-DA-check* *trace-da*)
    (trace-msg "~%-- Commencing Debris Analysis from p~A"
               (pos-token-index start-pos))))


(deftrace :moving-to-do-treetops ()
  ;; called from Walk-pending-treetops-for-debris-analysis
  (when (or *trace-forest-transitions* *trace-network*
            *trace-DA-check*)
    (trace-msg "Moving to Do-treetops")))








;;;---------------------
;;; network-flow traces
;;;---------------------


(deftrace :moved-to-forest-level (p)
  (when *trace-network-flow*
    (trace-msg "[scan] moved-to-forest-level: p~A"
               (pos-token-index p))))

(deftrace :moving-to-forest-level/conj/edge (edge)
  ;; called from check-out-possible-conjunction
  (when (or *trace-network-flow*
	    *trace-conjunction-algorithm*)
    (trace-msg "[scan] moved-to-forest-level from Conjunction~
              ~%    with edge ~a" edge)))

(deftrace :moving-to-forest-level/conj/no-edge (rightmost-pos)
  ;; called from check-out-possible-conjunction
  (when (or *trace-network-flow*
	    *trace-conjunction-algorithm*)
    (trace-msg "[scan] moved-to-forest-level from Conjunction~
              ~%    without having conjoined anything.~
              ~%    Rightmost position is p~a"
	       (pos-token-index rightmost-pos))))

(deftrace :PPTT ()
  (when *trace-network-flow*
    (trace-msg "[forest] PPTT")))

(deftrace :forest-needs-scan ()
  (when *trace-network-flow*
    (trace-msg "[forest] returning from forest-level parsing to ~
                scan the next segment")))

(deftrace :after-quiescence (p)
  (when *trace-network-flow*
    (trace-msg "[forest] after-quiescence: p~A"
               (pos-token-index p))))

(deftrace :do-treetop-triggers ()
  (when *trace-network-flow*
    (trace-msg "[forest] do-treetop-triggers")))

(deftrace :do-treetop-loop (tt)
  (when *trace-network-flow*
    (trace-msg "[forest] do-treetop-loop - ~A" tt)))

(deftrace :check-if-word-starts-segment (pos-before word)
  (when *trace-network-flow*
    (trace-msg "[c3] does ~a just after p~a start a segment?"
               (word-pname word) (pos-token-index pos-before))))


;;;------------------
;;; Treetop marching
;;;------------------

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


;;;-----------------------------------
;;; "new" forest protocol -- sweeping
;;;-----------------------------------

(defun trace-treetops-sweep ()
  (setq *trace-treetops-sweep* t))

(defun untrace-treetops-sweep ()
  (setq *trace-treetops-sweep* nil))

(deftrace :new-forest-driver (rightmost-pos)
  ;; called from new-forest-driver
  (when *trace-network-flow*
    (trace-msg "[scan] moved-to-forest-level~
              ~%   Rightmost position is p~a"
               (pos-token-index rightmost-pos))))

(deftrace :sweep-sentence-treetops (start-pos end-pos)
  ;; called from sweep-sentence-treetops
  (when (or *trace-network-flow*
            *trace-treetops-sweep*)
    (trace-msg "[scan] Sweeping treetops from p~a to p~a"
               (pos-token-index start-pos)
               (pos-token-index end-pos))))

(deftrace :next-tt-swept (tt pos-after)
  ;; called from sweep-sentence-treetops
  (when *trace-treetops-sweep*
    (trace-msg "[sweep] Next tt is ~a ending at p~a"
               tt (pos-token-index pos-after))))


;;;------------------------------------------
;;; "new" forest protocol --  Island Driving
;;;------------------------------------------

(defun trace-island-driving ()
  (setq *trace-island-driving* t))

(defun untrace-island-driving ()
  (setq *trace-island-driving* nil))


(deftrace :island-driven-forest-parse ()
  ;; called from island-driven-forest-parse
  (when (or *trace-network-flow *trace-island-driving*)
    (trace-msg "Doing island-driving")))

;;--- subject & verb group

(deftrace :subject+verb (edge subject-edge verb-group-edge)
  ;; called from try-simple-subj+verb
  (when *trace-island-driving*
    (trace-msg "[islands] Composed the subject e~a and verb e~a ~
                to form e~a"
               (edge-position-in-resource-array subject-edge)
               (edge-position-in-resource-array verb-group-edge)
               (edge-position-in-resource-array edge))))

(deftrace :subject-not-adjacent ()
  ;; called from try-simple-subj+verb
  (when *trace-island-driving*
    (trace-msg "[islands] the subject is not adjacent to the main verb")))

(deftrace :no-subject-or-verb-edges ()
  ;; called from try-simple-subj+verb
  (when *trace-island-driving*
    (trace-msg "[islands] no subject or no main verb")))


;;--- NPs

(deftrace :np-extends-rightwards? (np-edge)
  ;; called from look-for-np-extensions
  (when *trace-island-driving*
    (trace-msg "[islands] Looking at NP e~a"
               (edge-position-in-resource-array np-edge))))

(deftrace :np-check-right-expansion (edge-to-the-right)
  ;; called from look-for-np-extensions
  (when *trace-island-driving*
    (trace-msg "[islands]   Does it compose with e~a to its right?"
               (edge-position-in-resource-array edge-to-the-right))))

(deftrace :np-extended-rightward (edge)
  ;; called from look-for-np-extensions
  (when *trace-island-driving*
    (trace-msg "[islands]   Yes. Creating e~a"
               (edge-position-in-resource-array edge))))
               
(deftrace :np-did-not-extend-rightward ()
  ;; called from look-for-np-extensions
  (when *trace-island-driving*
    (trace-msg "[islands]   No.")))

(deftrace :looking-leftward-from-np-at (base-edge edge-to-the-left)
  ;; called from look-for-np-extensions
  (when *trace-island-driving*
    (trace-msg "[islands]   Looking leftward from e~a at the ~a e~a"
               (edge-position-in-resource-array base-edge)
               (cat-symbol (edge-form edge-to-the-left))
               (edge-position-in-resource-array edge-to-the-left))))

(deftrace :np-leftwards-composed (new-edge)
  ;; called from look-for-np-extensions
  (when *trace-island-driving*
    (trace-msg "[islands]   They composed to form e~a"
               (edge-position-in-resource-array new-edge))))

(deftrace :np-leftwards-did-not-compose ()
  ;; called from look-for-np-extensions
  (when *trace-island-driving*
    (trace-msg "[islands]   They did not compose.")))


;;--- verb extension

(deftrace :looking-for-bounded-np-after (vg-edge)
  ;; called from try-simple-vps
  (when *trace-island-driving*
    (trace-msg "[islands] Looking for a bounded np to the right ~
                of the verb group e~a"
               (edge-position-in-resource-array vg-edge))))

(deftrace :looking-at-edge-after-verb (form right-neighbor)
  ;; called from try-simple-vps
  (when *trace-island-driving*
    (trace-msg "[islands]   The ~a e~a is to its right"
               (cat-symbol form)
               (edge-position-in-resource-array right-neighbor))))

(deftrace :np-not-right-bounded ()
  ;; called from try-simple-vps
  (when *trace-island-driving*
    (trace-msg "[islands]   It is not right-bounded")))

(deftrace :verb-composed-with-np (edge)
  ;; called from try-simple-vps
  (when *trace-island-driving*
    (trace-msg "[islands]   They composed to form e~a"
               (edge-position-in-resource-array edge))))

(deftrace :verb-did-not-compose-with-np (vg-edge right-neighbor)
  ;; called from try-simple-vps
  (when *trace-island-driving*
    (trace-msg "[islands]   e~a and e~a do not compose"
               (edge-position-in-resource-array vg-edge)
               (edge-position-in-resource-array right-neighbor))))


;;--- general

(deftrace :no-edge-to-the-right-of (edge)
  ;; called from try-simple-pps
  (when *trace-island-driving*
    (trace-msg "[islands]   There is no edge to the right of e~a"
                (edge-position-in-resource-array edge))))

(deftrace :no-edge-to-the-left-of (edge)
  (when *trace-island-driving*
    (trace-msg "[islands]   There is no edge to the left of e~a"
                (edge-position-in-resource-array edge))))




;;--- PPs

(deftrace :trying-the-preposition (prep-edge)
  ;; called from try-simple-pps
  (when *trace-island-driving*
    (trace-msg "[islands] Looking for composition with the preposition e~a"
               (edge-position-in-resource-array prep-edge))))

(deftrace :prep-followed-by (form right-neighbor)
  ;; called from try-simple-pps
  (when *trace-island-driving*
    (trace-msg "[islands]   It is followed by the ~a e~a"
               (cat-symbol form)
               (edge-position-in-resource-array right-neighbor))))

(deftrace :prep-composes-to-form (edge)
  ;; called from try-simple-pps
  (when *trace-island-driving*
    (trace-msg "[islands]   They composed to form e~a"
                (edge-position-in-resource-array edge))))

(deftrace :does-not-compose-with (prep-edge right-neighbor)
  ;; called from try-simple-pps
  (when *trace-island-driving*
    (trace-msg "[islands]  e~a and e~a do not compose"
               (edge-position-in-resource-array prep-edge)
               (edge-position-in-resource-array right-neighbor))))







