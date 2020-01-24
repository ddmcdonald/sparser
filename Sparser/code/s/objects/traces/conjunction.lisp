;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:SPARSER -*-
;;; copyright (c) 1994-1996,2011-2012,2020  David D. McDonald  -- all rights reserved
;;; extensions copyright (c) 2007 BBNT Solutions LLC. All Rights Reserved

;;;     File:  "conjunction"
;;;   Module:  "objects;traces:"
;;;  Version:  January 2020

;; initiated 5/18/94.  Added cases and more intuitive flag function 9/12/96.
;; Added more cases 2/13/07, and 8/11. 8/4/11 Added trace for treetop case.
;; 11/8/12 Started set for the submered check

(in-package :sparser)

(defun trace-conjunction ()
  (trace-conjunction-algorithm)
  (trace-conjunction-hook))

(defun untrace-conjunction ()
  (untrace-conjunction-algorithm)
  (untrace-conjunction-hook))



;;;-------------------------------------
;;; inside the algorithm and its checks
;;;-------------------------------------

(defparameter *trace-conjunction-algorithm* nil)

(defun trace-conjunction-algorithm ()
  (setq *trace-conjunction-algorithm* t))

(defun untrace-conjunction-algorithm ()
  (setq *trace-conjunction-algorithm* nil))


(deftrace :conj-edges-to-each-side (edge-before edge-after)
  ;; called from look-for-possible-conjunction
  (when *trace-conjunction-algorithm*
    (trace-msg "[conj] edge before = ~A~
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

(deftrace :setting-another-conjunction-pos-before (pos)
  ;; called from Mark-instance-of-AND
  (when *trace-conjunction-hook*
    (trace-msg "[conj] flag also set to ~A" pos)))

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

(deftrace :oxford-comma (edge-left-of-comma)
  ;; called from short-conjunctions-sweep
  (when *trace-conjunction-hook*
    (trace-msg "[conj] Oxford comma pattern detected.~
              ~%   Using ~a as the left edge" edge-left-of-comma)))

(deftrace :short-conjoined-edge (edge)
  ;; called from try-spanning-conjunctions and from
  ;; create-short-conjunction-edge-if-possible
  (when *trace-conjunction-hook*
    (trace-msg "[conj] They conjoined to form e~a"
               (edge-position-in-resource-array edge))))


(deftrace :calling-conj-checkout-routine-at (pos)
  ;; called from look-for-possible-conjunction
  (when *trace-conjunction-hook*
    (trace-msg "[conj] reacting to the conjunction at ~A" pos)))

(deftrace :reset-edge-before-comma (edge-before)
  ;; called from look-for-possible-conjunction
  (when *trace-conjunction-hook*
    (trace-msg "[conj] moved over comma: ~a" edge-before)))

(deftrace :checking-conj (left-edge right-edge)
  ;; called from look-for-possible-conjunction
  (when *trace-conjunction-hook*
    (trace-msg "[conj]   considering conjoining ~a and ~a"
               left-edge right-edge)))

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


;;;---------------------------------------------
;;; "submerging" a right edge under a left edge
;;;---------------------------------------------

(deftrace :submerged-check (edge-before edge-after)
  ;; called from look-for-submerged-matching-conj-edge
  (when *trace-conjunction-algorithm*
    (trace-msg "Submerged check:~%   ~a~%   ~a"
               edge-before edge-after)))


;;--- conjunction (orginally in treetops traces)

(deftrace :try-spanning-conjunctions ()
  ;; called from run-island-checks
  (when (or *trace-island-driving* *trace-conjunction-hook*)
    (trace-msg "~%Checking for conjunction")))

(deftrace :no-heuristics-for (left right)
  ;; called from try-spanning-conjunctions
  (when (or *trace-island-driving* *trace-conjunction-hook*)
    (trace-msg "[islands] no heuristic for composing e~a and e~a"
               (edge-position-in-resource-array left)
               (edge-position-in-resource-array right))))

(deftrace :no-conjunction-edges ()
  ;; called from try-spanning-conjunctions
  (when (or *trace-island-driving* *trace-conjunction-hook*)
    (trace-msg "[islands] There are no conjunction edges")))

(deftrace :looking-at-conj-edge (conj-edge)
  ;; called from try-spanning-conjunctions
  (when (or *trace-island-driving* *trace-conjunction-hook*)
    (trace-msg "[islands] Looking around ~a" conj-edge)))

(deftrace :new-conjunction-pattern ()
  ;; called from try-spanning-conjunctions
  (when (or *trace-island-driving* *trace-conjunction-hook*)
    (trace-msg "[islands] new arrangement of conjuncts")))

(deftrace :trying-to-conjoin (e1 e2)
  ;; called from try-spanning-conjunctions
  ;; and look-for-short-obvious-conjunctions
  (when (or *trace-island-driving* *trace-conjunction-hook*)
    (trace-msg "[islands] Trying to conjoin  e~a and e~a"
               (edge-position-in-resource-array e1)
               (edge-position-in-resource-array e2))))

(deftrace :conjoined-edge (edge)
  ;; called from try-spanning-conjunctions
  (when (or *trace-island-driving* *trace-conjunction-hook*)
    (trace-msg "[islands]   They conjoined to form e~a"
               (edge-position-in-resource-array edge))))

(deftrace :no-conjunction-heuristics-applied ()
  ;; called from try-spanning-conjunctions
  (when (or *trace-island-driving* *trace-conjunction-hook*)
    (trace-msg "[islands]   No conjunction heuristics applied")))

(deftrace :two-conjuncts-not-consistent ()
  ;; called from try-spanning-conjunctions
  (when (or *trace-island-driving* *trace-conjunction-hook*)
    (trace-msg "[islands]   The two aligned conjuncts aren't consistent")))

(deftrace :different-two-conjunction-pattern ()
  ;; called from try-spanning-conjunctions
  (when (or *trace-island-driving* *trace-conjunction-hook*)
    (trace-msg "[islands]   New pattern of two conjunctions")))


(deftrace :looking-for-list-conj (left)
  ;; called from search-for-list-conjunction
  (when *trace-conjunction-hook*
    (trace-msg "[conj] Looking for list conjunction at ~a" left)))

(deftrace :no-list-conj ()
  ;; called from search-for-list-conjunction
  (when *trace-conjunction-hook*
    (trace-msg "[conj]  didn't find one")))

(deftrace :extended-conjunction (new-edge)
  ;; called from seg-before-conjoins
  (when *trace-conjunction-hook*
    (trace-msg "[conj] added ~a to list" new-edge)))
