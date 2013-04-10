;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:SPARSER -*-
;;; copyright (c) 1993,2013  David D. McDonald  -- all rights reserved
;;; extensions copyright (c) 2007 BBNT Solutions LLC. All Rights Reserved
;;; $Id:$
;;;
;;;     File:  "subject relatives"
;;;   Module:  "model;rules:syntax:"
;;;  version:  April 2013

;; initiated 6/18/93 v2.3
;; (8/9/07) Well something else can go in this file, but just now this
;; version of the rule for "who" is winning over the richer on just introduced
;; by WH-word-semantics when the interaction is driven by a form rule that's
;; keyed off of the two edges' pronoun label. 
;; 0.1 (1/1/08) Trying to do it using context to determine whether the
;;  function of a specific prounoun is relative or interogative.
;; 0.2 (4/9/13) Throwing that over in favor of a completion rule

(in-package :sparser)

;;--- One-off treatment for subject relatives. 
;; Needs generalization for other wh terms. They are individuals, so commonalities
;; could be done by method dispatch off their shadows. 

;; (setq *trace-completion-hook* t)

(define-completion-action category::who ;; label
                          :look-for-rc-head
  'who-subject-relative-clause-operation)

(inhibit-completion-when-subsumes category::who)


(defun who-subject-relative-clause-operation (wh-edge)
  (let* ((start-pos (pos-edge-starts-at wh-edge))
         (end-pos (pos-edge-ends-at wh-edge))
         (leftward-tt (left-treetop-at start-pos)))
    ;; If there is an NP to our immediate left,
    ;; then respan the wh word with the referent of the NP

    ;; Either a syntactic rule or a form-rule can compose
    ;; the new spanning edge that we create with the VP
    ;; that's to its right.

    (when (word-p leftward-tt)
      ;; //// swallow comma
      (push-debug `(,wh-edge ,leftward-tt))
      (break "stub -- is this a comma? ~a" leftward-tt)
      (setq start-pos (chart-position-before start-pos))
      (setq leftward-tt (left-treetop-at start-pos)))

    (when (edge-p leftward-tt)
      ;; if it's two words in a row then this simple scheme
      ;; won't work and we should punt in favor of some DA rule
      (when (noun-category? leftward-tt)
        (let ((np-referent (edge-referent leftward-tt))
              (start-ev (pos-starts-here start-pos))
              (end-ev (pos-ends-here end-pos)))
          (let ((edge
                 (make-completed-unary-edge
                  start-ev end-ev
                  nil ;; rule
                  wh-edge ;; daughter
                  category::who ;; category
                  category::wh-pronoun ;; form
                  np-referent))) ;; referent
            (push-debug `(,edge))
            edge))))))


(defun compose-wh-with-vp (wh-referent predicate-referent)
  ;; We've just completed the composition of a wh term and
  ;; the vp (probably labeled as an s) to its right. That
  ;; edge has already been created, and is bound to the
  ;; global in referent from rule.
  ;; We're providing the referent to that edge as our
  ;; return value, and we want to record the subj+verb relation
  ;; and any other relations that make sense given the
  ;; particulars of the predicate. 
  (declare (special *parent-edge-getting-reference*))
  (let ((parent *parent-edge-getting-reference*)
        ;; renaming to help make things clear
        (subject wh-referent)
        (event predicate-referent))
    (push-debug `(,subject ,event ,parent))

    (add-subject-relation event subject)

    ;; Referent of the whole edge is the referent of the
    ;; predicate, now with a binding to reflect the relationship
    ;; to the subject (... or should it be called something else?)
    event))

(defun add-subject-relation (event subject)
  ;;/// where should these go?
  (push-debug `(,subject ,event))
  nil)


(defun assimilate-appositive (np appositive) ;; their referent
  ;; The case in point is the relative clause in *iraqi-girl*,
  ;; but this ought to apply to any post-nominal phrase, particularly
  ;; verb-centric reduced relatives. 
  ;; Given that the trace/wh is in subject position, then 
  ;; anything that's established about the event / predicate
  ;; also applies to the np (particularly the event's time
  ;; and location) and the participation in the event per se.
  (push-debug `(,np ,appositive))
  (when (itypep appositive 'event)
    ;; Setup the event relation
    ;; Copy up time, location, and anything else that's
    ;; to the point
    )
  ;; referent of the combination is the np's referent
  np)



