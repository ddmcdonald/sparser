;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:SPARSER -*-
;;; copyright (c) 2021 David D. McDonald  -- all rights reserved
;;; 
;;;     File:  "traversal"
;;;   Module:  "objects;traces:"
;;;  Version:  October 2021

;; created 10/5/21 to consolidate traces over traversal routines

(in-package :sparser)

;;--- parentheses

(defvar *trace-parentheses* nil
  "Flag read in the parentheses traversal routines")

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


;;---- single-quotes

(defvar *trace-single-quotes* nil)
(defun trace-single-quotes ()
  (setq  *trace-single-quotes* t))
(defun untrace-single-quotes ()
  (setq  *trace-single-quotes* nil))


(deftrace :single-start-span (p)
  ;; called from notice-single-quote
  (when *trace-single-quotes*
    (trace-msg "Starting a single-quote span at p~a" (pos-token-index p))))

(deftrace :single-end-span (p)
  ;; called from span-single-quotation
  (when *trace-single-quotes*
    (trace-msg "[FSA: single-quote-span ends a p~a" (pos-token-index p))))
               
(deftrace :single-new-situation (p)
  ;; called from notice-single-quote
  (when *trace-single-quotes*
    (trace-msg "Single-quote: Unclassified context at p~a" (pos-token-index p))))
  
