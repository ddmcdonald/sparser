;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:SPARSER -*-
;;; copyright (c) 1991-1996,2011-2015 David D. McDonald  -- all rights reserved
;;; extensions copyright (c) 2007-2009 BBNT Solutions LLC. All Rights Reserved
;;; 
;;;     File:  "parentheses"
;;;   Module:  "grammar;rules:traversal:"
;;;  Version:  0.6 August 2015
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
;;      where arrow is expressed as an open-paren. 8/7/15 tweaked naming of
;;      special for hiding parentheses.
;;     (8/9/15) moved assess-parenthesized-content here and pulled
;;      paren hding to be part of that.


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

(defun mark-open-paren (pos-before-open pos-after-open)
  (declare (ignore pos-after-open))
  (unless *ignore-parentheses*
    (if *position-of-pending-open-paren*
      ;; Then we're already inside an open parenthesis
      (then 
       ;; condition this break?  Happens in Larry Hunter's book
       ;; where the arrow of a chemical equation is expressed
       ;; as an open paren
       ;;(break "double parens")
       (when *permit-extra-open-parens*
         (push *position-of-pending-open-paren*
               *pending-open-paren-stack*))
       (setq *position-of-pending-open-paren* pos-before-open))
      (else
       (tr :open-paren-seen pos-before-open)
       (setq *position-of-pending-open-paren* pos-before-open)))))



(defun span-parentheses (pos-before-close pos-after-close)
  (unless *ignore-parentheses*
    (tr :close-paren-seen pos-before-close)
    
    (let* ((open-pos *position-of-pending-open-paren*)
           (pos-after-open (when open-pos (chart-position-after open-pos))))
      (setq *position-of-pending-open-paren*
            (when *pending-open-paren-stack*
              (pop *pending-open-paren-stack*)))
      
      (unless open-pos
        ;;(if *break-on-pattern-outside-coverage?*
        ;;  (break/debug "Can't find matching open paren")
        ;;  (else
        (tr :matching-open-paren-not-found)
        (return-from span-parentheses nil))
      
      (tr :matching-open-is-at open-pos)
      
      (do-paired-punctuation-interior :parentheses
				      open-pos ;; just before the open
				      pos-after-open
				      pos-before-close 
				      pos-after-close) ;; just after the close
      
      (let ((edge (top-edge-starting-at open-pos)))
        ;; this will be the edge produced by the paired-punct hook

        (assess-parenthesized-content edge
                                      open-pos pos-after-open
                                      pos-before-close pos-after-close)
	
        (edge-interaction-with-quiescence-check edge)

        (tr :parenthesis-edge edge)
        edge ))))

