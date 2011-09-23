;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:SPARSER -*-
;;; copyright (c) 1995  David D. McDonald  -- all rights reserved
;;; 
;;;     File:  "DA"
;;;   Module:  "objects;traces:"
;;;  Version:  May 1995

;; initiated 5/5/95.  Elaborated ..5/19

(in-package :sparser)

(defparameter *trace-DA-check* nil)

(defun trace-da-hook ()
  (setq *trace-DA-check* t))

(defun untrace-da-hook ()
  (setq *trace-DA-check* nil))


(deftrace :ignoring-debris-analysis ()
  ;; called from Consider-debris-analysis
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


;;;---

(defparameter *trace-DA* nil)

(defun trace-da ()
  (setq *trace-DA* t))

(defun untrace-da ()
  (setq *trace-DA* nil))


(deftrace :checking-extension-from (vertex tt)
  ;; called from Check-for-extension-from-vertex
  (when *trace-DA*
    (trace-msg "[DA] Checking whether ~A~
              ~%     extends any of the options from ~A"
               tt vertex)
    ;(pl (vertex-rightward-extensions vertex) t *trace-stream*)
    ))

(deftrace :da-match-extends ()
  ;; called from Check-for-extension-from-vertex
  (when *trace-DA*
    (trace-msg "      It does")))


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
                        (start-vertex "start vertex")
                        (vertex "continuing vertex")
                        (end-vertex "end vertex")))))


(deftrace :da-pattern-matched (rule)
  ;; called from Accept-pattern
  (when *trace-DA*
    (trace-msg "[DA] matched the pattern of ~A~%~%" rule)))



(deftrace :arc-matches-tt? (arc tt)
  ;; called from Arc-matches-tt?
  (when *trace-DA*
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

