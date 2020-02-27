;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:SPARSER -*-
;;; copyright (c) 1995,2011,2019  David D. McDonald  -- all rights reserved
;;; 
;;;     File:  "DA"
;;;   Module:  "objects;traces:"
;;;  Version:  December 2019

;; initiated 5/5/95.  Elaborated ..5/19. 11/3/11 added missing trace.

(in-package :sparser)

(defparameter *trace-DA-check* nil) ;; does anything apply?
(defun trace-da-hook ()
  (setq *trace-DA-check* t))
(defun untrace-da-hook ()
  (setq *trace-DA-check* nil))

;; useful combination
(defun trace-da-question ()
  (declare (special *debug-questions* *show-wh-problems*))
  (trace-da-hook) (trace-da-execution)
  (trace-questions) (setq *debug-questions* t)
  (setq *show-wh-problems* t))
(defun untrace-da-question ()
  (declare (special *debug-questions* *show-wh-problems*))
  (untrace-da-hook) (untrace-da-execution)
  (untrace-questions) (setq *debug-questions* nil)
   (setq *show-wh-problems* nil))

(defparameter *trace-DA* nil) ;; walking through the trie
(defun trace-da ()
  (setq *trace-DA* t))
(defun untrace-da ()
  (setq *trace-DA* nil))

(defvar *da-execution* nil) ;; tracking the result
(defun trace-da-execution ()
  (setq *da-execution* t))
(defun untrace-da-execution ()
  (setq *da-execution* nil))


;;---- checking whether pattern applies

(deftrace :beginning-da (starting-point)
  ;; called from consider-debris-analysis
  (when *trace-DA-check*
    (trace-msg "Beginning Debris analysis at p~a"
               (pos-token-index starting-point))))

(deftrace :ignoring-debris-analysis ()
  ;; called from consider-debris-analysis
  (when *trace-DA-check*
    (trace-msg "-- skipping over debris analysis stage")))


(deftrace :looking-for-da-pattern-between (start-pos end-pos)
  ;; called from Look-for-DA-patterns
  (when *trace-DA-check*
    (trace-msg "DA looking between p~A and p~A"
               (pos-token-index start-pos)
               (pos-token-index end-pos))))

(deftrace :DA-dispatch (pos-before tt)
  ;; called from Look-for-and-execute-any-DA-pattern
  (when *trace-DA-check*
    (trace-msg "[DA check] reached p~A - ~A"
               (pos-token-index pos-before) tt)))

(deftrace :resuming-DA-walk-at (next-pos-to-check)
  ;; called from Execute-da-trie and Execute-trie-middle-out
  (when *trace-DA-check*
    (trace-msg "[DA check] Resuming treetop walk at p~A"
               (pos-token-index next-pos-to-check))))

(deftrace :no-da-pattern-started-by (tt)
  ;; called from Look-for-DA-patterns
  (when *trace-DA-check*
    (trace-msg "[DA check]     no rule for ~A" tt)))

(deftrace :starts-da-pattern-with (tt)
  ;; called from Look-for-DA-patterns
  (when *trace-DA-check*
    (trace-msg "[DA check] ~A starts a DA pattern" tt)))

(deftrace :starts-da-pattern/middle-out (tt)
  ;; called from Look-for-DA-patterns
  (when *trace-DA-check*
    (trace-msg "[DA check] ~A starts a Middle-Out DA pattern" tt)))


(deftrace :da-pattern-not-matched ()
  ;; called from Execute-da-trie
  (when *trace-DA-check*
    (trace-msg "[DA check]     The pattern didn't match")))

(deftrace :da-pattern-matched (rule)
  ;; Called from standardized-apply-da-function-action
  (when *trace-DA-check*
    (trace-msg "[DA] pattern matched ~a" rule)))


;;;--- Tracing the walk through the trie

(deftrace :checking-extension-from (vertex tt)
  ;; called from check-for-extension-from-vertex
  (when *trace-DA*
    (trace-msg "[DA] Checking whether ~A (~a)~
              ~%     extends any of the options from ~A"
               tt (when (edge-p tt) (form-cat-name tt)) vertex)
    ;(pl (vertex-rightward-extensions vertex) t *trace-stream*)
    ))

(deftrace :da-match-extends (matches)
  ;; called from Check-for-extension-from-vertex
  (when *trace-DA*
    (trace-msg "      It does: ~d match/s"
               (length matches))))

(deftrace :da-didnt-match-any-arc ()
  ;; called from Check-for-extension-from-vertex
  (when *trace-DA*
    (trace-msg "      no match against any of the arcs")))

(deftrace :next-da-vertex (vertex)
  ;; called from Follow-out-matched-arc
  (when *trace-DA*
    (trace-msg "The next vertex in the DA-trie is ~A~
              ~%    It is a ~A"
               vertex (etypecase vertex
                        (end-vertex "end vertex")
                        (vertex "continuing vertex")
                        (start-vertex "start vertex")))))


