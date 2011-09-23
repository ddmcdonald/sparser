;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:SPARSER -*-
;;; copyright (c) 1992,1993,1994,1995  David D. McDonald  -- all rights reserved
;;; 
;;;     File:  "quotations"
;;;   Module:  "grammar;rules:syntax:"
;;;  Version:  July 1991

;; initiated 7/11/91
;; 0.1 (12/15/93 v2.3) fixed initialization bug
;; 0.2 (9/20/95) added a hook off the first edge

(in-package :sparser)

;;;----------
;;; category
;;;----------

(def-category  quotation :lattice-position :non-terminal)

;;;-------------------
;;; traversal actions
;;;-------------------

(set-traversal-action  word::double-quote  'check-quotation)

(defun check-quotation (start-pos end-pos)
  (if (car *pending-double-quote*)
    (span-quotation start-pos end-pos)
    (mark-initial-quotation-mark start-pos end-pos)))


;;;-----------------------
;;; getting the work done
;;;-----------------------

(defun mark-initial-quotation-mark (pos-before pos-after)
  ;; the state is given as a pair of positions to allow for the
  ;; ertzatz quotation marks that are given as ``...'' and so
  ;; take up more than one position.   This routine can be called
  ;; from an fsa that finds such patterns and its operation should
  ;; be transparent.
  (rplaca *pending-double-quote* pos-before)
  (rplacd *pending-double-quote* pos-after))



(defun span-quotation (pos-before-end-quote
                       pos-after-end-quote)

  (let ((pos-before-start-quote (car *pending-double-quote*))
        (pos-after-start-quote  (cdr *pending-double-quote*)))
    
    (do-paired-punctuation-interior :quotation-marks
                                    pos-before-start-quote
                                    pos-after-start-quote
                                    pos-before-end-quote
                                    pos-after-end-quote)

    (rplaca *pending-double-quote* nil)))

