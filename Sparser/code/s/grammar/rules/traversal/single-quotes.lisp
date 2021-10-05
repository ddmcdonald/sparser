;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:(SPARSER LISP) -*-
;;; copyright (c) 2021 David D. McDonald  -- all rights reserved
;;; 
;;;     File:  "single-quotes"
;;;   Module:  "grammar;rules:traversal:"
;;;  Version:  October 2021

;; Initiated 10/5/21 breaking the stub out from rules/fsas/single-quote.lisp

(in-package :sparser)

;;;--------------------------
;;; paired punctuation setup
;;;--------------------------

(set-traversal-action word::single-quote 'notice-single-quote)

(defun notice-single-quote (quote-position next-position)
  "Manage the flag"
  (declare (special *pending-single-quote*))
  (cond
    (*pending-single-quote* ; second instance
     (span-single-quotation quote-position next-position))
    ((single-quote-could-start-span? quote-position) ; first instance
     (tr :single-start-span quote-position)
     (setup-single-quote-span-start quote-position))
    (t (tr :single-new-situation quote-position)
       nil)))


(defun single-quote-could-start-span? (position)
  "There should be a single-quote (apostrophe) on this position.
   If there is whitespace in front of it then this instance will not
   participate in any normal apostrophe function like constractions"
  ;; it's usually one-space, but not clear that we care yet
  (pos-preceding-whitespace position))

(defun setup-single-quote-span-start (start-pos)
  "This position has *single-quote* on it"
  (declare (special *pending-single-quote*))
  (tr :single-start-span start-pos)
  (setq *pending-single-quote* start-pos)
  (chart-position-after start-pos))

(defun span-single-quotation (pos-before-close ; pos of the #\'
                              pos-after-close)
  "Pass the span of text through do-paired-punctuation-interior
   where it will get parsed and assessed. Adjudicating where it
   goes in the chart is done by the call from there to
   handle-single-quotes-span"
  (declare (special *pending-single-quote*))
  (tr :single-end-span pos-before-close)
  (let* ((start-pos *pending-single-quote*)
         (pos-before-open start-pos)
         (pos-after-open (chart-position-after start-pos)))
    (setq *pending-single-quote* nil)
    (do-paired-punctuation-interior 
	  :single-quotation-marks
	  pos-before-open pos-after-open
	  pos-before-close pos-after-close)))
 

(defun handle-single-quotes-span (layout
                                  pos-before-open pos-after-close
                                  pos-after-open pos-before-close)
  "Experimenting with not convering this with a span as we presently do
   for parentheses. Instead creating a vacuous edge to mark what we
   have, but 'hiding' it by stashing it on the marker field of the
   bounding edge vectors and 'expanding' the left and right edges to
   swallow the single-quotes and hide them from chart parsing.
     We use the length to heuristically decided what sort of function
   the quotations have and thereby the choice of category on the
   blank edge"
  (declare (ignore layout) (special *pending-double-quote*))
  (push-debug `(,pos-before-open ,pos-after-open
                ,pos-before-close ,pos-after-close))
  (when (car *pending-double-quote*)
    (break "paired single quotation inside double quotation"))

  (let ((length (number-of-terminals-between
                 pos-after-open pos-before-close))
        (first-edge (right-treetop-at/edge pos-after-open))
        (last-edge (left-treetop-at/edge pos-before-close))
        (start-ev (pos-starts-here pos-before-open))
        (end-ev (pos-ends-here pos-after-close)))
    (push-debug `(,first-edge ,last-edge ,length))
    ;; Move boundary edge over punctuation.
    (knit-edge-into-position first-edge start-ev)
    (setf (edge-starts-at first-edge) start-ev)
    (knit-edge-into-position last-edge end-ev)
    (setf (edge-ends-at last-edge) end-ev)
    (push-debug `(,start-ev ,end-ev))
    ;;(break "check knitting. start ~a  end ~a" pos-before-open pos-after-close)

    ;; even with do-not-knit edge still goes through complete
    ;; aand assess-edge-label
    (let ((edge (make-chart-edge
                 :starting-position pos-before-open
                 :ending-position pos-after-close
                 :category (category-named 'quotation)
                 :form (category-named 'quotation)
                 :referent (edge-referent first-edge) ; dummy
                 :words (words-between pos-after-open pos-before-close)
                 :rule-name 'handle-single-quotes-span
                 :do-not-knit t
                 :ignore-used-in t)))          
      (setf (ev-marker start-ev) `(,edge :start :ends-at ,end-ev))
      (setf (ev-marker end-ev) `(,edge :ends :starts-at ,start-ev))

      edge)))

 
