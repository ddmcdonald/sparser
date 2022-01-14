;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:(SPARSER LISP) -*-
;;; copyright (c) 2021 David D. McDonald  -- all rights reserved
;;; 
;;;     File:  "single-quotes"
;;;   Module:  "grammar;rules:traversal:"
;;;  Version:  December 2021

;; Initiated 10/5/21 breaking the stub out from rules/fsas/single-quote.lisp

(in-package :sparser)

;;;--------------------------
;;; paired punctuation setup
;;;--------------------------

;; (trace-single-quotes)

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


(defun single-quote-could-start-span? (position-of-quote)
  "There should be a single-quote (apostrophe) on this position.
   If there is whitespace in front of it then this instance will not
   participate in any normal apostrophe function like constractions"
  ;; it's usually one-space, but not clear that we care yet
  (let ((prior-position (chart-position-before position-of-quote)))
    (or (pos-preceding-whitespace position-of-quote)
        (eq (pos-capitalization prior-position) :punctuation)))) ; e.g open paren
      

(defun setup-single-quote-span-start (start-pos)
  "This position has *single-quote* on it"
  (declare (special *pending-single-quote*))
  (setq *pending-single-quote* start-pos)
  (chart-position-after start-pos))

(defun span-single-quotation (pos-before-close ; pos of the #\'
                              pos-after-close)
  "Pass the span of text through do-paired-punctuation-interior
   where it will get parsed and assessed. Adjudicating where it
   goes in the chart is done by the call from there to
   handle-single-quotes-span"
  (declare (special *pending-single-quote* *in-scope-of-apostrophe-fsa*))
  (tr :single-end-span pos-before-close)
  (let* ((start-pos *pending-single-quote*)
         (pos-before-open start-pos)
         (pos-after-open (chart-position-after start-pos)))
    (setq *pending-single-quote* nil)

    (unless (eq start-pos pos-before-close) ; nothing between them

      (when *in-scope-of-apostrophe-fsa*
        (terminal-edges-sweep pos-after-open pos-before-close))

      (do-paired-punctuation-interior 
	  :single-quotation-marks
          pos-before-open pos-after-open
	  pos-before-close pos-after-close))))
 

(defun handle-single-quotes-span (layout
                                  pos-before-open pos-after-close
                                  pos-after-open pos-before-close)
  "Called from do-paired-punctuation-interior after interior is been done.
   Experimenting with not convering this with a span as we presently do
   for parentheses. Instead creating an edge to mark what we
   have, but 'hiding' it by stashing it on the marker field of the
   bounding edge vectors and 'expanding' the left and right edges to
   swallow the single-quotes and hide them from chart parsing.
     We use the length to heuristically decided what sort of function
   the quotations have and thereby the choice of category on the
   blank edge"
  ;; 5/8/21 Not hiding the edges. Needs conceptual rethink
  (declare (ignore layout)
           (special *pending-double-quote* *in-scope-of-apostrophe-fsa*))
  (push-debug `(,pos-before-open ,pos-after-open
                                 ,pos-before-close ,pos-after-close))
  
  (when (eq pos-after-open pos-after-close)
    ;; We're usually invoked from apostorphe-fsa which runs earlier in the
    ;; successive-sweeps. A lot of our state information is examined there
    ;; If that's not our calling source and we're invoked later in the
    ;; parenthesis word-traversal hook phase, we get occasional weird
    ;; results like this one.
    ;;/// recurring case is abbreviation, e.g. 'cause for because
    (when *in-scope-of-apostrophe-fsa*
      (break "got idential positions but apostrophe flag is up"))
    (tr :single-start-equals-end pos-after-open)
    (return-from handle-single-quotes-span (chart-position-after pos-after-close)))

  (let ((length (number-of-terminals-between pos-after-open pos-before-close))
        (spanned (extract-characters-between-positions pos-after-open pos-before-close))
        (first-edge (right-treetop-at/edge pos-after-open))
        (last-edge (left-treetop-at/edge pos-before-close))
        (start-ev (pos-starts-here pos-before-open))
        (end-ev (pos-ends-here pos-after-close)))
    (push-debug `(,first-edge ,last-edge ,length))
    ;; (tr :single-quote-span-over spanned)

    ;; The boundaries of the edge we make should incorporate the single quotes
    (when (edge-p first-edge)
      (knit-edge-into-position first-edge start-ev)
      (setf (edge-starts-at first-edge) start-ev))
    (when (edge-p last-edge) ; vs. a question mark
      ;; e.g. 'Did you eat yet?'
      (knit-edge-into-position last-edge end-ev)
      (setf (edge-ends-at last-edge) end-ev))
    ;;(push-debug `(,start-ev ,end-ev))
    ;;(break "check knitting. start ~a  end ~a" pos-before-open pos-after-close)

    (let ((edge (make-chart-edge
                 ;; N.b. even with do-not-knit edge still goes through complete
                 ;; and assess-edge-label
                 :starting-position pos-before-open
                 :ending-position pos-after-close
                 :category (category-named 'quotation)
                 :form (category-named 'quotation)
                 :referent (if (edge-p first-edge) ; putting edge over "Amn't I?"
                             (edge-referent first-edge) ; dummy
                             first-edge)
                 :words (words-between pos-after-open pos-before-close)
                 :rule-name 'handle-single-quotes-span
                 :do-not-knit nil ;; edge will be visible
                 :ignore-used-in t)))
      ;; Later sweeps have to see this edge, so we can't submerge it
      ;; right now
      ;;(setf (ev-marker start-ev) `(,edge :start :ends-at ,end-ev))
      ;;(setf (ev-marker end-ev) `(,edge :ends :starts-at ,start-ev))
      (tr :single-spanning-edge-over-span edge spanned)

      ;; We may have been called from the apostrophe fsa
      ;; and it has to return a position
      (chart-position-after pos-after-close))))

 
