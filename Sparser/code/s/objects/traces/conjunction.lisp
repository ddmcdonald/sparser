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
  (trace-conjunction-hook)
  (trace-conjunction-edges))

(defun untrace-conjunction ()
  (untrace-conjunction-hook)
  (untrace-conjunction-edges))


(defun trace-conjunction/all ()
  (trace-conjunction-algorithm)
  (trace-conjunction-hook)
  (trace-conjunction-edges))

(defun untrace-conjunction/all ()
  (untrace-conjunction-algorithm)
  (untrace-conjunction-hook)
  (untrace-conjunction-edges))



;;;-------------------------------------
;;; inside the algorithm and its checks
;;;-------------------------------------

(defparameter *trace-conjunction-algorithm* nil)
(defparameter *trace-conjunction-hook* nil)

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


(deftrace :oxford-comma (edge-left-of-comma)
  ;; called from short-conjunctions-sweep
  (when *trace-conjunction-algorithm*
    (trace-msg "[conj] Oxford comma pattern detected.~
              ~%   Using ~a as the left edge" edge-left-of-comma)))

(deftrace :short-conjoined-edge (edge)
  ;; called from try-spanning-conjunctions and from
  ;; create-short-conjunction-edge-if-possible
  (when *trace-conjunction-algorithm*
    (trace-msg "[conj] They conjoined to form e~a"
               (edge-position-in-resource-array edge))))

(deftrace :reset-edge-before-comma (edge-before)
  ;; called from look-for-possible-conjunction
  (when *trace-conjunction-algorithm*
    (trace-msg "[conj] moved over comma: ~a" edge-before)))

(deftrace :checking-conj (left-edge right-edge)
  ;; called from look-for-possible-conjunction
  (when *trace-conjunction-algorithm*
    (trace-msg "[conj]   considering conjoining ~a and ~a"
               left-edge right-edge)))

(deftrace :turning-off-conj-flag-w/o-any-action ()
  ;; called from sf-action/no-edges
  (when *trace-conjunction-algorithm*
    (trace-msg "[conj] turning off the flag w/o actions. seg.start=p~A"
               (pos-token-index *left-segment-boundary*))))



;;;----------------------------------------------------
;;; the 'hook', notes whether conjunction is triggered
;;;----------------------------------------------------



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

(deftrace :calling-conj-checkout-routine-at (pos)
  ;; called from look-for-possible-conjunction
  (when *trace-conjunction-hook*
    (trace-msg "[conj] reacting to the conjunction at ~A" pos)))



(deftrace :looking-for-short-conjuncts ()
  ;; called from island-driven-forest-parse
  (when (or *trace-island-driving* *trace-conjunction-hook*)
    (trace-msg "Pass1: Looking for conjunctions over. 1st check")))

(deftrace :try-spanning-conjunctions ()
  ;; called from run-island-checks
  (when (or *trace-island-driving* *trace-conjunction-hook*)
    (trace-msg "Pass1: Checking for vg form conjunctions")))

(deftrace :try-spanning-conjunctions-again ()
  ;; called from run-island-checks
  (when (or *trace-island-driving* *trace-conjunction-hook*)
    (trace-msg "Pass1: Final conjunction check after whack cycle")))

(deftrace :submerged-check (edge-before edge-after)
  ;; called from look-for-submerged-matching-conj-edge
  (when *trace-conjunction-hook*
    (trace-msg "Submerged check:~%   ~a~%   ~a"
               edge-before edge-after)))

(deftrace :try-spanning-conjunctions-pass2 ()
  ;; called from new-pass2
  (when (or *trace-island-driving* *trace-conjunction-hook*)
    (trace-msg "Pass2 conjunction check")))


;;;-------------------------------------------------
;;; announce edges formed by conjunction operations
;;;-------------------------------------------------

(defvar *trace-conjunction-edges* nil)

(defun trace-conjunction-edges ()
  (setq *trace-conjunction-edges* t))

(defun untrace-conjunction-edges ()
  (setq *trace-conjunction-edges* nil))

(deftrace :conjoining-two-edges (edge left-edge right-edge heuristic)
  ;; called from Conjoin-two-edges
  (when *trace-conjunction-edges*
    (trace-msg "[conj] conjoined ~a and ~a~
              ~%    to form ~a based on ~a"
	       left-edge right-edge edge heuristic)))


(deftrace :conjoining-multiple-edges/comma (edge)
  ;; called from Conjoin-multiple-edges
   (when *trace-conjunction-edges*
    (trace-msg "[conj] conjoined multiple comma-separated edges~
              ~%    to form ~a" edge)))




(deftrace :conjoined-edge (edge left-edge right-edge)
  ;; called from look-for-short-obvious-conjunctions
  ;; and try-spanning-conjunctions
  (when (or *trace-island-driving* *trace-conjunction-edges*)
    (trace-msg "[islands]  e~a & e~a conjoined to form e~a"
               (edge-position-in-resource-array left-edge)
               (edge-position-in-resource-array right-edge)
               (edge-position-in-resource-array edge))))


;;--- orginally in treetops traces


(deftrace :no-heuristics-for (left right)
  ;; called from try-spanning-conjunctions
  (when (or *trace-island-driving* *trace-conjunction-algorithm*)
    (trace-msg "[islands] no heuristic for composing e~a and e~a"
               (edge-position-in-resource-array left)
               (edge-position-in-resource-array right))))

(deftrace :no-conjunction-edges ()
  ;; called from try-spanning-conjunctions
  (when (or *trace-island-driving* *trace-conjunction-algorithm*)
    (trace-msg "[islands] There are no conjunction edges")))


(deftrace :looking-at-conj-edge (conj-edge)
  ;; called from try-spanning-conjunctions
  (when (or *trace-island-driving* *trace-conjunction-algorithm*)
    (trace-msg "[islands] Looking around ~a" conj-edge)))

(deftrace :new-conjunction-pattern ()
  ;; called from try-spanning-conjunctions
  (when (or *trace-island-driving* *trace-conjunction-algorithm*)
    (trace-msg "[islands] new arrangement of conjuncts")))

(deftrace :trying-to-conjoin (e1 e2)
  ;; called from try-spanning-conjunctions
  ;; and look-for-short-obvious-conjunctions
  (when (or *trace-island-driving* *trace-conjunction-algorithm*)
    (trace-msg "Trying to conjoin  e~a and e~a"
               (edge-position-in-resource-array e1)
               (edge-position-in-resource-array e2))))

(deftrace :no-conjunction-heuristics-applied ()
  ;; called from try-spanning-conjunctions
  (when (or *trace-island-driving* *trace-conjunction-algorithm*)
    (trace-msg "  No conjunction heuristics applied")))

(deftrace :two-conjuncts-not-consistent ()
  ;; called from try-spanning-conjunctions
  (when (or *trace-island-driving* *trace-conjunction-algorithm*)
    (trace-msg "[islands]   The two aligned conjuncts aren't consistent")))

(deftrace :different-two-conjunction-pattern ()
  ;; called from try-spanning-conjunctions
  (when (or *trace-island-driving* *trace-conjunction-algorithm*)
    (trace-msg "[islands]   New pattern of two conjunctions")))


(deftrace :looking-for-list-conj (left)
  ;; called from search-for-list-conjunction
  (when *trace-conjunction-algorithm*
    (trace-msg "[conj] Looking for list conjunction at ~a" left)))

(deftrace :no-list-conj ()
  ;; called from search-for-list-conjunction
  (when *trace-conjunction-algorithm*
    (trace-msg "[conj]  didn't find one")))

(deftrace :extended-conjunction (new-edge)
  ;; called from seg-before-conjoins
  (when *trace-conjunction-algorithm*
    (trace-msg "[conj] added ~a to list" new-edge)))