(deftrace :da-pattern-matched (rule)
  ;; called from Accept-pattern
  (when *trace-DA*
    (trace-msg "[DA] matched the pattern of ~A~%~%" rule)))



(deftrace :arc-matches-tt? (arc tt)
  ;; called from Arc-matches-tt?
  (declare (ignore tt))
  (when *trace-DA*
    (trace-msg "[DA]  Checking ~a" arc)
    #+ignore
    (trace-msg "[DA]      Checking ~A~
              ~%          against ~A" arc tt)))

(deftrace ::arc-matches-tt?/matches ()
  ;; called from Arc-matches-tt?
  (when *trace-DA*
    (trace-msg "[DA]       It matches")))

(deftrace ::arc-matches-tt?/no-match ()
  ;; called from Arc-matches-tt?
  (when *trace-DA*
    (trace-msg "[DA]       They don't match")))


;;----- action application

(deftrace :da-executing-action (rule)
  (when *da-execution*
    (trace-msg "[DA] executing rule on ~a" rule)))

(deftrace :da-applying-fn-to-args (function args)
  ;; Called from standardized-apply-da-function-action
  (when *da-execution*
    (trace-msg "[DA] applying ~a to ~a" function args)))

(deftrace :da-edge-spec (spec)
  ;; Called from standardized-apply-da-function-action
  (when *da-execution*
    (display-edge-spec spec *trace-stream*)))

(deftrace :da-fn-returned-edge (edge)
  ;; Called from standardized-apply-da-function-action
  (when *da-execution*
    (trace-msg "[DA]   It returns ~a" edge)))

(deftrace :da-fn-failed ()
  ;; Called from standardized-apply-da-function-action
  (when *da-execution*
    (trace-msg "[DA]   but it returned nil")))

(deftrace :da-tuck-under (dominating direction)
  ;; Called from standardized-apply-da-function-action
  (when *da-execution*
    (trace-msg "[DA]   which it tucks to the ~a under ~a"
               direction dominating)))


;;;----------------------
;;; when defining a rule
;;;----------------------

(deftrace :redefining-da-rule (rule)
  ;; called from Redefine-da-rule
  (when *trace-DA*
    (trace-msg "[defDA] redefining ~A" rule)))


(deftrace :rule-varies-known-trie (rule vertex-0)
  ;; called from Thread-pattern-into-existing-trie
  (when *trace-DA*
    (trace-msg "[defDA] ~A extends an established trie:~
                ~%     ~A" rule vertex-0)))

(deftrace :checking-pattern-item-to-arcs-at (vertex item)
  ;; called from Item-in-new-pattern-fits-existing-arc?
  (when *trace-DA*
    (trace-msg "[defDA] Checking item ~A~
              ~%        against out-arcs at ~A"
               item vertex)))

(deftrace :checking-pattern-item-to-arc (arc)
  ;; called from Item-in-new-pattern-fits-existing-arc?
  (when *trace-DA*
    (trace-msg "[defDA]  arc - ~A" arc)))

(deftrace :pattern-item-matched-arc (arc)
  ;; called from Item-in-new-pattern-fits-existing-arc?
  (when *trace-DA*
    (trace-msg "[defDA]     There was a match against ~A" arc)))

(deftrace :pattern-item-didnt-match-anything ()
  ;; called from Item-in-new-pattern-fits-existing-arc?
  (when *trace-DA*
    (trace-msg "[defDA]     Nothing matched")))

(deftrace :made-arc-for (vertex arc item)
  ;; called from Extend-trie-for-rest-of-pattern
  (when *trace-DA*
    (trace-msg "[defDA]  Made ~A from ~A for ~A"
               arc vertex item)))

(deftrace :arc-leads-to-vertex (arc right-vertex)
  ;; called from Extend-trie-for-rest-of-pattern 
  (declare (ignore arc))
  (when *trace-DA*
    (trace-msg "[defDA]    it leads to ~A" right-vertex)))

(deftrace :vertex-ends-trie-thread (vertex)
  ;; called from Extend-trie-for-rest-of-pattern
  (declare (ignore vertex))
  (when *trace-DA*
    (trace-msg "[defDA]    which ends this thread of the trie")))

(deftrace :replacing-vertex (rule original)
  ;; called from convert-to-end-vertex
  (when *trace-DA*
    (trace-msg "[defDA] prefix up to ~a matched by ~a"
               original rule)))
(deftrace :replacement-vertex (left-arc replacement)
  ;; called from convert-to-end-vertex
  (when *trace-DA*
    (trace-msg "[defDA]    new vertex: ~a on arc ~a"
               replacement left-arc)))

#|
(deftrace : ()
  ;; called from 
  (when *trace-DA*
    (trace-msg "[defDA] ")))

(deftrace : ()
  ;; called from 
  (when *trace-DA*
    (trace-msg "[defDA] ")))

(deftrace : ()
  ;; called from 
  (when *trace-DA*
    (trace-msg "[defDA] ")))  |#

