;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:SPARSER -*-
;;; copyright (c) 2021 David D. McDonald  -- all rights reserved
;;; 
;;;     File:  "traversal"
;;;   Module:  "objects;traces:"
;;;  Version:  December 2021

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

(defvar *trace-single-quote-spans* nil
  "Just the minimal information of setting the flag
   and making edges")
(defun trace-single-quotes ()
  (setq *trace-single-quote-spans* t))
(defun untrace-single-quote ()
  (setq *trace-single-quote-spans* nil))

(defvar *trace-single-quotes* nil
  "Tracks every interaction involving #\' particularly
   in apostophy handling, and inside the paired punct handler")
(defun trace-single-quote-interactions ()
  (setq  *trace-single-quotes* t))
(defun untrace-single-quote-interactions ()
  (setq  *trace-single-quotes* nil))

(deftrace :single-start-span (p)
  ;; called from notice-single-quote
  (when (or *trace-single-quotes* *trace-single-quote-spans*)
    (trace-msg "Starting a single-quote span at p~a" (pos-token-index p))))

(deftrace :single-end-span (p)
  ;; called from span-single-quotation
  (when (or *trace-single-quotes* *trace-single-quote-spans*)
    (trace-msg "single-quote-span ends at p~a" (pos-token-index p))))
               
(deftrace :single-new-situation (p)
  ;; called from notice-single-quote
  (when (or *trace-single-quotes* *trace-single-quote-spans*)
    (trace-msg "Single-quote: Unclassified context at p~a" (pos-token-index p))))

(deftrace :single-start-equals-end (pos)
  ;; called from notice-single-quote
  (when (or *trace-single-quotes* *trace-single-quote-spans*)
    (trace-msg "Single: Open &፡ close positions are equal: ~a" pos)))

(deftrace :single-quote-span-over (string)
  ;; called from handle-single-quotes-span
  (when (or *trace-single-quotes* *trace-single-quote-spans*)
    (trace-msg "Single-quote: putting edge over ~s" string)))

(deftrace :single-spanning-edge-over-span (edge spanned)
  ;; called from handle-single-quotes-span
  (when (or *trace-single-quotes* *trace-single-quote-spans*)
    (trace-msg "Single-quote: putting edge e~a over ~s"
               (edge-position-in-resource-array edge)
               spanned)))

