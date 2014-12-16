;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:SPARSER -*-
;;; copyright (c) 1991-1996,2011-2014 David D. McDonald  -- all rights reserved
;;; extensions copyright (c) 2007-2009 BBNT Solutions LLC. All Rights Reserved
;;; 
;;;     File:  "parentheses"
;;;   Module:  "grammar;rules:traversal:"
;;;  Version:  0.6 June2014
; 
;; initiated 5/1/91, v1.8.4
;; 0.1 (5/15/94) flushed the segment-start hack
;; 0.2 (10/31) handling an interaction with the forest-level parse
;; 0.3 (9/20/95) put in a hook.
;; 0.4 (7/11/96) provided a pretty general routine using the hook
;;     (2/23/07) dropped the guarded check for a missing open.
;; 0.5 (8/31/09) Broke out the capitalized-word hook into its own file so that
;;     it could be gated by *proper-name*. 8/28/11 cleaned up.
;; 0.6 (6/4/14) Added *permit-extra-open-parens* flag to accommodate bio text
;;      where arrow is expressed as an open-paren.

(in-package :sparser)

;;;----------
;;; category
;;;----------

(def-category  parentheses :lattice-position :non-terminal)
 ;; Provide a label to use for the span when no hook provides a better one.



;;;-----------------------------------
;;; standard paired punctuation setup
;;;-----------------------------------

(set-traversal-action  word::open-paren  'mark-open-paren)
(set-traversal-action  word::close-paren 'span-parentheses)

(defparameter *pending-open-paren-stack* nil)

(defparameter *permit-extra-open-parens* nil)

(defun mark-open-paren (start-pos end-pos)
  (declare (ignore end-pos))
  (unless *ignore-parentheses*
    (if *position-of-pending-open-paren*
      ;; Then we're already inside an open parenthesis
      (then 
       ;; condition this break?  Happens in Larry Hunter's book
       ;; where the arrow of a chemical equation is expressed
       ;; as an open paren
       ;;(break "double parens")
       (unless *permit-extra-open-parens*
         (push *position-of-pending-open-paren*
               *pending-open-paren-stack*))
       (setq *position-of-pending-open-paren* start-pos))
      (else
       (tr :open-paren-seen start-pos)
       (setq *position-of-pending-open-paren* start-pos)))))



(defun span-parentheses (start-pos end-pos)
  (declare (special hide-parentheses))
  (unless *ignore-parentheses*
    (tr :close-paren-seen start-pos)
    
    (let ((open-pos *position-of-pending-open-paren*))
      (setq *position-of-pending-open-paren*
            (if *pending-open-paren-stack*
		       (pop *pending-open-paren-stack*)
               nil))
      
      (unless open-pos
        ;;(if *break-on-pattern-outside-coverage?*
        ;;  (break/debug "Can't find matching open paren")
        ;;  (else
        (tr :matching-open-paren-not-found)
        (return-from span-parentheses nil))
      
      (tr :matching-open-is-at open-pos)
      
      (do-paired-punctuation-interior :parentheses
				      open-pos
				      (chart-position-after open-pos)
				      start-pos
				      end-pos)
      
      (let ((edge (top-edge-starting-at open-pos)))
        ;; this will be the edge produced by the paired-punct hook
	
        (edge-interaction-with-quiescence-check edge)

        (when hide-parentheses
          ;;/// should also record the position of the parentheses
          ;; in case a second pass considers them.
          (hide-parenthesis-edge-at-pos edge open-pos))
        (tr :parenthesis-edge edge)
        edge ))))

(defun hide-parenthesis-edge-at-pos (paren-edge open-pos)
  ;; Edge spans from the open paren to the close inclusive.
  ;; Open-pos is the position between that edge and the word/edge
  ;; to its left.
  (push-debug `(,paren-edge ,open-pos))
  (let ((edge-to-immediate-left (left-treetop-at/edge open-pos)))
    (unless edge-to-immediate-left
      (error "hide parenthesis: new situation, no edge to the left"))
    (let ((paren-ends-at (edge-ends-at paren-edge)))
          ;;(neighbor-ends-at (edge-ends-at edge-to-immediate-left)))
      (setf (edge-ends-at edge-to-immediate-left) paren-ends-at)
      (knit-edge-into-position edge-to-immediate-left paren-ends-at)
      (push-debug `(,edge-to-immediate-left)) 
      ;;(break "is the edge hidden?")
)))



;;;--------
;;; traces
;;;--------

(defun trace-parentheses ()
  (setq *trace-parentheses* t))

(defun untrace-parentheses ()
  (setq *trace-parentheses* nil))


(deftrace :open-paren-seen (start-pos)
  ;; called from mark-open-paren
  (when *trace-parentheses*
    (trace-msg "Marking the position of an open paren a p~A"
               (pos-token-index start-pos))))

(deftrace :close-paren-seen (start-pos)
  ;; called from span-parentheses
  (when *trace-parentheses*
    (trace-msg "Close paren seen at p~A" (pos-token-index start-pos))))

(deftrace :matching-open-paren-not-found ()
  ;; called from span-parentheses
  (when *trace-parentheses*
    (trace-msg "   But the global pointing to its matching open parenthesis~
              ~%   is nil.  Taking no action")))

(deftrace :matching-open-is-at (open-pos)
  (when *trace-parentheses*
    (trace-msg "   The open parenthesis is at p~A"
               (pos-token-index open-pos))))

(deftrace :parenthesis-edge (edge)
  (when *trace-parentheses*
    (trace-msg "   Formed ~A" edge)))
